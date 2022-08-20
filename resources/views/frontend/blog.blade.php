@extends('frontend.master')
@section('title', 'Palli Crafts || BLOG')
@push('css')
    <style>
        .title{
            margin: 0px;
            padding: 0px;
            font-family:  Open Sans, Arial,sans-serif;
            font-size: 14px;
            text-align: justify;
        }
        .details{
            font-family:  Open Sans, Arial, sans-serif;
            font-size: 14px;
            text-align: justify;
        }
        .pagination{
            display: flex;
        }

        .img-blog{
            height: 200px;
        }

        .under-line{
            border-bottom: .1px solid #f2f5f4;
        }

        .textLimit {
   overflow: hidden;
   text-overflow: ellipsis;
   display: -webkit-box;
   -webkit-line-clamp: 3; /* number of lines to show */
   -webkit-box-orient: vertical;
}

.card_bg{
    border: none !important;
    height: 358px;
}
.card_bg:hover{
    box-shadow: rgba(0, 0, 0, 0.09) 0px 3px 12px;
}
    </style>
@endpush
@section('main-content')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="bread-inner">
                        <ul class="bread-list">
                            <li><a href="{{route('home')}}">Home<i class="ti-arrow-right"></i></a></li>
                            <li class="active"><a href="javascript:void(0);">Blog</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="blog-single shop-blog grid section mb-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12 mt-4">
                    <div class="row">
                    @foreach($blogs as $blog)
                        <div class="col-md-6 ">
                            
                            <div class="card_bg card">
                                <img src="{{asset($blog->image)}}" class="img-blog" alt="">

                                <p class="date px-3 text-muted pt-2 under-line">
                                        <i class="fa fa-calendar" aria-hidden="true">&nbsp;</i> {{ \Carbon\Carbon::parse($blog->created_at)->format("j F Y")}}
                                        <span class="float-right"><i class="fa fa-user" aria-hidden="true">&nbsp;</i>Admin</span>
                                    </p>

                                    <a href="{{route('blog.details', $blog->id)}}" class="title px-3 text-warning pt-2">{{$blog->title}}</a>
                                    <small class="text-muted px-3 textLimit mb-2">{!! $blog->details!!}...</small> <span class="text-warning px-3 pb-3 text-end"><a href="{{route('blog.details', $blog->id)}}"><small>See more</small> </a></span>
                            </div>

                        </div>
                        @endforeach
                    </div>
                    <div class="row mx-auto w-25">
                        {!! $blogs->links() !!}
                    </div>
                </div>

                <div class="col-lg-4 col-12 mb-3">
                    <div class="main-sidebar">
                        <div class="single-widget recent-post">
                            <h3 class="title">Recent post</h3>
                            @foreach($recent_blogs as $blog)
                            <div class="single-post">
                                <div class="image">
                                    <img src="{{asset($blog->image)}}" alt="Blog">
                                </div>
                                <div class="content">
                                    <h5><a href="{{route('blog.details', $blog->id)}}">{{$blog->title}}</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>{{ \Carbon\Carbon::parse($blog->created_at)->format("j F Y")}}</li>
                                        <li><i class="fa fa-user" aria-hidden="true"></i>
                                            Admin
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        <div class="single-widget newsletter">
                            <h3 class="title">Newsletter</h3>
                            <div class="letter-inner" style="padding: 35px 15px !important;">
                                <h4>Subscribe & get news <br> latest updates.</h4>
                                <form action="{{route('newsletter')}}" method="post" class="form-inner" >
                                    @csrf
                                    <input class="mb-2" style="padding: 0px 60px 0px 10px !important;" type="email" name="email" autocomplete="false" value="{{ old('email') }}" placeholder="Enter your email address">
                                    <button class="btn" type="submit" style="width: 100%">Subscribe</button>
                                </form>
                                @error('email')
                                <div style="color: red">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    </div>



@endsection
