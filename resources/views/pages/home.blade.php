@extends('layouts.app')

@section('content')
    <div class="container">
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif

        @auth
            <div class="jumbotron">
                <h5>Dobrodošao/la, {{ auth()->user()->name }}.</h5>
            </div>
        @endauth

            <div class="row">
                <div class="col-md-12">
                    <h1 style="text-align: center; color: #00008b;">AUTOPERIONICA DEIDARA</h1>
                </div>

            </div>
            <div class="row">
                <div class="col-md-12"><br/>
                    <p style="text-align: center;"><img style="width: 100%;" src="https://www.titanium.rs/wp-content/uploads/2020/09/Poliranje-automobila-i-dubinsko-pranje-Beograd-1259x755-1-1259x755.jpg" /></p>
                </div>
            </div>

            <h2 style="text-align: center; color: #00008b;" id="usluge"><u>Usluge koje nudimo</u></h2><br />

            <div class="row">
                <div class="col-md-12">
                    <form method="GET" action="/#usluge">
                        <div class="form-group row">
                            <label for="product" class="col-md-1 col-form-label text-md-left">Pretraži: </label>

                            <div class="col-md-5">
                                <input id="product" type="text" class="form-control @error('product') is-invalid @enderror" name="product" value="{{ old('product') }}" />

                                @error('product')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <button type="submit" class="btn btn-primary">
                                    Pretraga
                                </button>
                                <a href="/#usluge" style="color: navy">Izlistaj sve</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        <div class="row">
            @foreach($products as $product)


                <div class="card bg-light col-md-4"">
                    <div class="card-header" style="color: indigo">{{ $product->name }}</div>
                    <div class="card-body" style="color: indigo">{{ $product->description }}</div>
                    <div class="card-footer" style="color: indigo">Cena: {{ $product->price }} dinara.</div><br/>
                </div>
            @endforeach
        </div>
        <br/>

            <h2 style="text-align: center; color: darkblue;"><u>Galerija</u></h2><br />

            <div class="row">
                @foreach($galleries as $gallery)
                    <div class="card bg-light col-md-4"">
                        <div class="card-body" style="color: indigo"><img src="{{ $gallery->image_src }}" width="300px" class="zoom" /></div>
                        <div class="card-footer" style="color: indigo">{{ $gallery->name }}</div><br/>
                    </div>
                @endforeach
            </div>
            <br/>

            <h2 style="text-align: center; color: darkblue;"><u>Ocene registrovanih korisnika</u></h2><br />

            @guest
            <p style="text-align: center; color: orangered">Da biste ostavili ocenu, prvo se registrujte.</p>
            @endguest

            @auth
            <form method="POST" action="/review/store">
                @csrf

                @if(session('failed'))
                    <p>{{session('failed')}}</p>
                @endif

                @if(session('success'))
                    <p>{{session('success')}}</p>
                @endif
                <div class="form-group row">
                    <label for="comment" class="col-md-4 col-form-label text-md-right">Komentar: </label>

                    <div class="col-md-6">
                        <textarea id="comment" type="text" class="form-control @error('comment') is-invalid @enderror" name="comment" value="{{ old('comment') }}" required></textarea>

                        @error('comment')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>

                <div class="form-group row">
                    <label for="star" class="col-md-4 col-form-label text-md-right">Ocena(1-10): </label>

                    <div class="col-md-6">
                        <input id="star" type="number" min="1" max="10" class="form-control @error('star') is-invalid @enderror" name="star" value="{{ old('star') }}" required>

                        @error('star')
                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                        @enderror
                    </div>
                </div>


                <div class="form-group row mb-0">
                    <div class="col-md-6 offset-md-4">
                        <button type="submit" class="btn btn-primary">
                            Objavi komentar
                        </button>
                    </div>
                </div>
            </form>
            @endauth


            <div class="row">
                @foreach($reviews as $review)


                    <div class="card bg-light col-md-4" style="padding: 10px 10px 10px 10px">
                    <div class="card-header" style="color: indigo"><b>Korisnik: </b>{{ $review->user->name }}</div>
                    <div class="card-body" style="color: indigo"><b>Komentar: </b><i>{{ $review->comment }}</i> <br/><br/> <b>Ocena(1-10): </b>{{ $review->star }}</div>
                    <div class="card-footer" style="color: indigo"><b>Vreme: </b>{{ $review->created_at->diffForHumans() }}</div><br/>
            </div>
            @endforeach
        <a href="#" class="back-to-top"></a>

@endsection
