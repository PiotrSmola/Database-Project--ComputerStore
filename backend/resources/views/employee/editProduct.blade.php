<!DOCTYPE html>
<html lang="pl">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

    <script src="https://unpkg.com/feather-icons"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@10.2.7/dist/css/autoComplete.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@10.2.7/dist/autoComplete.min.js"></script>
    <link href="{{ asset('/css/adminDashboardHome.css') }}" rel="stylesheet" />
    <title>Sklep Komputerowy - Projekt Bazy</title>

    <!-- Optional JavaScript -->
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

    <script>
        feather.replace();
    </script>
</head>

<body>
    <div class="admin-panel">
        <aside class="admin-aside">
            <div class="admin-aside__title">TechByte Computer Store</div>
            <div class="admin-aside__desc fs-5">{{ $jobPosition }}</div>
            <nav class="admin-aside__nav">
                <ul class="admin-aside__list">
                    <li>
                        <a href="{{ route('employee.dashboard') }}" class="admin-aside__link">
                            <i data-feather="home" class="admin-aside__link-icon"></i>Home</a>
                    </li>
                    <br />
                    <li>
                        <a href="{{ route('employee.orders') }}" class="admin-aside__link">
                            <i data-feather="shopping-cart" class="admin-aside__link-icon"></i>Orders</a>
                    </li>
                    <li>
                        <a href="{{ route('employee.products') }}" class="admin-aside__link">
                            <i data-feather="box" class="admin-aside__link-icon"></i>Products</a>
                    </li>
                    <li>
                        <a href="{{ route('employee.customers') }}" class="admin-aside__link">
                            <i data-feather="users" class="admin-aside__link-icon"></i>Customers</a>
                    </li>
                    <li>
                        <a href="{{ route('employee.complaints') }}" class="admin-aside__link">
                            <i data-feather="list" class="admin-aside__link-icon"></i>Complaints</a>
                    </li>
                    <br />
                    <li>
                        {{-- <a href="{{ route('login.logout') }}" class="admin-aside__link"> --}}
                            <i data-feather="log-out" class="admin-aside__link-icon"></i>Logout</a>
                    </li>
                </ul>
            </nav>
        </aside>
        <div class="admin-wrapper">
            <header class="admin-header">
                <p class="admin-header__title">Final project on Databases - Dawid Olko & Piotr Smoła</p>
                <div class="admin-header__user">
                    <img class="admin-header__user-av" src="{{ asset('storage/img/icons/avatar.svg') }}" alt=""
                        style="width:100px">
                    <p class="admin-header__user-hello">
                        Hello, {{ $employeeName }} {{ $employeeLastName }}
                        {{-- @if (auth()->check())
                            {{ auth()->employee()->name }} {{ auth()->employee()->last_name }}
                        @else
                            Administrator
                        @endif --}}
                    </p>
                </div>
            </header>
            <main class="admin-main">
                <div class="container admin-form">
                    <div class="row mb-3">
                        <h1>Edit Product #{{ $product->id }}</h1>
                        <a class="" href="{{ route('employee.products') }}">Go to all products</a>
                    </div>
                
                    @if(session('success__edit'))
                        <div class="alert alert-success alert-dismissible fade show mb-4" role="alert">
                            {{ session('success__edit') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif
                    @if(session('error__edit'))
                        <div class="alert alert-danger alert-dismissible fade show mb-4" role="alert">
                            {{ session('error__edit') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif
                
                    <form method="POST" action="{{ route('employee.updateProduct', $product->id) }}">
                        @csrf
                        @method('PUT')
                        <div class="form-group mb-3">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input value="{{ $product->NAME }}" id="name" name="name" type="text" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="price" class="form-label">Price</label>
                                <input id="price" value="{{ $product->PRICE }}" name="price" type="number" min="1" max="100000" step="0.01" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="quantity" class="form-label">Quantities Available</label>
                                <input id="quantity" value="{{ $product->QUANTITIES_AVAILABLE }}" name="quantity" type="number" min="0" max="1000" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="sale_id" class="form-label">Sale ID</label>
                                <input id="sale_id" value="{{ $product->SALE_ID }}" name="sale_id" type="number" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="old_price" class="form-label">Quantities Available</label>
                                <input id="old_price" value="{{ $product->OLD_PRICE }}" name="old_price" type="number" min="1" max="100000" step="0.01" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="description" class="form-label">Description</label>
                                <textarea class="form-control" name="description" id="description" cols="6" rows="5">{{ $product->DESCRIPTION }}</textarea>
                            </div>
                            <input value="{{ $product->id }}" name="id" type="hidden"/>
                            <input class="btn btn-primary" type="submit" value="Edit"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    
        <!-- Scripts for dynamic parts of the page, like charts or interactive elements -->
        <script>
            feather.replace();
        </script>
    </body>
    
    </html>