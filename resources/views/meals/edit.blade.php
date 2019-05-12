@extends('layouts.app')

@section('content')
    <h1 class="title">Promjeni jelo</h1>
        <form method="POST" action="/meals/{{ $meal->id }}" style="margin-bottom: 1em;">
            @method('PATCH')
            @csrf
            <div class="field">
                <label class="label" for="title">Naslov</label>
                    <div class="control">
                        <input type="text" name="title" placeholder="Naslov jela" value="{{$meal->title}}">
                    </div>
            </div>
            <div class="field">
                <label class="label" for="slug">Slug</label>
                    <div class="control">
                        <input type="text" name="slug" placeholder="Slug" value="{{$meal->slug}}" style="margin-bottom: 1em;">
                    </div>
            </div>
            <div class="field">
                <label class="label" for="description">Opis</label>
                    <div class="control">
                        <input type="text" name="description" placeholder="Opis" value="{{$meal->description}}" style="margin-bottom: 1em;">
                    </div>
            </div>
            <div class="field">
                <div class="control">
                    <a href="/meals/{{$meal->id}}" class="btn btn-dark">Odustani</a>
                        <button type="submit" class="btn btn-primary float-right">Promjeni</button>
                </div>
            </div>
        </form>


@endsection