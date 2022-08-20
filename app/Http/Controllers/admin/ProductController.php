<?php

namespace App\Http\Controllers\admin;

use App\Category;
use App\Http\Controllers\Controller;
use App\Product;
use App\SubCategory;
use App\Tag;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

use Illuminate\Support\Str;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::orderBy('created_at', 'DESC')->get();
        return view('admin.product.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::where('status','1')->orderBy('name', 'ASC')->get();
        $subcategories = SubCategory::where('status','1')->orderBy('name', 'ASC')->get();
        $tags = Tag::where('status','1')->orderBy('name', 'ASC')->get();

        return view('admin.product.create', compact('categories', 'subcategories', 'tags'));
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
            'title' => 'required|unique:products,title',
            'short_desc' => 'required',
            'details' => 'required',
            
            'stock' => 'required',
            'size' => 'required',
            'is_featured' => 'required',
            'status' => 'required',
            'tag_id' => 'required',
            'category_id' => 'required',
            'subcategory_id' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg,JPG',
        

        ]);

        $data = new Product();
        $data->title = $request->title;
        $data->slug = Str::slug($request->title);
        $data->product_id = $request->product_id;

        $data->short_desc = $request->short_desc;
        $data->details = $request->details;
        $data->regular_price = $request->regular_price;
        $data->offer_price = $request->offer_price;
        $data->stock = $request->stock;
        $data->size = $request->size;
        $data->is_featured = $request->is_featured;
        $data->status = $request->status;
        $data->tag_id = $request->tag_id;
        $data->category_id = $request->category_id;
        $data->subcategory_id = $request->subcategory_id;

        $time = time();



        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $path = 'images/product';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image'] = $path . '/' . $file_name;
        }

        if ($request->hasfile('image_two')) {
            $file = $request->file('image_two');
            $path = 'images/product';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image_two'] = $path . '/' . $file_name;
        }

        if ($request->hasfile('image_three')) {
            $file = $request->file('image_three');
            $path = 'images/product';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image_three'] = $path . '/' . $file_name;
        }

       

        $data->save();
        Toastr::success('Product successfully create', 'Success');
        return redirect()->route('admin.products.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $product['product'] = $product;
        return view('admin.product.view', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $product['product'] = $product;
        $categories = Category::where('status','1')->orderBy('name', 'ASC')->get();
        $subcategories = SubCategory::where('status','1')->orderBy('name', 'ASC')->get();
        $tags = Tag::where('status','1')->orderBy('name', 'ASC')->get();

        return view('admin.product.edit', compact('categories', 'subcategories', 'tags', 'product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */


    public function update(Request $request, $id)
    {

        

        $data = Product::findOrFail($id);

        $request->validate([

            'title' => "required|unique:products,title, $data->id",
            'short_desc' => 'required',
            'details' => 'required',
            
            'stock' => 'required',
            'size' => 'required',
            'is_featured' => 'required',
            'status' => 'required',
            'tag_id' => 'required',
            'category_id' => 'required',
            'subcategory_id' => 'required',
            'image' => 'mimes:jpeg,png,jpg,JPG',

        ]);


        $data = Product::findOrFail($id);

        $data['title'] = $request->title;
        $data['slug'] = Str::slug($request->title);
        $data['short_desc'] = $request->short_desc;
        $data['details'] = $request->details;
        $data['regular_price'] = $request->regular_price;
        $data['offer_price'] = $request->offer_price;
        $data['stock'] = $request->stock;
        $data['size'] = $request->size;
        $data['is_featured'] = $request->is_featured;
        $data['status'] = $request->status;
        $data['tag_id'] = $request->tag_id;
        $data['category_id'] = $request->category_id;
        $data['subcategory_id'] = $request->subcategory_id;
        $time = time();

        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $path = 'images/product';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image'] = $path . '/' . $file_name;
        }

        if ($request->hasfile('image_two')) {
            $file = $request->file('image_two');
            $path = 'images/product';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image_two'] = $path . '/' . $file_name;
        }

        if ($request->hasfile('image_three')) {
            $file = $request->file('image_three');
            $path = 'images/product';
            $file_name = time() . $file->getClientOriginalName();
            $file->move($path, $file_name);
            $data['image_three'] = $path . '/' . $file_name;
        }

        $data->save();
        Toastr::success('Product successfully udated', 'Success');
        return redirect()->route('admin.products.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $data = Product::findOrFail($id);

   
        if(file_exists(($data->image))){
            unlink($data->image);
        }
        if(file_exists(($data->image_two))){
            unlink($data->image_two);
        }
        if(file_exists(($data->image_three))){
            unlink($data->image_three);
        }


        $data->delete();
        Toastr::success('Product successfully deleted', 'Success');
        return redirect()->route('admin.products.index');
    }
}
