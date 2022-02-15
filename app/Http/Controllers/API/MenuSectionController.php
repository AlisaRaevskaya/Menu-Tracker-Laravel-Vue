<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\MenuSection;
use App\Models\Menu;

class MenuSectionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function all()
    {
        $sections = MenuSection::all();
        return $sections;
    }

    public function getById($id)
    {   $template_menu_id = Menu::where('menu_type_id', $id)->where('base_template', 1)->pluck('id')->implode('');
        $sections = MenuSection::where( 'menu_id',  $template_menu_id )->get();
        return response()->json([
            'sections' => $sections
        ]);
    }
    // Menu::findOrFail($id);

    // comment = Post::find(1)->comments()
    //                 ->where('title', 'foo')
    //                 ->first();


    // return response()->json([
    //     'name' => 'Abigail',
    //     'state' => 'CA',
    // ]);
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Responses
     */
    public function store(Request $request)
    {
        $section = new MenuSection();
        $section->title = $request->title;
       $section->subtitle = $request->subtitle;
       $section->price = $request->price;
       $section->style= $request->style;
       $section->menu_type_id = $request->menu_type_id;
       $section->menu_id = $request->menu_id;
       $section->save();
        
        $message = 'Success';

        return response()->json(['message'=> $message, 'section' => $section]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
