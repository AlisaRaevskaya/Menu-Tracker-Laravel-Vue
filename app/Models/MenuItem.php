<?php

namespace App\Models;
use App\Models\MenuSection;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{
    use HasFactory;
    protected $guarded = [];
    
    public function menu_section(){
        return $this->belongsTo(MenuSection::class);
    }
}
