<?php

namespace App\Http\Controllers\Admin;

use App\Cate;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;

class CateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cates= Cate::orderBy('created_at', 'DESC')->get();
        return view('admin.category_single.index', compact('cates'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category_single.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg,JPG',
            'status' => 'required',
        ]);

        $data = new Cate();
        $data->title = $request->title;
        
        $image = $request->file('image');
        $imagename = time().'_cate_single.'.$image->getClientOriginalExtension();
        $path = 'images/category_single/';
        $image->move($path, $imagename);
        $data->image = $path.$imagename;

        $data->status = $request->status;

        $data->save();
        Toastr::success('Category single successfully create', 'Success');
        return redirect()->route('admin.category-single.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cate = Cate::findOrFail($id);
        return view('admin.category_single.edit', compact('cate'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
   
        

        $cate= Cate::findOrFail($id);
        $cate->title = $request->title;
        
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $fileName = time().'_cate_single.'.$file->getClientOriginalExtension();

            if (file_exists(public_path($cate->image))) {
                unlink(public_path($cate->image));
            }

            $path = 'images/category_single/';
            $file->move($path, $fileName);
            $category_single_path = $path.$fileName;
        }else{
            $category_single_path = $cate->image;
        }

        $cate->image = $category_single_path;

        $cate->status = $request->status;
        

        $cate->save();
        Toastr::success('Category single successfully updated', 'Success');
        return redirect()->route('admin.category-single.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cate = Cate::findOrFail($id);
        if (file_exists(public_path($cate->image))) {
            unlink(public_path($cate->image));
        }
        $cate->delete();
        Toastr::success('Category single successfully deleted', 'Success');
        return redirect()->route('admin.category-single.index');
       
    }
}
