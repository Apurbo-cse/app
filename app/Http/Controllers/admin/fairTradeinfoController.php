<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\fairTradeInfo;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;

class fairTradeinfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fairTradeInfo = fairTradeInfo::first();
        return view('admin.fairTradeInfo.index', compact('fairTradeInfo'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.fairTradeInfo.create');
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

        $data = new fairTradeInfo();

        $data->description = $request->description;
        $data->tech_description = $request->tech_description;

        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $path = 'images/fairTrade';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image'] = $path . '/' . $file_name;
        }

        $data->save();
        Toastr::success('Product successfully create', 'Success');
        return redirect()->route('admin.fairTradeInfo.index');
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
        $fairTradeInfo = fairTradeInfo::first();
        return view('admin.fairTradeInfo.edit', compact('fairTradeInfo'));
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
        
        $request->validate([

            'description' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg,JPG',
        
        ]);

        $data = fairTradeInfo::findOrFail($id);
        $data->description = $request->description;
        $data->tech_description = $request->tech_description;

        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $path = 'images/fairTrade';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image'] = $path . '/' . $file_name;
        }
        $data->save();
        Toastr::success('Material Info successfully updated', 'Success');
        return redirect()->route('admin.fairTradeInfo.index');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
