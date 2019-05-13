@extends('layouts.app')

@section('content')
    <h1>Kategorije</h1>
        @foreach ($categories as $category)
            <ul>
                <li>
                    <a href="/categories/{{$category->id}}">
                        {{$category->title}} 
                    </a>
                </li>
                <small>Napravljeno:{{$category->created_at}} </small>
            </ul>
    
        @endforeach

        {{ $categories->links() }}
            <a href="/categories/create" class="btn btn-dark btn-lg btn-block">Dodaj novu kategoriju</a>
            <hr>
    <h1>Obrisane kategorije</h1>
    
        @foreach ($trash as $category)
            <ul>
                <li>{{$category->title}} 
                <form method="POST" action="{{ route('categories.perma_delete', $category->id) }}">
                    @method('DELETE')
                    @csrf
                    <a href="{{ route('categories.restore', $category->id) }}" class="btn btn-success float-right">Vrati kategoriju</a>
                    <button type="submit" class="btn btn-danger float-right">Obriši kategoriju</button>
                </li>
                <small>Obrisane:{{$category->deleted_at}} </small>
            </ul>
        @endforeach
        
@endsection