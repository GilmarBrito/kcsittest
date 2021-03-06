<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $fillable = [
        'account_id',
        'transaction_type',
        'amount',
        'balance'
    ];

    public function account()
    {
        return $this->belongsTo('App\Account');
    }
}
