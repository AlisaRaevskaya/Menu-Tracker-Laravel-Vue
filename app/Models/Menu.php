<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function menu_type(){
        return $this->belongsTo(MenuType::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function menu_file()
    {
        return $this->hasOne(MenuFile::class);
    }
}
