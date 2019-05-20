<?php

use Illuminate\Database\Seeder;

class LanguagesSeederTable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            
            ['title' => 'Hrvatski jezik', 'slug' => 'hrvatski-jezik', 'iso_label' => 'hr'],
            ['title' => 'Engleski jezik', 'slug' => 'engleski-jezik', 'iso_label' => 'en'], 

        ];

        foreach ($items as $item) {
            \App\Language::create($item);
        }
    }
}
