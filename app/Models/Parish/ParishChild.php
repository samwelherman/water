<?php

namespace App\Models\Parish;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ParishChild extends Model
{
    use HasFactory;

    protected $table = "parish_child";


    protected $fillable = [
        'parish_child_id',
        'member_id',
        'childName',
        'childAge'
    ];
}
