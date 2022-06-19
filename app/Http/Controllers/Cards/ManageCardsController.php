<?php
namespace App\Http\Controllers\Cards;

use App\Http\Controllers\Controller;

use App\Models\Cards\Cards;
use App\Models\Cards\CardAssignment;
use App\Models\Water\Customer;
use App\Models\Accounting\GroupAccount;
use App\Models\Accounting\ClassAccount;
use App\Models\Accounting\AccountCodes;
use App\Models\Accounting\Expenses;
use App\Models\Accounting\Deposit;
use Cartalyst\Sentinel\Laravel\Facades\Sentinel;
use Illuminate\Http\Request;
use App\Models\Accounting\JournalEntry;
use App\Http\Requests;
use App\Models\Payments\Currency;
use App\Models\Payments\Payment_methodes;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;
use Laracasts\Flash\Flash;

class ManageCardsController extends Controller
{
  
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      
     $cards = Cards::all();
     
     return view('cards.manage_cards',compact('cards'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
       $customer = Customer::all()->where('status',1);
        return view('cards.assign_cards', compact('customer'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //$data = $request->all();
        $card_numbers = $request->card_number;
        if(!empty($card_numbers)){
            for($i = 0;$i<$card_numbers; $i++){
                $last_card_id = Cards::all()->last();
                if(!empty($last_card_id)){
                    $reference_no = $last_card_id->id + 1;
                }else{
                    $reference_no = 1;
                }
                
                $data['reference_no'] = "DCG-V-".sprintf('%04d',$reference_no);
                
                $data['type'] = 2;
                $data['status'] = 1;
                $data['added_by'] = auth()->user()->id;
                Cards::create($data);
            }
        }
       

        return redirect(route('manage_cards.index'));

           
          
        }
   

    public function show($id)
    {
        //
    }


    public function edit($id)
    {
       $data= Cards::find($id);



       return view('cards.manage_cards',compact('data','id'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $data['added_by'] = auth()->user()->id;
         $cards = Cards::find($id);
         $cards->update($data);

        return redirect(route('manage_cards.index'));

     
 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       
        $data= Cards::destroy($id);
        
        //Flash::success(trans('general.successfully_deleted'));
        return redirect(route('manage_cards.index'));
    }


    public function assignCard($id){

        $card = Cards::where('status',1)->get()->first();
        if(!empty($card))
        $card_id = $card->id;
        $visitor_id = $id;

        if(isset($card_id)){
            $data['member_id'] = $visitor_id;
            $data['cards_id'] = $card_id;
            $data['added_by'] = auth()->user()->id;

            $assignment  = CardAssignment::create($data);
         }else{

            return redirect()->back()->with(['error'=>'No Card available']);
         }
        if(!empty($assignment->id) && $assignment->id > 0){
            Cards::where('id',$card_id)->update(['status'=>2,'owner_id'=>$visitor_id]);
            Customer::find($visitor_id)->update(['status'=>1,'card_id'=>$card_id]);

        }

      
        return redirect()->back()->with(['success'=>'Card assigned successfull']);


    }



   
}
