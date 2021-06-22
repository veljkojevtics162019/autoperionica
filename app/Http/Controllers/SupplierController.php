<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    public function indexDashboard()
    {
        $suppliers = Supplier::orderByDesc('created_at')->get();
        return view('pages.admin.supplier.index', compact('suppliers'));
    }

    public function create()
    {
        return view('pages.admin.supplier.create');
    }

    public function delete($id)
    {
        Supplier::destroy($id);
        return back();
    }

    public function edit($id)
    {
        $supplier = Supplier::find($id);

        if(! $supplier)
            return back();

        return view('pages.admin.supplier.edit', compact('supplier'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|string|min:3',
            'city' => 'required|string|min:5',
            'street' => 'required|string|min:1',
            'type_of_product' => 'required|string|min:2'
        ]);

        $supplier = Supplier::create([
            'name' => $request->name,
            'city' => $request->city,
            'street' => $request->street,
            'type_of_product' => $request->type_of_product
        ]);


        if($supplier)
            return back()->withSuccess('Uspešno ste uneli novog dobavljača');
        return back()->with(['failed' => 'Dobavljač nije uspešno unet, probajte opet.']);
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|numeric',
            'name' => 'required|string|min:3',
            'city' => 'required|string|min:5',
            'street' => 'required|string|min:1',
            'type_of_product' => 'required|string|min:2'
        ]);

        $supplier = Supplier::find($request->id);

        if(! $supplier)
            return back()->with(['failed' => 'Ažuriranje nije uspelo.']);

        $supplier->name = $request->name;
        $supplier->city = $request->city;
        $supplier->street = $request->street;
        $supplier->type_of_product = $request->type_of_product;
        $supplier->save();

        return back()->withSuccess('Uspešno ste ažurirali dobavljača');
    }
}
