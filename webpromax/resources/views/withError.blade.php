
 <!-- @if(Session::has('error'))
 <h1>Error</h1>
 <p>{{ Session::get('error') }}</p>
 @endif -->

 @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
