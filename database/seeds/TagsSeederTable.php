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
        $items = [
            
            ['title' => 'tag 1', 'slug' => 'tag1', 'language_id' => '2'],
            ['title' => 'tag 2', 'slug' => 'tag2', 'language_id' => '2'],
            ['title' => 'tag 3', 'slug' => 'tag3', 'language_id' => '2'],
            ['title' => 'tag 4', 'slug' => 'tag4', 'language_id' => '2'],
            ['title' => 'tag 5', 'slug' => 'tag5', 'language_id' => '2'],

        ];

        foreach ($items as $item) {
            \App\Tag::create($item);
        }


        $faker = Faker::create('App\Tag');
        
        for($i = 1 ; $i <= 30 ; $i++){
        	DB::table('tags')->insert([
        	'title' => $faker->sentence(),
            'slug' => $faker->sentence(),
            'language_id' => $faker->numberBetween($min = 1, $max = 2),
        	'created_at' => \Carbon\Carbon::now(),
            'Updated_at' => \Carbon\Carbon::now(),
        ]);
        }
    }
}
