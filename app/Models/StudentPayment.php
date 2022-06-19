<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentPayment extends Model
{
    use HasFactory;

     protected $table = 'student_payments';

 
    protected $fillable = ['student_payment_id','fname','mname','lname','level','class','yearStudy'];

}
