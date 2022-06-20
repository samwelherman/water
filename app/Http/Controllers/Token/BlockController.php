<?php

namespace App\Http\Controllers\Token;

use App\Http\Controllers\Controller;
use App\Models\Token\Block;
use Illuminate\Http\Request;

class BlockController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $blocks = Block::all();

        return view('token.block.home',compact('blocks'));
    }

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
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'block1' => 'required',
            'block2' => 'required',
            'block3' => 'required',
            'block4' => 'required',
            
        ]);

        $blocks = new Block();

        $blocks->block1 = request('block1');
        $blocks->block2 = request('block2');
        $blocks->block3 = request('block3');
        $blocks->block4 = request('block4');


        $blocks->save();

    
        return redirect()->route('block.index')->with('success', 'Saved Successfully');
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Token\Block  $block
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $block = Block::find($id);

        return view('token.block.show', compact('block'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Token\Block  $block
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $block = Block::find($id);

        return view('token.block.edit', compact('block'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @param  \App\Models\Token\Block  $block
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Block $block)
    {
        //

        $request->validate([
            'block1' => 'required',
            'block2' => 'required',
            'block3' => 'required',
            'block4' => 'required',
            
        ]);

        $block->update($request->all());

        return redirect()->route('block.index')->with('success', 'Updated Successfully');
   
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Token\Block  $block
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $block = Block::where('id', $id)->firstorFail();
        $block->delete();

        return redirect()->route('block.index')->with('success', 'Deleted Successfully');
    
    }
}
