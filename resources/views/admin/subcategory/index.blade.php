@extends('admin.master')

@section('title', 'Subcategories')
@section('table_css')
    <!-- DataTables -->
    <link href="{{asset('admin/plugins/datatables/jquery.dataTables.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/plugins/datatables/buttons.bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/plugins/datatables/fixedHeader.bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/plugins/datatables/responsive.bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/plugins/datatables/dataTables.bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('admin/plugins/datatables/scroller.bootstrap.min.css')}}" rel="stylesheet" type="text/css" />

@endsection
@section('main-content')
    <div class="row">
        <div class="col-sm-12">
            <div class="page-header-title">
                <h4 class="pull-left page-title">All Subcategories</h4>
                <ol class="breadcrumb pull-right">
                    <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                    <li class="active">All Subcategories</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <div class="row m-b-15">
        <div class="col-sm-12">
            <a class="btn btn-primary" href="{{route('admin.subcategories.create')}}"><i class="fa fa-plus"></i> Create New Subcategory</a>
        </div>
    </div>


    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">All Subcategory Table</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>#SL</th>
                                    <th>Name</th>
                                    <th>Slug</th>
                                    <th>Parent category</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($subcategories as $subcategory)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$subcategory->name}}</td>
                                        <td>{{$subcategory->slug}}</td>
                                        <td>{{$subcategory->category->name ?? ''}}</td>
                                        <td><span class="label {{$subcategory->status ? 'label-success':'label-warning'}}">{{$subcategory->status ? 'Active':'Inactive'}}</span></td>
                                        <td>
                                            <a href="{{route('admin.subcategories.edit', $subcategory->id)}}" class="btn btn-success"><i class="fa fa-edit"></i></a>
                                            <button class="btn btn-danger" type="button" onclick="deleteCategory({{$subcategory->id}})">
                                                <i class="fa fa-trash-o"></i>
                                            </button>
                                            <form id="delete_from_{{$subcategory->id}}" style="display: none" action="{{route('admin.subcategories.destroy', $subcategory->id)}}" method="post">
                                                @csrf
                                                @method('delete')
                                            </form>

                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')

 <!-- Datatables-->
 <script src="{{asset('assets/admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/dataTables.bootstrap.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/buttons.bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/jszip.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/pdfmake.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/vfs_fonts.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/buttons.html5.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/buttons.print.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/dataTables.fixedHeader.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/dataTables.keyTable.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/responsive.bootstrap.min.js')}}"></script>
    <script src="{{asset('assets/admin/plugins/datatables/dataTables.scroller.min.js')}}"></script>

    <!-- Datatable init js -->
    <script src="{{asset('assets/admin/pages/datatables.init.js')}}"></script>
   
    </script>
    <script type="text/javascript">
        function deleteCategory(id)
        {
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
                },
                buttonsStyling: false
            })

            swalWithBootstrapButtons.fire({
                title: 'Are you sure?',
                text: "You won't be able to delete this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    event.preventDefault();
                    document.getElementById('delete_from_'+id).submit();
                    swalWithBootstrapButtons.fire(
                        'Deleted!',
                        'Your data has been deleted',
                        'success'
                    )
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Cancelled',
                        'Your data is safe :)',
                        'error'
                    )
                }
            })
        }
    </script>
@endpush
