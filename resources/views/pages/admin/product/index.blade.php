@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJAJ USLUGAMA</h1>
            </div>

        </div>

        <div class="row">
            <div class="col md 6">
                @include('pages.admin.links')
            </div>
            <div class="col-md-6">
                <a href="/admin/product/create" class="btn btn-primary">DODAJ NOVU USLUGU</a>
            </div>
        </div>

        <table class="table">
            <thead>
            <tr>
                <th scope="col">Naziv</th>
                <th scope="col">Opis</th>
                <th scope="col">Cena</th>
                <th scope="col">Kreirano</th>
                <th scope="col">Azurirano</th>
                <th scope="col">RADNJA</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $product)
                <tr>
                    <td>{{ $product->name }}</td>
                    <td>{{ $product->description }}</td>
                    <td>{{ $product->price }} din</td>
                    <td>{{ $product->created_at->diffForHumans() }}</td>
                    <td>{{ $product->updated_at->diffForHumans() }}</td>
                    <td>
                        <a style="color: red" href="/admin/product/delete/{{ $product->id }}">OBRIŠI</a>
                        <a href="/admin/product/edit/{{ $product->id }}">IZMENI</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
@endsection



