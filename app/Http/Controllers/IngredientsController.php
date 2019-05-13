<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ingredient;
use DB;

class IngredientsController extends Controller
{
    public function index()
    {
        

        $trash = Ingredient::onlyTrashed()->get();
        $ingredients = Ingredient::paginate(5);
        return view('ingredients.index', compact('ingredients', 'trash'));
    }

    public function create()
    {
        
        
        return view('ingredients.create');
    }

    public function show(Ingredient $ingredient)
    {
        
        return view('ingredients.show', compact('ingredient'));
    }

    public function edit(Ingredient $ingredient)
    {
        
        return view('ingredients.edit', compact('ingredient'));
    }

    public function update(Ingredient $ingredient)
    {
        

        $ingredient->update(request(['title', 'slug']));

        return redirect('/ingredients');
    }


    public function destroy(Ingredient $ingredient)
    {
        $ingredient->delete();

        return redirect('/ingredients');


    }

    public function store()
    {
        request()->validate([
            'title' => ['required', 'min:5', 'max:50'],
            'slug' => ['required', 'min:3', 'max:30']
        ]);
        Ingredient::create(request(['title', 'slug']));
        
        return redirect('/ingredients');

    }

    public function restore($id)
    {
        
        $trash = Ingredient::onlyTrashed()->findOrFail($id);
        $trash->restore();

        return redirect()->route('ingredients.index');
    }

    public function perma_delete($id)
    {
        
        $trash = Ingredient::onlyTrashed()->findOrFail($id);
        $trash->forceDelete();

        return redirect()->route('ingredients.index');
    }
}
