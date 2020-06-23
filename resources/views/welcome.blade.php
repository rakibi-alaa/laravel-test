@extends('layouts.app')

@section('title', 'Welcome')



@section('content')
    <div class="row mt-4  card">
        <div class="col-12 card-body">
            <form method="POST" action="{{ route('homeFilter') }}">
              @csrf
                <div class="form-row">
                    <div class="col">
                        <select name="sector" class="form-control" id="exampleFormControlSelect1">
                          <option value=" ">Choisir secteur</option>
                          @foreach ($sectors as $sector)
                            <option value="{{$sector->id}}" {{ $selectedSector == $sector->id ? 'selected' : '' }}>{{$sector->sector}}</option>
                          @endforeach
                        </select>
                      </div>
                  <div class="col">
                    <select name="level" class="form-control" id="exampleFormControlSelect1">
                      <option value=" ">Choisir niveau d'études</option>
                      @foreach ($educationLevels as $educationlevel)
                            <option value="{{$educationlevel->id}}" {{ $selectedLevel == $educationlevel->id ? 'selected' : ''  }}>{{$educationlevel->level}}</option>
                          @endforeach
                    </select>
                  </div>
                  <div class="col">
                    <input type="text" name="localisation" value="{{$selectedLocalisation}}" class="form-control" placeholder="Localisation">
                  </div>
                  <div class="col" >
                    <button type="submit" class="btn btn-outline-info ">Search</button>
                </div>
                </div>
                
            </form>
        </div>
        
    </div>

    <div class="row">
        <div class="col-12">
            <h2>Annonces</h2>
        </div>
        <div class="col-8">
          @foreach ($offers as $offer)
            <div class="card" style="width:100%;margin-bottom:10px;">
              <div class="card-body">
                <h6 class="card-title">{{$offer->title}}</h6>
                <p class="card-text">Niveau d'études : {{$offer->sector->sector}}</p>
                <p class="card-text">Localisation : {{$offer->localisation}}</p>
                <p class="card-text">Mis en ligne : {{$offer->created_at->format('d/m/Y H:i')}} </p>
                <form method="POST" action="{{ route("offerApplication",['id' => $offer->id])}}">
                  @csrf
                  <button type="submit" class="btn btn-primary">Postuler maintenant</button>
                </form>
              </div>
            </div>
          @endforeach
        </div>
        
    </div>
@endsection