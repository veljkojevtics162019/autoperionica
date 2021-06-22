<div class="row">
    <div class="col-md-12">
        <h4>Linkovi:</h4>
        <ul>
            @if(auth()->user()->role->slug == 'editor' || auth()->user()->role->slug == 'admin')
                <li><a href="/admin/products/index">Upravljaj Uslugama</a></li>
                <li><a href="/admin/contacts/index">Izlistaj poruke sa forme</a></li>
            @endif

            @if(auth()->user()->role->slug == 'admin')
                <li><a href="/admin/employees/index">Upravljaj Zaposlenima</a></li>
                <li><a href="/admin/suppliers/index">Upravljaj Dobavljačima</a></li>
                <li><a href="/admin/users/index">Upravljaj Korisnicima</a></li>
            @endif
        </ul>
    </div>
</div>
