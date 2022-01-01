<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use App\Models\MenuType;
use App\Models\Branch;

use Illuminate\Http\Request;

class MenuTypeController extends Controller
{
    public function index(){
        $menu_types = MenuType::all();
        return $menu_types;
    }
}
