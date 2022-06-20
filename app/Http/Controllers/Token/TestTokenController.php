<?php

namespace App\Http\Controllers\Token;

use App\Http\Controllers\Controller;
use App\Models\Token\TestToken;
use Illuminate\Http\Request;

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
