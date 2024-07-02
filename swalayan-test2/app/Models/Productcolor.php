<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Productcolor extends Model
{
    use HasFactory;
    protected $table = 'productcolors';

    static public function deleteRecord($id)
    {
        self::where('product_id','=',$id)->forceDelete();
    }

}
