<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use App\Models\Offer;

class OfferSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $offers = [
            0=>['refAnnonce01','Annonce titre 1',1,3,1,'Marrakech',Carbon::now()->add(1,'day')],
            1=>['refAnnonce02','Annonce titre 2',2,2,1,'Marrakech',Carbon::now()->add(1,'day')],
            2=>['refAnnonce03','Annonce titre 3',3,3,1,'Marrakech',Carbon::now()],
        ];
        for ($i=0; $i < 3; $i++) { 
            Offer::create([
                'ref'     => $offers[$i][0],
                'title'     => $offers[$i][1],
                'sector_id' => $offers[$i][2],
                'education_level_id' => $offers[$i][3],
                'company_id' => $offers[$i][4],
                'localisation'     => $offers[$i][5],
                'expires_in'     => $offers[$i][6],
            ]);
        }
        
    }
}
