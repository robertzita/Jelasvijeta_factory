@extends('layouts.app')

@section('content')
    <h1 class="title">{{ $meal->title }}</h1>

    <div class="content" style="margin-bottom: 1em;">{{ $meal->slug }}</div>

    <div class="content" style="margin-bottom: 1em;">{{ $meal->description }}</div>

        <form method="POST" action="/meals/{{ $meal->id }}">
            @method('DELETE')
            @csrf
            <div class="field">
        
                <div class="control">
                    <a href="/meals/{{ $meal->id }}/edit" class="btn btn-primary float-right" style="margin-bottom: 1em;">Promjeni jelo</a>
                        <button type="submit" class="btn btn-danger float-right">Obriši jelo</button>
                        <a href="/meals" class="btn btn-dark">Nazad</a>
                </div>
            </div>
        </form>
@endsection