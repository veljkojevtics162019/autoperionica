@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJAJ DOBAVLJAČIMA</h1>
            </div>

        </div>

        @include('pages.admin.links')

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Dodaj novog dobavljača</div>

                        <div class="card-body">
                            <form method="POST" action="/admin/supplier/store">

                                @csrf

                                @if(session('failed'))
                                    <p>{{session('failed')}}</p>
                                @endif

                                @if(session('success'))
                                    <p>{{session('success')}}</p>
                                @endif

                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">Ime dobavljača:</label>

                                    <div class="col-md-6">
                                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" required>

                                        @error('name')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="city" class="col-md-4 col-form-label text-md-right">Grad:</label>

                                    <div class="col-md-6">
                                        <input id="city" type="text" class="form-control @error('city') is-invalid @enderror" name="city" required>

                                        @error('city')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="street" class="col-md-4 col-form-label text-md-right">Ime Ulice:</label>

                                    <div class="col-md-6">
                                        <input id="street" type="text" class="form-control @error('street') is-invalid @enderror" name="street" required>

                                        @error('street')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="type_of_product" class="col-md-4 col-form-label text-md-right">Tip proizvoda:</label>

                                    <div class="col-md-6">
                                        <input id="type_of_product" type="text" class="form-control @error('type_of_product') is-invalid @enderror" name="type_of_product" required>

                                        @error('type_of_product')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            DODAJ
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection



