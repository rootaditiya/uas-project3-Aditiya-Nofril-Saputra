<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Models\ProductModel;
use App\Models\BrandModel;
use App\Models\SubCategoryModel;
use App\Models\Color;
use App\Models\Productcolor;
use App\Models\ProductSize;
use App\Models\ProductImage;
use Str;
use Auth;

class ProductController extends Controller
{
    public function list()
    {
        $data['getRecord'] = ProductModel::getRecord();
        $data['header_title'] = 'Product';
        return view('admin.product.list', $data);
    }

    public function add()
    {
        $data['header_title'] = 'Add New Product';
        return view('admin.product.add', $data);
    }

    public function insert(Request $request)
    {
        $title = trim($request->title);
        $product = new ProductModel;
        $product->title = $request->title;
        $product->created_by = Auth::user()->id;
        $product->save();
        $slug = Str::slug($title, '-');

        $checkSlug = ProductModel::checkSlug($slug);
        if(empty($checkSlug)){
            $product->slug = $slug;
            $product->save();
        }
        else{
            $new_slug = $slug.'-'.$product->id;
            $product->slug = $new_slug;
            $product->save();

        }

        return redirect('admin/product/edit/' . $product->id);

    }

    public function edit($id)
    {
        $product = ProductModel::getSingle($id);
        // dd($product->title);

        if (!empty($product)) {
            $data['getCategory'] = CategoryModel::getRecordActive();
            $data['getBrand'] = BrandModel::getRecordActive();
            $data['getColor'] = Color::getRecordActive();
            $data['product'] = $product;
            $data['get_sub_category'] = SubCategoryModel::getRecordSubCategory($product->category_id);
            $data['header_title'] = 'Edit Product';
            return view('admin.product.edit', $data);
        }
        
    }

    public function update($id, Request $request)
    {

        // dd($request->all());
        $product = ProductModel::getSingle($id);

        if (!empty($product)) {
            $product->title = trim($request->title);
            $product->sku = trim($request->sku);
            $product->category_id = trim($request->category_id);
            $product->sub_category_id = trim($request->sub_category_id);
            $product->brand_id = trim($request->brand_id);
            $product->price = trim($request->price);
            $product->old_price = trim($request->old_price);
            $product->short_description = trim($request->short_description);
            $product->description = trim($request->description);
            $product->additional_description = trim($request->additional_information);
            $product->shipping_returns = trim($request->shipping_returns);
            $product->status = trim($request->status);
            $product->save();

            Productcolor::deleteRecord($product->id);

            if (!empty($request->color_id)) {
                foreach ($request->color_id as $color_id) {
                    $color = new Productcolor;
                    $color->color_id = $color_id;
                    $color->product_id = $product->id;
                    $color->save();
                }
            }

            ProductSize::deleteRecord($product->id);

            if (!empty($request->size)) {
                foreach ($request->size as $sizeData) {
                    if (!empty($sizeData['name'])) {

                        $size = new ProductSize;
                        $size->name = $sizeData['name'];
                        $size->price = !empty($sizeData['price']) ? $sizeData['price'] : 0;
                        $size->product_id = $product->id;
                        $size->save();
                    }
                }
            }

            if (!empty($request->file('image'))) {
                foreach($request->file('image') as $value){
                    if ($value->isValid()) {
                     $ext = $value->getClientOriginalExtension();
                     $randomStr = date('Ymdhis').Str::random(10).'-'.$product->id;
                     $filename = strtolower($randomStr).'.'.$ext;

                     $value->move('Image/Product/',$filename);

                     $image = new ProductImage;
                     $image->image_name = $filename;
                     $image->image_extension = $ext;
                     $image->product_id = $product->id;
                     $image->save();
                 }
             }
         }

         return redirect()->back()->with('success', 'Product Updated');
     }
     else{
        abort(404);
    }
}

public function iamge_delete($id)
{
    $image = ProductImage::getSingle($id);
    if (!empty($image->getPImage())) {
        unlink('Image/Product/'.$image->image_name);
    }

    $image->delete();
    return redirect()->back()->with('success', 'Product Image has been removed');

}
}
