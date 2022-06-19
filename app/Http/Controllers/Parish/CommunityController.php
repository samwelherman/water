<?php

namespace App\Http\Controllers\Parish;


use App\Http\Controllers\Controller;
use App\Models\Parish\Community;
use Illuminate\Http\Request;

class CommunityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $communities = Community::all();

        return view('parish.community.home',compact('communities'));
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
            'name' => 'required',
            'chairman' => 'required',
            'secretary' => 'required',
            'location' => 'required',
            
        ]);

        $communities = new Community();

        $communities->name = request('name');
        $communities->chairman = request('chairman');
        $communities->secretary = request('secretary');
        $communities->location = request('location');

        $communities->save();

    
        return redirect()->route('community.index')->with('success', 'Saved Successfully');
   

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
        

        $community = Community::find($id);

        // $rows = DB::table('schools')->select('feeType', 'price')->where('id', $id)->get();

        return view('parish.community.show', compact('community'));
    }

    /**
     * Show the form for editing the specified resource.
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //

        $community = Community::find($id);

        // $rows = DB::table('schools')->select('feeType', 'price')->where('id', $id)->get();

        // $rows = School::where('id', $id)->get();

         return view('parish.community.edit',compact('community'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Parish\Community  $community
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Community $community)
    {
        //
        $request->validate([
            'name' => 'required',
            'chairman' => 'required',
            'secretary' => 'required',
            'location' => 'required',
            
        ]);


        $community->update($request->all());

        return redirect()->route('community.index')->with('success', 'Updated Successfully');
   
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

        $community=Community::where('id', $id)->firstorFail();
        $community->delete();

        return redirect()->route('community.index')->with('success', 'Deleted Successfully');
   
    }
}
