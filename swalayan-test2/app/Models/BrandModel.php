<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BrandModel extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $table = 'brands';

    protected $dates = ['deleted_at'];

    static public function getSingle($id)
    {
        return self::find($id);
    }

    static public function getRecord()
    {
        return self::select('brands.*', 'users.name as created_by_name')
        ->join('users', 'users.id', '=', 'brands.created_by')
        ->orderBy('brands.id', 'desc')
        ->get();            
    }

    static public function getRecordActive()
    {
        return self::select('brands.*')
        ->join('users', 'users.id', '=', 'brands.created_by')
        ->where('brands.status','=',0)
        ->orderBy('brands.name', 'asc')
        ->get();            
    }
    
}
