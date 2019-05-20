<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
Use  DB;

class Meal extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug', 'description', 'category_id','language_id'];

    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function ingredients()
    {
        return $this->belongsToMany('App\Ingredient', 'meals_ingredients', 'meal_id', 'ingredients_id');
    }

    public function tags()
    {
        return $this->belongsToMany('App\Tag', 'meals_tags', 'meal_id', 'tag_id');
    }

    public function language()
    {
        return $this->belongsTo('App/Language')->withTrashed();
    }
}
