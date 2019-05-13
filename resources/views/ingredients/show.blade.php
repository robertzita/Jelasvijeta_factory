@extends('layouts.app')

@section('content')
    <h1 class="title">{{ $ingredient->title }}</h1>

    <div class="content" style="margin-bottom: 1em;">{{ $ingredient->slug }}</div>

        <form method="POST" action="/ingredients/{{ $ingredient->id }}">
            @method('DELETE')
            @csrf
            <div class="field">
        
                <div class="control">
                    <a href="/ingredients/{{ $ingredient->id }}/edit" class="btn btn-primary float-right" style="margin-bottom: 1em;">Promjeni sastojak</a>
                        <button type="submit" class="btn btn-danger float-right">Obriši sastojak</button>
                        <a href="/ingredients" class="btn btn-dark">Nazad</a>
                </div>
            </div>
        </form>
@endsection