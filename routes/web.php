<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


//meals
Route::resource('meals', 'MealsController');
Route::get('meals_restore/{id}', ['uses' => 'MealsController@restore', 'as' => 'meals.restore']);
Route::delete('meals_perma_delete/{id}', ['uses' => 'MealsController@perma_delete', 'as' => 'meals.perma_delete']);
//categories
Route::resource('categories', 'CategoriesController');
Route::get('categories_restore/{id}', ['uses' => 'CategoriesController@restore', 'as' => 'categories.restore']);
Route::delete('categories_perma_delete/{id}', ['uses' => 'CategoriesController@perma_delete', 'as' => 'categories.perma_delete']);

//ingredients
Route::resource('ingredients', 'IngredientsController');
Route::get('ingredients_restore/{id}', ['uses' => 'IngredientsController@restore', 'as' => 'ingredients.restore']);
Route::delete('ingredients_perma_delete/{id}', ['uses' => 'IngredientsController@perma_delete', 'as' => 'ingredients.perma_delete']);

//tags
Route::resource('tags', 'TagsController');
Route::get('tags_restore/{id}', ['uses' => 'TagsController@restore', 'as' => 'tags.restore']);
Route::delete('tags_perma_delete/{id}', ['uses' => 'TagsController@perma_delete', 'as' => 'tags.perma_delete']);





