<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    use HasFactory;

    protected $table = 'categorys';

    static public function getSingle($id)
    {
        return self::find($id);
    }

    static public function getRecord()
    {
        return self::select('categorys.*', 'users.name as created_by_name')
        ->join('users', 'users.id', '=', 'categorys.created_by')
        ->where('categorys.is_deleted', '=', 0)
        ->orderBy('categorys.id', 'desc')
        ->get();            
    }

    static public function getRecordActive()
    {
        return self::select('categorys.*', 'users.name as created_by_name')
        ->join('users', 'users.id', '=', 'categorys.created_by')
        ->where('categorys.is_deleted', '=', 0)
        ->where('categorys.status', '=', 0)
        ->orderBy('categorys.name', 'asc')
        ->get();            
    }
}
