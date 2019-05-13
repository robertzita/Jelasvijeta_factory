<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
Use  DB;

class Tag extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug'];


    public function meals()
    {
        return $this->belongsToMany('App\Meal');
    }
}
