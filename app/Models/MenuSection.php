<?php

namespace App\Models;
use App\Models\MenuType;
use App\Models\MenuItem;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuSection extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function menu_type(){
        return $this->belongsTo(MenuType::class);
    }
    public function menu_items(){
        return $this->hasMany(MenuItem::class);
    }
}
