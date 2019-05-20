<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
Use  DB;

class Language extends Model
{
    use SoftDeletes;

    protected $fillable = ['title', 'slug', 'iso_label'];
    
    
    
}
