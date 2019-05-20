<!doctype html>
<html lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <title>{{config('app.name', 'Factory')}}</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                <a class="navbar-brand" href="/"> Factory</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/categories">Kategorije</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="/meals">Jela</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="/ingredients">Sastojci</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="/tags">Tagovi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="/api/meals">Api</a>
                    </li>
                    
                </ul>
            </div>
        </nav>
            <div class="container">
                 @yield('content')
            </div>
    </body>
</html>