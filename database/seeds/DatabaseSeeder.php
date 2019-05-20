<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(LanguagesSeederTable::class);
        $this->call(CategoriesSeederTable::class);
        $this->call(MealsSeederTable::class);
        $this->call(IngredientsSeederTable::class);
        $this->call(TagsSeederTable::class);
    }
}
