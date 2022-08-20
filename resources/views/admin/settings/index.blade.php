@extends('admin.master')

@section('title', 'Settings')

@section('main-content')
    <div class="row">
        <div class="col-sm-12">
            <div class="page-header-title">
                <h4 class="pull-left page-title">All Settings</h4>
                <ol class="breadcrumb pull-right">
                    <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                    <li class="active">All Settings</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <!-- <div class="row m-b-15">
        <div class="col-sm-12">
            @if(empty($setting))
                <a class="btn btn-primary" href="{{route('admin.settings.create')}}"><i class="fa fa-plus"></i> Create New Settings</a>
            @endif
        </div>
    </div> -->


    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">All Settings</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-12">
                            <table class="table table-bordered">
                                <tbody>
                                <tr>
                                    <td style="width: 15%;">Logo</td>
                                    <td><img src="{{asset($new_setting->image)}}" alt="logo" style="width: 110px;"></td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Phone</td>
                                    <td>{{$new_setting->phone}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Email</td>
                                    <td>{{$new_setting->email}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Address</td>
                                    <td>{{$new_setting->address}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Whatsapp</td>
                                    <td>{{$new_setting->whatsapp}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Whatspp link</td>
                                    <td>{{$new_setting->whatsapp_link}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Facebook link</td>
                                    <td>{{$new_setting->facebook_link}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Twitter link</td>
                                    <td>{{$new_setting->twitter_link}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Pintorest link</td>
                                    <td>{{$new_setting->pintorest_link}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Google map link</td>
                                    <td>{{$new_setting->google_map_link}}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">About</td>
                                    <td>{!! $new_setting->about !!}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="col-12">
                            <table class="table table-bordered">
                                <tbody>

                                <tr>
                                    <td style="width: 15%;">Trams and condition</td>
                                    <td>{!! $new_setting->terms_condition !!}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Privacy policy</td>
                                    <td>{!! $new_setting->privacy_policy !!}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Refund policy</td>
                                    <td>{!! $new_setting->refund_policy !!}</td>
                                </tr>
                                <tr>
                                    <td>Action</td>
                                    <td>
                                        <a href="{{route('admin.settings.edit', $new_setting->id)}}" class="btn btn-info waves-effect waves-light">Edit</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

