@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJANJE PORUKAMA</h1>
            </div>

        </div>

        @include('pages.admin.links')
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Ime</th>
                <th scope="col">Naslov</th>
                <th scope="col">Poruka</th>
                <th scope="col">Broj telefona</th>
                <th scope="col">Kreirano</th>
                <th scope="col">Radnja</th>
            </tr>
            </thead>
            <tbody>
            @foreach($contacts as $contact)
                <tr>
                    <td>{{ $contact->name }}</td>
                    <td>{{ $contact->subject }}</td>
                    <td>{{ $contact->message }}</td>
                    <td>{{ $contact->phone_number }}</td>
                    <td>{{ $contact->created_at->diffForHumans() }}</td>
                    <td>
                        <a style="color: red" href="/admin/contact/delete/{{ $contact->id }}">OBRIŠI</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
@endsection



