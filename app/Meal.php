<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Meal extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug', 'description', 'category_id'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
