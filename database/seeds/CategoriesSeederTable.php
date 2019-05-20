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
        $items= [
            ['title' => 'Kategorija 1', 'slug' => 'slug1', 'language_id' => '1'],
            ['title' => 'Kategorija 2', 'slug' => 'slug2', 'language_id' => '1'],
            ['title' => 'Kategorija 3', 'slug' => 'slug3', 'language_id' => '1'],
            ['title' => 'Kategorija 4', 'slug' => 'slug4', 'language_id' => '1'],
            ['title' => 'Kategorija 5', 'slug' => 'slug5', 'language_id' => '1'],
            ['title' => 'Kategorija 6', 'slug' => 'slug6', 'language_id' => '1'],

        ];

        foreach ($items as $item) {
            \App\Category::create($item);
        }

        $faker = Faker::create('App\Category');
        
        for($i = 1 ; $i <= 10 ; $i++){
        	DB::table('categories')->insert([
        	'title' => $faker->sentence(),
            'slug' => $faker->sentence(),
            'language_id' => $faker->numberBetween($min = 1, $max = 2),
        	'created_at' => \Carbon\Carbon::now(),
        	'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }

    }
    
}
