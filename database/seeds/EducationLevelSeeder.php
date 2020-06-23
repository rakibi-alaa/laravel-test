<?php

use Illuminate\Database\Seeder;
use App\Models\EducationLevel;

class EducationLevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $levels = ['Pas important','Niveau Bac','Bac plus 2','Bac plus 3','Bac plus 4','Bac plus 5'];
        for ($i=0; $i < 6; $i++) { 
            EducationLevel::create([
                'level'     => $levels[$i],
            ]);
        }
    }
}
