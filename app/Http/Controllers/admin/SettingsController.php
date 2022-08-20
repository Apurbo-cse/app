<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\NewSetting;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;

class SettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $new_setting= NewSetting::first();
        return view('admin.settings.index', compact('new_setting'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.settings.create');

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
            'image' => 'required|mimes:jpeg,png,jpg,JPG',
            'phone'=>'required',
            'email'=>'required|email',
            'address'=>'required',
            'whatsapp'=>'required',
            'whatsapp_link'=>'required|url',
        ]);

        $data = new NewSetting();

        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->address = $request->address;
        $data->whatsapp = $request->whatsapp;
        $data->whatsapp_link = $request->whatsapp_link;
        $data->facebook_link = $request->facebook_link;
        $data->twitter_link = $request->twitter_link;
        $data->pintorest_link = $request->pintorest_link;
        $data->messenger_link = $request->messenger_link;
        $data->about = $request->about;
        $data->terms_condition = $request->terms_condition;
        $data->privacy_policy = $request->privacy_policy;
        $data->refund_policy = $request->refund_policy;
        $data->google_map_link = $request->google_map_link;

        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $path = 'images/logo/';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image'] = $path . '/' . $file_name;
        }
        
        $data->save();
        Toastr::success('Setting successfully create', 'Success');

        return redirect()->route('admin.settings.index');


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
        $new_setting = NewSetting::first();
        return view('admin.settings.edit', compact('new_setting'));
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
            'phone'=>'required',
            'email'=>'required|email',
            'address'=>'required',
            'whatsapp'=>'required',
            'whatsapp_link'=>'required|url',
        ]);

        $data = NewSetting::findOrFail($id);

        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->address = $request->address;
        $data->whatsapp = $request->whatsapp;
        $data->whatsapp_link = $request->whatsapp_link;
        $data->facebook_link = $request->facebook_link;
        $data->twitter_link = $request->twitter_link;
        $data->pintorest_link = $request->pintorest_link;
        $data->messenger_link = $request->messenger_link;
        $data->about = $request->about;
        $data->terms_condition = $request->terms_condition;
        $data->privacy_policy = $request->privacy_policy;
        $data->refund_policy = $request->refund_policy;
        $data->google_map_link = $request->google_map_link;


        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $fileName = time().'_logo.'.$file->getClientOriginalExtension();

            if (file_exists(public_path($data->image))) {
                unlink(public_path($data->image));
            }

            $path = 'images/logo/';
            $file->move($path, $fileName);
            $category_single_path = $path.$fileName;
        }else{
            $category_single_path = $data->image;
        }

        $data->image = $category_single_path;
        
        $data->save();
        Toastr::success('Setting successfully updated', 'Success');

        return redirect()->route('admin.settings.index');


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
