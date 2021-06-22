@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJAJ KORISNICIMA</h1>
            </div>

        </div>

        @include('pages.admin.links')
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Ime</th>
                <th scope="col">Email</th>
                <th scope="col">Tip korisnika</th>
                <th scope="col">Kreirano</th>
                <th scope="col">Ažurirano</th>
                <th scope="col">RADNJA</th>
            </tr>
            </thead>
            <tbody>
            @foreach($users as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->role->name }}</td>
                    <td>{{ $user->created_at->diffForHumans() }}</td>
                    <td>{{ $user->updated_at->diffForHumans() }}</td>
                    <td>
                        <a style="color: red" href="/admin/user/delete/{{ $user->id }}">OBRIŠI</a><br/>
                        <a href="/admin/user/edit/{{ $user->id }}">IZMENI</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
@endsection



