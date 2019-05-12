<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use DB;

class CategoriesController extends Controller
{
    public function index()
    {
        

        $trash = Category::onlyTrashed()->get();
        $categories = Category::all();
        return view('categories.index', compact('categories', 'trash'));
    }

    public function create()
    {
        
        
        return view('categories.create');
    }

    public function show(Category $category)
    {
        
        return view('categories.show', compact('category'));
    }

    public function edit(Category $category)
    {
        
        return view('categories.edit', compact('category'));
    }

    public function update(Category $category)
    {
        

        $category->update(request(['title', 'slug']));

        return redirect('/categories');
    }


    public function destroy(Category $category)
    {
        $category->delete();

        return redirect('/categories');


    }

    public function store()
    {
        request()->validate([
            'title' => ['required', 'min:5', 'max:50'],
            'slug' => ['required', 'min:3', 'max:30']
        ]);
        Category::create(request(['title', 'slug']));
        
        return redirect('/categories');

    }

    public function restore($id)
    {
        
        $trash = Category::onlyTrashed()->findOrFail($id);
        $trash->restore();

        return redirect()->route('categories.index');
    }

    public function perma_delete($id)
    {
        
        $trash = Category::onlyTrashed()->findOrFail($id);
        $trash->forceDelete();

        return redirect()->route('categories.index');
    }
}
