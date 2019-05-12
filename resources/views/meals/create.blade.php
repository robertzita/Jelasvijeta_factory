@extends('layouts.app')

@section('content')
    <h1>Napravi novo jelo</h1>
        <form method="POST" action="/meals">
        @csrf
            <div class="field">
                <label class="label" for="title">Naslov jela</label>
                    <div class="control">
                        <input type="text" class="input {{ $errors->has('title') ? 'alert-danger' : '' }}" name="title" value="{{ old('title') }}" >
                    </div>
            </div>
            <div class="field">
                <label class="label" for="slug">Slug</label>
                    <div class="control">
                        <input type="text" class="input {{ $errors->has('slug') ? 'alert-danger' : '' }}" name="slug" value="{{ old('slug') }}" style="margin-bottom: 1em;">
                    </div>
            </div>
            <div class="field">
                <label class="label" for="description">Opis</label>
                    <div class="control">
                        <input type="text" class="input {{ $errors->has('description') ? 'alert-danger' : '' }}" name="description" value="{{ old('description') }}" style="margin-bottom: 1em;">
                    </div>
            </div>
            <div class="field">
                <div class="control" style="margin-bottom: 1em;">
                    <button type="submit" class="btn btn-primary" >Dodaj jelo</button>
                    <a href="/meals" class="btn btn-dark float-right">Odustani</a>
                </div>
            </div>
            @include('errors')
        </form>
@endsection