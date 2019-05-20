<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Meal;
use Faker\Generator as Faker;

$factory->define(Meal::class, function (Faker $faker) {
    return [
        "title" => $faker->name,
        "slug" => $faker->name,
        "description" => $faker->name,
        "category_id" => factory('App\Category')->create(),
        "language_id" => factory('App\Language')->create(),
    ];
});
