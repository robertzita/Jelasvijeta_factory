@extends('layouts.app')

@section('content')
    <h1>Jela</h1>
        @foreach ($meals as $meal)
            <ul>
                <li>
                    <a href="/meals/{{$meal->id}}">
                        {{$meal->title}} 
                    </a>
                </li>
                <small>Napravljeno:{{$meal->created_at}} </small>
            </ul>
    
        @endforeach
        {{ $meals->links() }}
            <a href="/meals/create" class="btn btn-dark btn-lg btn-block">Dodaj novo jelo</a>
            <hr>
    <h1>Obrisana jela</h1>
        @foreach ($trash as $meal)
            <ul>
                <li>{{$meal->title}} 
                <form method="POST" action="{{ route('meals.perma_delete', $meal->id) }}">
                    @method('DELETE')
                    @csrf
                    <a href="{{ route('meals.restore', $meal->id) }}" class="btn btn-success float-right">Vrati jelo</a>
                    <button type="submit" class="btn btn-danger float-right">Obriši jelo</button>
                </li>
                <small>Obrisano:{{$meal->deleted_at}} </small>
            </ul>
        @endforeach
@endsection