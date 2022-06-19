<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $table = 'students';

    protected $fillable = ['fname','mname','lname','level','class','yearStudy'];

    public function schools(){

        return $this->belongsToMany('App\Models\School');
    }

}
