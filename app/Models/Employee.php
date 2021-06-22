<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $dates = ['date_of_birth'];
    protected $fillable = ['name', 'street', 'position', 'city', 'date_of_birth'];
}
