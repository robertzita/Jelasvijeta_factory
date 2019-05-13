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
        $faker = Faker::create('App\Ingredient');
        
        for($i = 1 ; $i <= 30 ; $i++){
        	DB::table('ingredients')->insert([
        	'title' => $faker->sentence(),
        	'slug' => $faker->sentence(),
        	'created_at' => \Carbon\Carbon::now(),
        	'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }
    }
}
