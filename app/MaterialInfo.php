<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MaterialInfo extends Model
{
    protected $fillable = [ 'description','image', 'tech_description'];
}
