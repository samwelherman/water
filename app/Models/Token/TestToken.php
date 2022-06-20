<?php

namespace App\Models\Token;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TestToken extends Model
{
    use HasFactory;

    protected $table = "test_tokens";


    protected $fillable = [
        'token',
        'username',
        'cardNo',
        'Unit',
        'amount',
    ];
}
