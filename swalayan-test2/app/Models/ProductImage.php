<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;

    protected $table = 'product_images';

    static public function getSingle($id)
    {
        return self::find($id);
    }

    public function getPImage()
    {
        if(!empty($this->image_name) && file_exists('Image/Product/'.$this->image_name)){
            return url('Image/Product/'.$this->image_name);
        }
        else{
            return "";
        }
    }
    
}
