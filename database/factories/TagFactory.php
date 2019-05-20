<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Tag;
use Faker\Generator as Faker;

$factory->define(Tag::class, function (Faker $faker) {
    return [
        "title" => $faker->name,
        "slug" => $faker->name,
        "language_id" => factory('App\Language')->create(),
    ];
});
