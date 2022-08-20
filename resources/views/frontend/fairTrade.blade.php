@extends('frontend.master')
@section('title', 'Palli Crafts || Fair and trade')
@section('main-content')



           
            
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="bread-inner">
                        <ul class="bread-list">
                            <li><a href="{{route('home')}}">Home<i class="ti-arrow-right"></i></a></li>
                            <li class="active"><a href="javascript:void(0);">Fair Trade Principles</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row mb-4">
                <div class="col-lg-6 col-12">
                    <div class="about-content">
                    <h3>Fair <span> Trade </span> Principles</h3>
                        <p style="text-align: justify;" data-rm-words="50">
                        <div style="text-align: justify;" >
                        {!! $fairTradeInfo->description  !!}
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-12 mb-3">
                    <br><br> <br>
                    <div class="about-img overlay">
                        <img src="{{asset($fairTradeInfo->image)}}" alt="artisan" >
                    </div>
                </div>

                <!-- <div class="col-lg-12 col-12 mt-3 ">
                    <div class="about-content"> 
                        <h4>Other Info <span></span></h3>
                        <p style="text-align: justify;" data-rm-words="50">
                        <div style="text-align: justify;" >
                        {!! $fairTradeInfo->tech_description !!}
                        </div>
                    </div>
                </div> -->

            </div>
            
        

            @foreach($fairTrades as $fairTrade)
            <div class="row d-flex col-md-12 mb-4 pb-3 p-3 m-1" style="background-color: rgb(254, 254, 254);box-shadow: 2px 5px 8px 2px #888888;"  >
                <div class="col-md-6 p-4">
                    <h6 class=" mb-2"> {{$loop->iteration}}. {{$fairTrade->title}}</h6>
                    <div style="text-align: justify">
                        {!! $fairTrade->sub_title !!}
                    </div>
                </div>
                <div class="col-md-6 p-4">
                    <div class="card p-2">
                        <img src="{{asset($fairTrade->image ?  $fairTrade->image : 'images/static/no-product-image.png')}}" alt="Fair Trade" >
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </section>

    @include('frontend.partial._shop_service')
    @include('frontend.partial._news_letter')
@endsection
