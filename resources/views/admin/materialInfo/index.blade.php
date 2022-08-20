@extends('admin.master')

@section('title', 'Material Info')

@section('main-content')
    <div class="row">
        <div class="col-sm-12">
            <div class="page-header-title">
                <h4 class="pull-left page-title">Material Info</h4>
                <ol class="breadcrumb pull-right">
                    <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                    <li class="active">Material Info</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Material Info</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12" style="display: inline">
                            <table class="table table-bordered">
                                <tbody>
                                <tr>
                                    <td style="width: 15%;">Material Description</td>
                                    <td>{!! $materialInfo->description !!}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Techniques Description</td>
                                    <td>{!! $materialInfo->tech_description !!}</td>
                                </tr>

                                <tr>
                                    <td style="width: 15%;">Material Image</td>
                                    <td><img src="{{asset($materialInfo->image)}}" alt="slider thumbnail" class="img-responsive w-lg" style="height: 200px;"></td>
                                </tr>

                                <tr>
                                    <td>Action</td>
                                    <td>
                                        <a href="{{route('admin.materialInfo.edit', $materialInfo->id)}}" class="btn btn-info waves-effect waves-light">Edit</a>
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

