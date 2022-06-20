<?php

namespace App\Models\Token;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class token extends Model
{
    use HasFactory;

    protected $table = "tokens";


    protected $fillable = [
        'cardNo',
        'amount',
        'tokenDate',
        'token',
    ];
}
