<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Ingredient;
use Faker\Generator as Faker;

$factory->define(Ingredient::class, function (Faker $faker) {
    return [
        "title" => $faker->name,
        "slug" => $faker->name,
        "language_id" => factory('App\Language')->create(),
    ];
});
