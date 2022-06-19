<?php

namespace App\Models\Parish;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contribution extends Model
{
    use HasFactory;

    protected $table = "contributions";


    protected $fillable = [
        'name',
        'amount'
    ];
}
