@extends('layouts.app')

@section('content')
    <h1>Sastojci</h1>
        @foreach ($ingredients as $ingredient)
            <ul>
                <li>
                    <a href="/ingredients/{{$ingredient->id}}">
                        {{$ingredient->title}} 
                    </a>
                </li>
                <small>Napravljeno:{{$ingredient->created_at}} </small>
            </ul>
    
        @endforeach
            <a href="/ingredients/create" class="btn btn-dark btn-lg btn-block">Dodaj novi sastojak</a>
            <hr>
    <h1>Obrisani sastojci</h1>
    
        @foreach ($trash as $ingredient)
            <ul>
                <li>{{$ingredient->title}} 
                <form method="POST" action="{{ route('ingredients.perma_delete', $ingredient->id) }}">
                    @method('DELETE')
                    @csrf
                    <a href="{{ route('ingredients.restore', $ingredient->id) }}" class="btn btn-success float-right">Vrati sastojak</a>
                    <button type="submit" class="btn btn-danger float-right">Obriši sastojak</button>
                </li>
                <small>Obrisane:{{$ingredient->deleted_at}} </small>
            </ul>
        @endforeach
        
@endsection