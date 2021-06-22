<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function adminIndex()
    {
        $products = Product::orderByDesc('created_at')->get();
        return view('pages.admin.product.index', compact('products'));
    }

    public function create()
    {
        return view('pages.admin.product.create');
    }

    public function delete($id)
    {
        Product::destroy($id);

        return back();
    }

    public function edit($id)
    {
        $product = Product::find($id);

        if(! $product)
            return back();

        return view('pages.admin.product.edit', compact('product'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'description' => 'required|string|min:5',
            'price' => 'required|numeric|min:1'
        ]);

        $product = Product::create([
            'name' => $request->name,
            'description' => $request->description,
            'price' => $request->price
        ]);

        if($product)
            return back()->withSuccess('Uspešno ste uneli novu uslugu');
        return back()->with(['failed' => 'Usluga nije uspešno uneta, probajte opet.']);
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|numeric',
            'name' => 'required|string|min:3',
            'description' => 'required|string|min:5',
            'price' => 'required|numeric|min:1'
        ]);

        $product = Product::find($request->id);

        if(! $product)
            return back()->with(['failed' => 'Ažuriranje nije uspelo.']);

        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->save();

        return back()->withSuccess('Uspešno ste ažurirali proizvod');
    }
}
