@extends('layouts.app')

@section('content')
    <h1 class="title">{{ $category->title }}</h1>

    <div class="content" style="margin-bottom: 1em;">{{ $category->slug }}</div>

    @if ($category->meals->count())
    <div class="content" style="margin-bottom: 1em;">
    @foreach ($category->meals as $meal)
        <li class="title">{{ $meal->title }}</li>
    @endforeach
    </div>
    @endif

        <form method="POST" action="/categories/{{ $category->id }}">
            @method('DELETE')
            @csrf
            <div class="field">
        
                <div class="control">
                    <a href="/categories/{{ $category->id }}/edit" class="btn btn-primary float-right" style="margin-bottom: 1em;">Promjeni kategoriju</a>
                        <button type="submit" class="btn btn-danger float-right">Obriši kategoriju</button>
                        <a href="/categories" class="btn btn-dark">Nazad</a>
                </div>
            </div>
        </form>
@endsection