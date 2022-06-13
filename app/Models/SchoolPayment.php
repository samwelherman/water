<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SchoolPayment extends Model
{
    use HasFactory;

    protected $table = 'school_payments';

 
    protected $fillable = ['student_payment_id','price', 'paid', 'feeType'];

}
