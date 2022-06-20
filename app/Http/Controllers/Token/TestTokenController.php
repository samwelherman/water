<?php

namespace App\Http\Controllers\Token;

use App\Http\Controllers\Controller;
use App\Models\Token\TestToken;
use Illuminate\Http\Request;
use App\Models\Water\Customer;
use App\Models\Water\UnitPrice;

class TestTokenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tests = TestToken::all();

        return view('token.test.home', compact('tests'));
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
            'token' => 'required',
            
        ]);

        $cardno =  substr(request('token'),-12,4);
        $third_blok =  substr(request('token'),0,1).substr(request('token'),0,2).substr(request('token'),0,3 ).substr(request('token'),0,12);

        $cardID = sprintf('%00d',substr(request('token'),-4,4));
        $customer = Customer::where('card_id',$cardID)->value('name');

        
        $unit = substr(request('token'),-8,4);
        $unitprice = UnitPrice::all()->first()->price;
        $amount = $unitprice * $unit;

        $tests = new TestToken();

        $tests->token = request('token');


        $tests->save();

    
        return redirect()->route('tokenTest.index')->with('success', 'Saved Successfully');
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Token\TestToken  $testToken
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $test = TestToken::find($id);

        return view('token.test.show', compact('test'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Token\TestToken  $testToken
     * @return \Illuminate\Http\Response
     */
    public function edit(TestToken $testToken)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Token\TestToken  $testToken
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TestToken $testToken)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Token\TestToken  $testToken
     * @return \Illuminate\Http\Response
     */
    public function destroy(TestToken $testToken)
    {
        //
    }
}
