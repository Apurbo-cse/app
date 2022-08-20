<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ArtisanInfo extends Model
{
    protected $fillable = [ 'desc','image', 'image_two', 'sub_desc'];
}
