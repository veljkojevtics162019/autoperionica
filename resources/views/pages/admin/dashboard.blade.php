@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="text-align: center; color: #00008b;">KONTROLNA TABLA</h1>
            </div>

        </div>

        @include('pages.admin.links')
        <div class="row">
            <div class="col-md-6">
                <h4>Broj registrovanih korisnika:</h4>
                <h5>{{ $usersCount }}</h5>
            </div>

            <div class="col-md-6">
                <h4>Broj usluga:</h4>
                <h5>{{ $productsCount }}</h5>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h4>Broj poruka u kontakt formi:</h4>
                <h5>{{ $contactsCount }}</h5>
            </div>

            <div class="col-md-6">
                <h4>Prosečna ocena korisnika</h4>
                <h5>{{ $avarageReview }} (od ukupno {{ $reviewsCount }} ocena).</h5>
            </div>
        </div>

    <div class="row">
        <div class="col-md-12">
            <canvas id="userChart" style="max-width: 500px;"></canvas>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            var ctx = document.getElementById("userChart").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["Gosti", "Editori", "Administratori"],
                    datasets: [{
                        label: 'Korisnici na platformi',
                        data: [{{ $userGuestCount }}, {{ $userEditorCount }}, {{ $userAdminCount }}],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255,99,132,1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
        });

    </script>
@endsection



