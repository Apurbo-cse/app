<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\MaterialInfo;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class MaterialInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $materialInfo = MaterialInfo::first();
        return view('admin.materialInfo.index', compact('materialInfo'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.materialInfo.create');

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

            'description' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg,JPG',
        
        ]);

        $data = new MaterialInfo();

        $data->description = $request->description;
        $data->tech_description = $request->tech_description;
       
        $time = time();

       $image = $request->file('image');
        $imagename = time().'_material_x.'.$image->getClientOriginalExtension();
        $path = 'images/material/';
        $image->move($path, $imagename);
        $data->image = $path.$imagename;

        $data->save();
        Toastr::success('Product successfully create', 'Success');
        return redirect()->route('admin.materialInfo.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\MaterialInfo  $materialInfo
     * @return \Illuminate\Http\Response
     */
    public function show(MaterialInfo $materialInfo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\MaterialInfo  $materialInfo
     * @return \Illuminate\Http\Response
     */
    public function edit(MaterialInfo $materialInfo)
    {
        $materialInfo = MaterialInfo::first();
        return view('admin.materialInfo.edit', compact('materialInfo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\MaterialInfo  $materialInfo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       
        $request->validate([

            'description' => 'required',
        
        ]);

        $data = MaterialInfo::findOrFail($id);
        $data->description = $request->description;
        $data->tech_description = $request->tech_description;

        $time = time();

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagename = $time . 'material_x.' . $image->getClientOriginalExtension();
            $path = 'images/material/';

            if (file_exists(public_path($data->image))) {
                unlink(public_path($data->image));
            }

            $image->move($path, $imagename);
            $img_x = $path . $imagename;
        }else{
            $img_x = $data->image;
        }
        $data->image = $img_x;
        
        $data->save();
        Toastr::success('Material Info successfully updated', 'Success');
        return redirect()->route('admin.materialInfo.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\MaterialInfo  $materialInfo
     * @return \Illuminate\Http\Response
     */
    public function destroy(MaterialInfo $materialInfo)
    {
        //
    }
}
