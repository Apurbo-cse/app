<?php

namespace App\Http\Controllers\admin;

use App\ArtisanInfo;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class ArtisanInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $artisanInfo = ArtisanInfo::first();
        return view('admin.artisanInfo.index', compact('artisanInfo'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.artisanInfo.create');
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

            'desc' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg,JPG',
        
        ]);

        $data = new ArtisanInfo();

        $data->desc = $request->desc;
        $data->sub_desc = $request->sub_desc;
        
        $time = time();

        $image = $request->file('image');
        $imagename = time().'_artisan_one.'.$image->getClientOriginalExtension();
        $path = 'images/artisan/';
        $image->move($path, $imagename);
        $data->image = $path.$imagename;

        $image = $request->file('image_two');
        $imagename_two= $time.'_artisan_two.'.$image->getClientOriginalExtension();
        $path = 'images/artisan/';
        $image->move($path, $imagename_two);
        $data->image_two = $path.$imagename_two;


        $data->save();
        Toastr::success('Product successfully create', 'Success');
        return redirect()->route('admin.artisanInfo.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\ArtisanInfo  $artisanInfo
     * @return \Illuminate\Http\Response
     */
    public function show(ArtisanInfo $artisanInfo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\ArtisanInfo  $artisanInfo
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $artisanInfo = ArtisanInfo::first();
        return view('admin.artisanInfo.edit', compact('artisanInfo'));
    }

    /**
     * 
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\ArtisanInfo  $artisanInfo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            
            'desc' => 'required',
        ]);

        $artisanInfo = ArtisanInfo::findOrFail($id);


        $artisanInfo->desc = $request->desc;
        $artisanInfo->sub_desc = $request->sub_desc;
         $time = time();

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagename = $time . '_artisan_one.' . $image->getClientOriginalExtension();
            $path = 'images/artisan/';

            if (file_exists(public_path($artisanInfo->image))) {
                unlink(public_path($artisanInfo->image));
            }

            $image->move($path, $imagename);
            $img_one = $path . $imagename;
        }else{
            $img_one = $artisanInfo->image;
        }
        $artisanInfo->image = $img_one;
        

        if ($request->hasFile('image_two')) {
            $image = $request->file('image_two');
            $imagename_two = $time . '_artisan_two.' . $image->getClientOriginalExtension();
            $path = 'images/artisan/';

            if (file_exists(public_path($artisanInfo->image_two))) {
                unlink(public_path($artisanInfo->image_two));
            }

            $image->move($path, $imagename_two);
            $img_two = $path . $imagename_two;
        }else{
            $img_two = $artisanInfo->image_two;
        }
        
        $artisanInfo->image_two = $img_two;


        
        $artisanInfo->save();
        Toastr::success('Artisan information successfully updated', 'Success');
        return redirect()->route('admin.artisanInfo.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\ArtisanInfo  $artisanInfo
     * @return \Illuminate\Http\Response
     */
    public function destroy(ArtisanInfo $artisanInfo)
    {
        //
    }
}
