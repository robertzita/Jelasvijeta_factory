<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CategoriesSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Category');
        
        for($i = 1 ; $i <= 10 ; $i++){
        	DB::table('categories')->insert([
        	'title' => $faker->sentence(),
        	'slug' => $faker->sentence(),
        	'created_at' => \Carbon\Carbon::now(),
        	'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }

    }
    
}
