<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewSetting extends Model
{
    protected $fillable = [
        'image', 
        'phone', 
        'email', 
        'address', 
        'facebook_link',
         'twitter_link',
          'pintorest_link', 
          'messenger_link', 'about', 'terms_condition', 
          'privacy_policy', 'refund_policy', 
          'google_map_link', 'whatsapp', 'whatsapp_link'];
}
