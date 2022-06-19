<?php

namespace App\Http\Controllers\Parish;

use App\Http\Controllers\Controller;
use App\Models\Parish\Community;
use App\Models\Parish\Member;
use App\Models\Parish\ParishChild;
use Illuminate\Http\Request;

class ParishMemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $members = Member::all();

        $communities = Community::pluck('name','name')->all();

        // dd($members);

        return view('parish.member.home',compact('members', 'communities'));
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
            'communityName' => 'required',
            'childNo' => 'required',
            'childName' => 'required',
            'childAge' => 'required',
            
        ]);

        $template_data['name'] = $request->name;
        $template_data['communityName'] = $request->communityName;
        $template_data['childNo'] = $request->childNo;
        // $template_data['member_id'] = $request->member_id;

        // dd($request->member_id);


        $salary_template_id1 = Member::create($template_data);
        $salary_template_id = $salary_template_id1->member_id;


        $salary_allowance_label = $request->childName;
        $salary_allowance_value = $request->childAge;
            // input id for update
        $salary_allowance_id = $request->parish_child_id;
            

          if (!empty($salary_allowance_label)) {
                foreach ($salary_allowance_label as $key => $v_salary_allowance_label) {
                    if (!empty($salary_allowance_value[$key])) {
                        $salary_allowance_data['member_id'] = $salary_template_id;
                        $salary_allowance_data['childName'] = $v_salary_allowance_label;
                        $salary_allowance_data['childAge'] = $salary_allowance_value[$key];
// *********** save add more value into tbl_salary_allowance    *******************
                        
                            ParishChild::create($salary_allowance_data);
                            //$this->payroll_model->save($salary_allowance_data);
                        
                    }
                }
            }


     return redirect()->route('member.index')->with(['success'=>'Member Created Successfully']);
      
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id,Request $request)
    {
        //

        $member = Member::find($id);
        $members_info=ParishChild::where('member_id', $id)->get();

        return view('parish.member.show',compact('member','members_info','id'));
                   
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
        $member = Member::find($id);

        $members_info=ParishChild::where('member_id', $id)->get();

        $communities = Community::pluck('name','name')->all();        

        return view('parish.member.edit',compact('member','members_info', 'communities','id'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @param  \App\Models\Parish\Member  $community
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        $request->validate([
            'name' => 'required',
            'communityName' => 'required',
            'childNo' => 'required',
            'childName' => 'required',
            'childAge' => 'required',
            
        ]);

        $template_data['name'] = $request->name;
        $template_data['communityName'] = $request->communityName;
        $template_data['childNo'] = $request->childNo;


        $salary_template_id1 = Member::where('member_id', $id)->update($template_data);
         
        $salary_template_id = $id;


        $salary_allowance_label = $request->childName;
        $salary_allowance_value = $request->childAge;
            // input id for update
        $salary_allowance_id = $request->parish_child_id;
            

          if (!empty($salary_allowance_label)) {
                foreach ($salary_allowance_label as $key => $v_salary_allowance_label) {
                    if (!empty($salary_allowance_value[$key])) {
                        $salary_allowance_data['member_id'] = $salary_template_id;
                        $salary_allowance_data['childName'] = $v_salary_allowance_label;
                        $salary_allowance_data['childAge'] = $salary_allowance_value[$key];
// *********** save add more value into tbl_salary_allowance    *******************
                        
                        $allowance_id = $salary_allowance_id[$key];
                        ParishChild::where('parish_child_id',$allowance_id)->update($salary_allowance_data);
                            //$this->payroll_model->save($salary_allowance_data, $allowance_id);
                        
                    }
                }
            }


      return redirect()->route('member.index')->with(['success'=>'Member Updated Successfully']);
      


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Parish\Member  $community
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    ParishChild::where('member_id', $id)->delete();
    $salary_template_id = Member::find($id);


    $salary_template_id->delete();
    return redirect()->route('member.index')->with(['success'=>'Deleted Successfully']);
    


    }
}
