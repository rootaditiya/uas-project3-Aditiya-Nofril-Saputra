<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Color extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $table = 'colors';

    protected $dates = ['deleted_at'];

    static public function getSingle($id)
    {
        return self::find($id);
    }

    static public function getRecord()
    {
        return self::select('colors.*', 'users.name as created_by_name')
        ->join('users', 'users.id', '=', 'colors.created_by')
        ->orderBy('colors.id', 'desc')
        ->get();            
    }

    static public function getRecordActive()
    {
        return self::select('colors.*')
        ->join('users', 'users.id', '=', 'colors.created_by')
        ->where('colors.status','=',0)
        ->orderBy('colors.name', 'asc')
        ->get();            
    }
}
