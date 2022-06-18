<?php

namespace App\Http\Controllers;

use App\Models\School;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SchoolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
         $schools = School::all();

        return view('raja.school.home',compact('schools'));
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
            'level' => 'required',
            'feeType' => 'required',
            'price' => 'required',
            
        ]);

         // save add more value into tbl_salary_allowance
            $school_level = $request->level;
            $school_label = $request->feeType;
            $school_value = $request->price;

            
            if (!empty($school_label)) {
                foreach ($school_label as $key => $v_school_label) {
                    if (!empty($school_value[$key])) {
                        // $school_data['school_id'] = $school_id;
                        $school_data['level'] = $school_level;
                        $school_data['feeType'] = $v_school_label;
                        $school_data['price'] = $school_value[$key];
                            School::create($school_data);
                    }
                }
            }

   
            return redirect()->route('school.index')->with('success', 'Saved Successfully');
   
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
        $school = School::find($id);

        $rows = DB::table('schools')->select('feeType', 'price')->where('id', $id)->get();

        return view('raja.school.show', compact('school', 'rows'));
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
        $school = School::find($id);

        $rows = DB::table('schools')->select('feeType', 'price')->where('id', $id)->get();

        // $rows = School::where('id', $id)->get();

         return view('raja.school.edit',compact('school', 'rows'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\School  $school
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, School $school)
    {
        //

        $request->validate([
            'level' => 'required',
            'feeType' => 'required',
            'price' => 'required',
            
        ]);

        // save add more value into tbl_salary_allowance
        $school_level = $request->level;
        $school_label = $request->feeType;
        $school_value = $request->price;
        // input id for update
        $school_id = $request->id;

        
        if (!empty($school_label)) {
            foreach ($school_label as $key => $v_school_label) {
                if (!empty($school_value[$key])) {
                    // $school_data['school_id'] = $school_id;
                    $school_data['level'] = $school_level;
                    $school_data['feeType'] = $v_school_label;
                    $school_data['price'] = $school_value[$key];
                     if (!empty($school_id[$key])) {
                        
                        $feedata_id = $school_id[$key];
                        School::where('id',$feedata_id)->update($school_data);
                    } 
                    else {
                        School::create($school_data);
                     }
                }
            }
        }

   
        return redirect()->route('school.index')->with('success', 'Updated Successfully');
   
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

        $school=School::where('id', $id)->firstorFail();
        $school->delete();

        return redirect()->route('school.index')->with('success', 'Deleted Successfully');
   
    }
}
