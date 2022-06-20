<?php

namespace App\Models\Token;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Block extends Model
{
    use HasFactory;

    protected $table = "blocks";


    protected $fillable = [
        'block1',
        'block2',
        'block3',
        'block4'
    ];
}
