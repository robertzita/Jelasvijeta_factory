@extends('layouts.app')

@section('content')
    <h1>Tagovi</h1>
        @foreach ($tags as $tag)
            <ul>
                <li>
                    <a href="/tags/{{$tag->id}}">
                        {{$tag->title}} 
                    </a>
                </li>
                <small>Napravljeno:{{$tag->created_at}} </small>
            </ul>
    
        @endforeach
            <a href="/tags/create" class="btn btn-dark btn-lg btn-block">Dodaj novi tag</a>
            <hr>
    <h1>Obrisani tag-ovi</h1>
    
        @foreach ($trash as $tag)
            <ul>
                <li>{{$tag->title}} 
                <form method="POST" action="{{ route('tags.perma_delete', $tag->id) }}">
                    @method('DELETE')
                    @csrf
                    <a href="{{ route('tags.restore', $tag->id) }}" class="btn btn-success float-right">Vrati tag</a>
                    <button type="submit" class="btn btn-danger float-right">Obriši tag</button>
                </li>
                <small>Obrisane:{{$tag->deleted_at}} </small>
            </ul>
        @endforeach
        
@endsection