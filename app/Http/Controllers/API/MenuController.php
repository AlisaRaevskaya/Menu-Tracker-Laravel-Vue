<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Menu;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function storeMenuName(Request $request)
    {
        $menu_name = Menu::create($request->name);
    
        return response()->json($menu_name);
    }
}
