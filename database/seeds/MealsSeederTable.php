<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MealsSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $items = [
            
            ['title' => 'Jelo 1', 'slug' => 'jelo1', 'description' => 'opis1', 'category_id' => '1','language_id' => '2',],
            ['title' => 'Jelo 2', 'slug' => 'jelo2', 'description' => 'opis2', 'category_id' => '1','language_id' => '2',],
            ['title' => 'Jelo 3', 'slug' => 'jelo3', 'description' => 'opis3', 'category_id' => '1','language_id' => '2',],
            ['title' => 'Jelo 4', 'slug' => 'jelo4', 'description' => 'opis4', 'category_id' => '2','language_id' => '2',],
            ['title' => 'Jelo 5', 'slug' => 'jelo5', 'description' => 'opis5', 'category_id' => '2','language_id' => '2',],
            ['title' => 'Jelo 6', 'slug' => 'jelo6', 'description' => 'opis6', 'category_id' => '1','language_id' => '2',],
            ['title' => 'Jelo 7', 'slug' => 'jelo7', 'description' => 'opis7', 'category_id' => '1','language_id' => '2',],
            ['title' => 'Jelo 8', 'slug' => 'jelo8', 'description' => 'opis8', 'category_id' => '3','language_id' => '2',],

        ];

        foreach ($items as $item) {
            \App\Meal::create($item);
        }
        $faker = Faker::create('App\Meal');
        
        for($i = 1 ; $i <= 10 ; $i++){
        	DB::table('meals')->insert([
        	'title' => $faker->sentence(),
            'slug' => $faker->sentence(),
            'description' => $faker->sentence(),
            'category_id' => $faker->numberBetween($min = 1, $max = 6),
            'language_id' => $faker->numberBetween($min = 1, $max = 2),
        	'created_at' => \Carbon\Carbon::now(),
        	'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }
    }
}


