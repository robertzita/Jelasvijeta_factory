<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tag;
use DB;

class TagsController extends Controller
{
    public function index()
    {
        

        $trash = Tag::onlyTrashed()->get();
        $tags = Tag::paginate(5);
        return view('tags.index', compact('tags', 'trash'));
    }

    public function create()
    {
        
        
        return view('tags.create');
    }

    public function show(Tag $tag)
    {
        
        return view('tags.show', compact('tag'));
    }

    public function edit(Tag $tag)
    {
        
        return view('tags.edit', compact('tag'));
    }

    public function update(Tag $tag)
    {
        

        $tag->update(request(['title', 'slug']));

        return redirect('/tags');
    }


    public function destroy(Tag $tag)
    {
        $tag->delete();

        return redirect('/tags');


    }

    public function store()
    {
        request()->validate([
            'title' => ['required', 'min:5', 'max:50'],
            'slug' => ['required', 'min:3', 'max:30']
        ]);
        Tag::create(request(['title', 'slug']));
        
        return redirect('/tags');

    }

    public function restore($id)
    {
        
        $trash = Tag::onlyTrashed()->findOrFail($id);
        $trash->restore();

        return redirect()->route('tags.index');
    }

    public function perma_delete($id)
    {
        
        $trash = Tag::onlyTrashed()->findOrFail($id);
        $trash->forceDelete();

        return redirect()->route('tags.index');
    }
}
