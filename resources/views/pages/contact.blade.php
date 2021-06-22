@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Kontaktirajte nas</div>

                    <div class="card-body">
                        <form method="POST" action="/contact/store">
                            @csrf

                            @if(session('failed'))
                                <p>{{session('failed')}}</p>
                            @endif

                            @if(session('success'))
                                <p>{{session('success')}}</p>
                            @endif
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Unesite ime:</label>

                                <div class="col-md-6">
                                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="subject" class="col-md-4 col-form-label text-md-right">Naslov poruke:</label>

                                <div class="col-md-6">
                                    <input id="subject" type="text" class="form-control @error('subject') is-invalid @enderror" name="subject" value="{{ old('subject') }}" required>

                                    @error('subject')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="phone_number" class="col-md-4 col-form-label text-md-right">Vaš broj telefona:</label>

                                <div class="col-md-6">
                                    <input id="phone_number" type="text" class="form-control @error('phone_number') is-invalid @enderror" name="phone_number" value="{{ old('phone_number') }}" required>

                                    @error('phone_number')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="message" class="col-md-4 col-form-label text-md-right">Unesite poruku:</label>

                                <div class="col-md-6">
                                    <textarea id="message" type="text" class="form-control @error('message') is-invalid @enderror" name="message" value="{{ old('message') }}" required></textarea>

                                    @error('message')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        Pošalji
                                    </button>
                                </div>
                            </div>
                        </form>
                        
                    </div>
                    
                </div>
                <br/>
                    <h4 style="text-align: center;">Podaci o nama:</h5>
                    <ul>
                        <li><p>Adresa: <b>Knjeginje Milice 43</b></p></li>
                        <li><p>Grad: <b>Smederevo</b></p></li>
                        <li><p>E-mail: <b>deidara@gmail.com</b></p></li>
                        <li><p>Radno vreme: <b>Ponedeljak-Nedelja - 08-22h</b></p></li>
                        <li><p>Broj telefona: <b>026/555-333</b></p></li>
                    </ul>
                    
            </div>
        </div>
        
    </div>
@endsection
