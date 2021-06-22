@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJAJ DOBAVLJAČIMA</h1>
            </div>

        </div>

        <div class="row">
            <div class="col md 6">
                @include('pages.admin.links')
            </div>
            <div class="col-md-6">
                <a href="/admin/supplier/create" class="btn btn-primary">DODAJ NOVOG DOBAVLJAČA</a>
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Ime</th>
                <th scope="col">Grad</th>
                <th scope="col">Ulica</th>
                <th scope="col">Tip proizvoda</th>
                <th scope="col">Kreirano</th>
                <th scope="col">Ažurirano</th>
                <th scope="col">RADNJA</th>
            </tr>
            </thead>
            <tbody>
            @foreach($suppliers as $supplier)
                <tr>
                    <td>{{ $supplier->name }}</td>
                    <td>{{ $supplier->city }}</td>
                    <td>{{ $supplier->street }}</td>
                    <td>{{ $supplier->type_of_product }}</td>
                    <td>{{ $supplier->created_at->diffForHumans() }}</td>
                    <td>{{ $supplier->updated_at->diffForHumans() }}</td>
                    <td>
                        <a style="color: red" href="/admin/supplier/delete/{{ $supplier->id }}">OBRIŠI</a><br/>
                        <a href="/admin/supplier/edit/{{ $supplier->id }}">IZMENI</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
@endsection



