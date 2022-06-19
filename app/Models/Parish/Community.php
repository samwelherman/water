<?php

namespace App\Models\Parish;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Community extends Model
{
    use HasFactory;

    protected $table = "communities";


    protected $fillable = [
        'name',
        'chairman',
        'secretary',
        'location'
    ];

    public function members(){
        
        return $this->hasMany('App\Models\Parish\Member');
    }
}
