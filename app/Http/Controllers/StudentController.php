<?php

namespace App\Http\Controllers;

use App\Models\School;
use App\Models\Student;
use App\Models\StudentPayment;
use App\Models\SchoolPayment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $students = Student::all();

        return view('raja.student.home',compact('students'));
    }

     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function list()
    {
        //
        $students = StudentPayment::all();

        return view('raja.payment.list',compact('students'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function general()
    {
        //
        $students = Student::all();

        return view('raja.invoice.home',compact('students'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function payment()
    {
        //
        $students = Student::all();



        return view('raja.payment.home',compact('students'));
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
            'fname' => 'required',
            'mname' => 'required',
            'lname' => 'required',
            'class' => 'required',
            'level' => 'required',
        ]);

        $student = new Student;

        $student->fname = request('fname');
        $student->mname = request('mname');
        $student->lname = request('lname');
        $student->level = request('level');
        $student->class = request('class');

        $student->save();

        return redirect()->route('student.index')->with('success', 'Saved Successfully');
        
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store_payment(Request $request)
    {
        //

         $request->validate([
            'fname' => 'required',
            'mname' => 'required',
            'lname' => 'required',
            'class' => 'required',
            'level' => 'required',
            'feeType' => 'required',
            'price' => 'required',
            'paid' => 'required',
            'yearStudy' => 'required',
        ]);

        $student_data['fname'] = $request->fname;
        $student_data['mname'] = $request->mname;
        $student_data['lname'] = $request->lname;
        $student_data['class'] = $request->class;
        $student_data['level'] = $request->level;
        $student_data['yearStudy'] = $request->yearStudy;

        $student_data1 = StudentPayment::create($student_data);
        $student_payment_id = $student_data1->id;

        // dd($student_payment_id);

        // return response(dd($student_data1));

        // $student = new Student;

        // $school_level = $request->level;
        $school_label = $request->feeType;
        $school_value = $request->price;
        $school_paid = $request->paid;

        if (!empty($school_label)) {
                foreach ($school_label as $key => $v_school_label) {
                    if (!empty($school_value[$key])) {

                        
                        $school_data['feeType'] = $v_school_label;
                        $school_data['price'] = $school_value[$key];
                        $school_data['paid'] = $school_paid[$key];
                        $school_data['student_payment_id'] = $student_payment_id;
                        SchoolPayment::create($school_data);
                    }
                }
            }

        return redirect()->route('student.list')->with('success', 'Saved Successfully');
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        //
        $student = Student::find($id);

        return view('raja.student.show', compact('student'));
    }

     /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function fee_payment($id, Request $request)
    {
        //
        $student = StudentPayment::where('student_payment_id', $id)->first();

        // $salary_template_info = SalaryTemplate::find($id);
        $student_infos = SchoolPayment::where('student_payment_id', $id)->get();

        // $student_infos = DB::table('school_payments')->select('feeType', 'price', 'paid')->where('student_payment_id', $id)->get();



        return view('raja.payment.show_invoice', compact('student', 'student_infos'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function invoice($id, Request $request)
    {
        //
        $student = Student::find($id);

        $level = Student::where('id', $id)->value('level');

        $schools = School::where('level', $level)->get();

        

        return view('raja.invoice.show', compact('student', 'schools'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function action($id, Request $request)
    {
        //
        $student = Student::find($id);

        $level = Student::where('id', $id)->value('level');

        $schools = School::where('level', $level)->get();

        

        return view('raja.payment.action', compact('student', 'schools'));
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
        $student = Student::find($id);
        $rows = Student::all();
         return view('raja.student.edit',compact('student', 'rows'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student)
    {
        //
        $request->validate([
            'fname' => 'required',
            'mname' => 'required',
            'lname' => 'required',
            'class' => 'required',
            'level' => 'required',
        ]);

        $student->update($request->all());

        return redirect()->route('student.index')->with('success', 'Updated Successfully');
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

        $student=Student::where('id', $id)->firstorFail();
        $student->delete();

        return redirect()->route('student.index')->with('success', 'Deleted Successfully');
    }
}
