<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class IngredientsSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items= [
            ['title' => 'Sastojak 1', 'slug' => 'slug1', 'language_id' => '1'],
            ['title' => 'Sastojak 2', 'slug' => 'slug2', 'language_id' => '1'],
            ['title' => 'Sastojak 3', 'slug' => 'slug3', 'language_id' => '1'],
            ['title' => 'Sastojak 4', 'slug' => 'slug4', 'language_id' => '1'],
            ['title' => 'Sastojak 5', 'slug' => 'slug5', 'language_id' => '1'],
            ['title' => 'Sastojak 6', 'slug' => 'slug6', 'language_id' => '1'],

        ];

        foreach ($items as $item) {
            \App\Ingredient::create($item);
        }

        $faker = Faker::create('App\Ingredient');
        
        for($i = 1 ; $i <= 30 ; $i++){
        	DB::table('ingredients')->insert([
        	'title' => $faker->sentence(),
            'slug' => $faker->sentence(),
            'language_id' => $faker->numberBetween($min = 1, $max = 2),
        	'created_at' => \Carbon\Carbon::now(),
        	'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }
    }
}
