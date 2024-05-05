<?php

namespace App\Http\Controllers;
use App\Models\Orders as Order;
use App\Models\Customers as Customer;
use App\Models\Products as Product;
use App\Models\Complaints as Complaint;
use App\Models\Employees as Employee;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EmployeeController extends Controller
{
    public function dashboard()
{
    $numberOfOrders = Order::count();
    $numberOfClients = Customer::count();
    $numberOfProducts = Product::count();
    $numberOfComplaints = Complaint::count();
    $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
    $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

    return view('employee.dashboard', compact('numberOfOrders', 'numberOfClients', 'numberOfProducts', 'numberOfComplaints', 'employeeName', 'employeeLastName'));
}

public function Orders()
{
    $order = Order::All();
    // $order = Order::with(['products'])->get();

    //     $order->map(function ($order) {
    //         $order->totalAmount = $order->products->reduce(function ($carry, $product) {
    //             return $carry + ($product->pivot->price * $product->pivot->quantity);
    //         }, 0);
    //     });
    $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
    $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

    return view('employee.orders', compact('order', 'employeeName', 'employeeLastName'));

    // return response()->json($orders);
}

// public function showOrder($id)
// {
//     $order = Order::with(['customer'])->findOrFail($id);
//     // $order->products->each(function ($product) {
//     //     $product->total_price = $product->pivot->price * $product->pivot->quantity;
//     // });

//     // Obliczenie całkowitej kwoty zamówienia
//     // $order->totalAmount = $order->ordersProducts->reduce(function ($carry, $orderProduct) {
//     //     return $carry + ($orderProduct->product->PRICE * $orderProduct->pivot->quantity);
//     // }, 0);

//     $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
//     $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

//     return view('employee.show', compact('order', 'employeeName', 'employeeLastName'));
// }

public function showOrder($id)
{
    $order = Order::findOrFail($id);
    $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
    $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

    return view('employee.show', compact('order','employeeName', 'employeeLastName'));
}

public function Products()
{
    $products = Product::with('categories')->get();
    $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
    $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

    return view('employee.products', compact('products', 'employeeName', 'employeeLastName'));
}

public function listProducts(Request $request)
{
    $search = $request->input('search');
    $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
    $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

    $products = Product::with('categories')
        ->when($search, function ($query) use ($search) {
            return $query->where('name', 'like', '%' . $search . '%');
        })
        ->paginate(10);

    return view('employee.products', compact('products', 'employeeName', 'employeeLastName'));
}

public function editProduct($id)
{
    $product = Product::findOrFail($id);
    $employeeName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->NAME;
    $employeeLastName = Employee::where('id', auth()->guard('employee')->user()->id)->first()->LAST_NAME;

    return view('employee.editProduct', compact('product','employeeName', 'employeeLastName'));
}

public function update(Request $request, $id)
{
    $request->validate([
        'nazwa' => 'required|string|max:100',
        'cena' => 'required|numeric',
        'ilosc' => 'required|integer',
        'opis' => 'nullable|string',
    ]);

    $product = Product::findOrFail($id);
    $product->update([
        'NAME' => $request->nazwa,
        'PRICE' => $request->cena,
        'QUANTITIES_AVAILABLE' => $request->ilosc,
        'DESCRIPTION' => $request->opis,
    ]);

    return redirect()->route('employee.products')->with('success__edit', 'Product updated successfully!');
}

public function getOrderDataByYear($year)
{
    $orders = DB::table('orders')
                ->select(DB::raw("EXTRACT(MONTH FROM TO_DATE(date_order, 'YY/MM/DD HH24:MI:SS')) as month"), DB::raw("COUNT(*) as count"))
                ->whereRaw("EXTRACT(YEAR FROM TO_DATE(date_order, 'YY/MM/DD HH24:MI:SS')) = ?", [$year])
                ->groupBy(DB::raw("EXTRACT(MONTH FROM TO_DATE(date_order, 'YY/MM/DD HH24:MI:SS'))"))
                ->orderBy('month')
                ->get();

    return response()->json($orders);
}

}
