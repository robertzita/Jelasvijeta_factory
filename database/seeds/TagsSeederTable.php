<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class TagsSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('App\Tag');
        
        for($i = 1 ; $i <= 30 ; $i++){
        	DB::table('tags')->insert([
        	'title' => $faker->sentence(),
        	'slug' => $faker->sentence(),
        	'created_at' => \Carbon\Carbon::now(),
        	'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }
    }
}
