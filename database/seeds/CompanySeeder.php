<?php

use Illuminate\Database\Seeder;
use App\Models\Company;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $companies = [0 => ['company Name 1',1,'Marrakech'],1 => ['company Name 2',1,'Marrakech'],2=>['company Name 3',3,'Marrakech']];
        for ($i=0; $i < 3; $i++) { 
            Company::create([
                'name'     => $companies[$i][0],
                'sector_id'     => $companies[$i][1],
                'localisation'     => $companies[$i][2],
            ]);
        }
    }
}
