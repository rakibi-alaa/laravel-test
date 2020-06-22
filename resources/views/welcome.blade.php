@extends('layouts.app')

@section('title', 'Welcome')



@section('content')
    <div class="row mt-4  card">
        <div class="col-12 card-body">
            <form>
                <div class="form-row">
                    <div class="col">
                        <select class="form-control" id="exampleFormControlSelect1">
                          <option>Secteur</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                  <div class="col">
                    <select class="form-control" id="exampleFormControlSelect1">
                      <option>Niveau d'études</option>
                      <option>2</option>
                      <option>3</option>
                      <option>4</option>
                      <option>5</option>
                    </select>
                  </div>
                  <div class="col">
                    <input type="text" class="form-control" placeholder="Localisation">
                  </div>
                  <div class="col" >
                    <button type="button" class="btn btn-outline-info ">Search</button>
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
            <div class="card" style="width:100%">
                <div class="card-body">
                  <h6 class="card-title">Card title bvhkdbv dkvbsdhbvds kdsvbdsbv vhdvbsdv kvbdvb vkdvbsdvbv dkvbdskhvdsvhkdbvds vdkvbskd vsdkbvsv sdkvbsdv k</h6>
                  <p class="card-text">Niveau d'études : </p>
                  <p class="card-text">Localisation : </p>
                  <p class="card-text">Mis en ligne : </p>
                </div>
            </div>
        </div>
        
    </div>
@endsection