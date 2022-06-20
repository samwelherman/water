<?php

namespace App\Http\Controllers\Token;

use App\Http\Controllers\Controller;
use App\Models\Token\token;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\Water\UnitPrice;
use App\Models\Cards\Cards;
use App\Models\Water\Customer;

class TokenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tokens = token::all();

        return view('token.token.home',compact('tokens'));
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
            'cardNo' => 'required',
            'amount' => 'required',
            
        ]);
       
        $cards_id = Cards::where('reference_no',$request->cardNo)->value('id');
        $price = UnitPrice::all()->first()->price;

        $block1 =  substr(request('cardNo'),-4,4);
        $block2 = sprintf('%04d',request('amount')/$price);
        $block3 = sprintf('%04d',$cards_id);
        $token = $block1.$block2.$block3;

        $tokens = new token();

        $nowDT = Carbon::now();

        $tokens->cardNo = request('cardNo');
        $tokens->amount = request('amount');
        $tokens->token = $token;

        $tokens->tokenDate = $nowDT;


        $tokens->save();

    
        return redirect()->route('token.index')->with('success', 'Saved Successfully');
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Token\token  $token
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $token = token::find($id);

        return view('token.token.show', compact('token'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Token\token  $token
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $token = token::find($id);

        return view('token.token.edit', compact('token'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Token\token  $token
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, token $token)
    {
        //

        $request->validate([
            'cardNo' => 'required',
            'amount' => 'required',
            
        ]);

        $token->update($request->all());

        return redirect()->route('token.index')->with('success', 'Updated Successfully');
   
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Token\token  $token
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        $token = token::where('id', $id)->firstorFail();
        $token->delete();

        return redirect()->route('token.index')->with('success', 'Deleted Successfully');
    
    }
}
