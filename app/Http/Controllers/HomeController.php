<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offer;
use App\Models\Sector;
use App\Models\EducationLevel;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $offers = Offer::with('sector')->whereDate('expires_in', '>', Carbon::now())->get();
        $sectors = Sector::all();
        $educationLevels = EducationLevel::all();
        return view('welcome',[
            'offers'=>$offers,
            'sectors'=>$sectors,
            'educationLevels' => $educationLevels,
            'selectedLevel'=>null,
            'selectedSector'=>null,
            'selectedLocalisation'=>null,
            ]);
    }

    public function filter(Request $request)
    {
        
        $where = [];
        $selectedLevel=null;
        $selectedSector=null;
        $selectedLocalisation=null;
        if($request->input('sector')){
            array_push($where, ['sector_id',$request->input('sector')]);
            $selectedSector = $request->input('sector');
        }
        if($request->input('level')){
            array_push($where, ['education_level_id',$request->input('level')]);
            $selectedLevel = $request->input('level');
        }
        if($request->input('localisation')){
            array_push($where, ['localisation',$request->input('localisation')]);
            $selectedLocalisation = $request->input('localisation');
        }
        
        $offers = Offer::with('sector')->where($where)->whereDate('expires_in', '>', Carbon::now())->get();
        $sectors = Sector::all();
        $educationLevels = EducationLevel::all();
        
        return view('welcome',[
            'offers'=>$offers,
            'sectors'=>$sectors,
            'educationLevels' => $educationLevels,
            'selectedLevel'=>$selectedLevel,
            'selectedSector'=>$selectedSector,
            'selectedLocalisation'=>$selectedLocalisation,
            ]);
    }

    public function apply($id,Request $request)
    {
        if (Auth::check()) {
            $user = Auth::user();
            $user->applications()->attach($id);
            $offers = Offer::with('sector')->whereDate('expires_in', '>', Carbon::now())->get();
            $sectors = Sector::all();
            $educationLevels = EducationLevel::all();
            return view('welcome',[
                'offers'=>$offers,
                'sectors'=>$sectors,
                'educationLevels' => $educationLevels,
                'selectedLevel'=>null,
                'selectedSector'=>null,
                'selectedLocalisation'=>null,
            ]);
        }else{
            return redirect()->route('register');
        }
       
        
    }
}
