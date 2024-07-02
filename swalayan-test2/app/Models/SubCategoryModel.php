<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategoryModel extends Model
{
    use HasFactory;

    protected $table = 'sub_categorys';

    static public function getRecord()
    {
        return self::select('sub_categorys.*', 'users.name as created_by_name', 'categorys.name as category_name')
        ->join('categorys', 'categorys.id', '=', 'sub_categorys.category_id')
        ->join('users', 'users.id', '=', 'sub_categorys.created_by')
        ->where('sub_categorys.is_deleted', '=', 0)
        ->orderBy('categorys.id', 'desc')
        ->paginate(50);            
    }

    static public function getRecordSubCategory($category_id)
    {
        return self::select('sub_categorys.*')
        ->join('users', 'users.id', '=', 'sub_categorys.created_by')
        ->where('sub_categorys.is_deleted', '=', 0)
        ->where('sub_categorys.status', '=', 0)
        ->where('sub_categorys.category_id', '=', $category_id)
        ->orderBy('sub_categorys.name', 'asc')
        ->get();
    }

    static public function getSingle($id)
    {
        return self::find($id);
    }

}
