@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">UPRAVLJAJ KORISNICIMA</h1>
            </div>

        </div>

        @include('pages.admin.links')

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Izmeni korisnika:  {{ $user->name }}</div>

                        <div class="card-body">
                            <form method="POST" action="/admin/user/update">

                                <input type="hidden" name="id" value="{{ $user->id }}" />
                                @csrf

                                @if(session('failed'))
                                    <p>{{session('failed')}}</p>
                                @endif

                                @if(session('success'))
                                    <p>{{session('success')}}</p>
                                @endif

                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">Ime korisnika:</label>

                                    <div class="col-md-6">
                                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $user->name }}" required>

                                        @error('name')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">Email:</label>

                                    <div class="col-md-6">
                                        <input id="city" type="text" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $user->email }}" disabled>

                                        @error('email')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="street" class="col-md-4 col-form-label text-md-right">Tip korisnika:</label>

                                    <div class="col-md-6">

                                        <select id="role" name="role" class="form-control form-control-lg" required>
                                            @foreach($roles as $role)
                                                @if($role->id == $user->role_id)
                                                    <option value="{{ $role->id }}" selected>{{ $role->name }}</option>
                                                @else
                                                    <option value="{{ $role->id }}">{{ $role->name }}</option>
                                                @endif
                                            @endforeach
                                        </select>

                                        @error('role')
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            Ažuriraj
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



