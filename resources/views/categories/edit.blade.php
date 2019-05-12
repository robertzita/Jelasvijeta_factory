@extends('layouts.app')

@section('content')
    <h1 class="title">Promjeni kategoriju</h1>
        <form method="POST" action="/categories/{{ $category->id }}" style="margin-bottom: 1em;">
            @method('PATCH')
            @csrf
            <div class="field">
                <label class="label" for="title">Naslov</label>
                    <div class="control">
                        <input type="text" name="title" placeholder="Naslov kategorije" value="{{$category->title}}">
                    </div>
            </div>
            <div class="field">
                <label class="label" for="slug">Slug</label>
                    <div class="control">
                        <input type="text" name="slug" placeholder="Slug" value="{{$category->slug}}" style="margin-bottom: 1em;">
                    </div>
            </div>
            <div class="field">
                <div class="control">
                    <a href="/categories/{{$category->id}}" class="btn btn-dark">Odustani</a>
                        <button type="submit" class="btn btn-primary float-right">Promjeni</button>
                </div>
            </div>
        </form>


@endsection