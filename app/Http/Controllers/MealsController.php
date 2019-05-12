<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Meal;
use App\Category;
use DB;

class MealsController extends Controller
{
    public function index()
    {
        
        $meals = Meal::all();
        $trash = Meal::onlyTrashed()->get();
        
        return view('meals.index', compact('meals','trash'));
    }

    public function create()
    {
        
        
        return view('meals.create');
    }

    public function show(Meal $meal)
    {
        
        return view('meals.show', compact('meal'));
    }

    public function edit(Meal $meal)
    {
        
        return view('meals.edit', compact('meal'));
    }

    public function update(Meal $meal)
    {
        

        $meal->update(request(['title', 'slug', 'description']));

        return redirect('/meals');
    }


    public function destroy(Meal $meal)
    {
        $meal->delete();

        return redirect('/meals');


    }

    public function store()
    {
        request()->validate([
            'title' => ['required', 'min:5', 'max:50'],
            'slug' => ['required', 'min:3', 'max:30'],
            'description' => ['required', 'min:3', 'max:30']
        ]);
        Meal::create(request(['title', 'slug', 'description']));
        
        return redirect('/meals');

    }

    public function restore($id)
    {
        
        $trash = Meal::onlyTrashed()->findOrFail($id);
        $trash->restore();

        return redirect()->route('meals.index');
    }

    public function perma_delete($id)
    {
        
        $trash = Meal::onlyTrashed()->findOrFail($id);
        $trash->forceDelete();

        return redirect()->route('meals.index');
    }
}
