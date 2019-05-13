@extends('layouts.app')

@section('content')
    <h1 class="title">{{ $tag->title }}</h1>

    <div class="content" style="margin-bottom: 1em;">{{ $tag->slug }}</div>

        <form method="POST" action="/tags/{{ $tag->id }}">
            @method('DELETE')
            @csrf
            <div class="field">
        
                <div class="control">
                    <a href="/tags/{{ $tag->id }}/edit" class="btn btn-primary float-right" style="margin-bottom: 1em;">Promjeni tag</a>
                        <button type="submit" class="btn btn-danger float-right">Obriši tag</button>
                        <a href="/tags" class="btn btn-dark">Nazad</a>
                </div>
            </div>
        </form>
@endsection