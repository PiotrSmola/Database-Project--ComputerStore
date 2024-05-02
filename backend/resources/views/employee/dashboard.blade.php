<!DOCTYPE html>
<html lang="pl">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://unpkg.com/feather-icons"></script>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@10.2.7/dist/css/autoComplete.min.css">
    <script src="https://cdn.jsdelivr.net/npm/@tarekraafat/autocomplete.js@10.2.7/dist/autoComplete.min.js"></script>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <title>Sklep Komputerowy - Projekt Bazy</title>

    <!-- Additional styles and scripts for admin layout -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/css/adminlte.min.css">
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/js/adminlte.min.js"></script>
    <style>
        p {
            margin-bottom: 0 !important;
        }
    </style>
</head>

<body>
    <div class="admin-panel">
        <aside class="admin-aside">
            <div class="admin-aside__title">TechByte Computer Store</div>
            <div class="admin-aside__desc">Employee panel</div>
            <nav class="admin-aside__nav">
                <ul class="admin-aside__list">
                    <!-- Insert links here -->
                </ul>
            </nav>
        </aside>
        <div class="admin-wrapper">
            <header class="admin-header">
                <p class="admin-header__title">Final project on Databases</p>
                <div class="admin-header__user">
                    <img class="admin-header__user-av" src="{{ asset('storage/img/Portret.jpg') }}" alt="" style="width:100px">
                    <p class="admin-header__user-hello">
                        @if (session('email'))
                            {{ session('email') }}
                        @else
                            Administrator
                        @endif
                    </p>
                </div>
            </header>
            <main class="admin-main">
                <div class="container">
                    <div class="mb-5">
                        <h1>Dashboard</h1>
                        <p>Welcome to the employee panel</p>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="small-box bg-primary">
                                <div class="inner">
                                    <h3>{{ $numberOfOrders }}</h3>
                                    <p>Orders</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-shopping-cart"></i>
                                </div>
                                {{-- <a href="{{ route('orders.index') }}" class="small-box-footer"> --}}
                                    See all <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="small-box bg-success">
                                <div class="inner">
                                    <h3>{{ $numberOfClients }}</h3>
                                    <p>Number of customers</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                {{-- <a href="{{ route('customers.index') }}" class="small-box-footer"> --}}
                                    See all <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="small-box bg-warning">
                                <div class="inner">
                                    <h3>{{ $numberOfProducts }}</h3>
                                    <p>Products</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-laptop"></i>
                                </div>
                                {{-- <a href="{{ route('products.index') }}" class="small-box-footer"> --}}
                                    See all <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="small-box bg-success">
                                <div class="inner">
                                    <h3>{{ $numberOfComplaints }}</h3>
                                    <p>Number of complaints</p>
                                </div>
                                <div class="icon">
                                    <i class="fa fa-user"></i>
                                </div>
                                {{-- <a href="{{ route('customers.index') }}" class="small-box-footer"> --}}
                                    See all <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box bg-gray">
                                <span class="info-box-icon"><i class="fa fa-cart-arrow-down"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Number of products ordered</span>
                                    {{-- <span class="info-box-number">{{ wykres }}</span> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
        feather.replace();
    </script>
</body>

</html>
