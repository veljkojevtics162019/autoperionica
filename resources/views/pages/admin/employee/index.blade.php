@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJAJ ZAPOSLENIMA</h1>
            </div>

        </div>

        <div class="row">
            <div class="col md 6">
                @include('pages.admin.links')
            </div>
            <div class="col-md-6">
                <a href="/admin/employee/create" class="btn btn-primary">Dodaj novog zaposlenog</a>
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Ime</th>
                <th scope="col">Datum rodjenja</th>
                <th scope="col">Grad</th>
                <th scope="col">Ulica</th>
                <th scope="col">Pozicija</th>
                <th scope="col">Kreirano</th>
                <th scope="col">Azurirano</th>
                <th scope="col">RADNJA</th>
            </tr>
            </thead>
            <tbody>
            @foreach($employees as $employee)
                <tr>
                    <td>{{ $employee->name }}</td>
                    <td>{{ $employee->date_of_birth }}</td>
                    <td>{{ $employee->city }}</td>
                    <td>{{ $employee->street }}</td>
                    <td>{{ $employee->position }}</td>
                    <td>{{ $employee->created_at->diffForHumans() }}</td>
                    <td>{{ $employee->updated_at->diffForHumans() }}</td>
                    <td>
                        <a style="color: red" href="/admin/employee/delete/{{ $employee->id }}">OBRIŠI</a><br/>
                        <a href="/admin/employee/edit/{{ $employee->id }}">IZMENI</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
@endsection



