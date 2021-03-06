<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug'];

    public function meals()
    {
        return $this->hasMany('App\Meal');
    }

    public function language()
    {
        return $this->belongsTo('App/Language')->withTrashed();
    }
}
