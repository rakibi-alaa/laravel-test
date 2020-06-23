<?php

use Illuminate\Database\Seeder;
use App\Models\Sector;

class SectorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sectors = ['Multimedia et informatique','economie et finnance','Achats','Banque et finance','Construction Btp'];
        for ($i=0; $i < 5; $i++) { 
            Sector::create([
                'sector'     => $sectors[$i],
            ]);
        }
    }
}


