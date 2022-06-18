<?php

namespace App\Models\Parish;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $table = "members";

    protected $primaryKey = "member_id";


    protected $fillable = [
        'member_id',
        'name',
        'communityName',
        'childNo'
    ];

}
