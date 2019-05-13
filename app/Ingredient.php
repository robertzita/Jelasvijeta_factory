<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Ingredient extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug'];

    public function meals()
    {
        return $this->belongsToMany('App\Meal');
    }
}
