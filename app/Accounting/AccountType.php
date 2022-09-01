<?php

namespace App\Accounting;

use Illuminate\Database\Eloquent\Model;

class AccountType extends Model
{
    public function account_classifications()
    {
        return $this->belongsTo(AccountClassification::class, 'account_classification_id', 'id'); 
    }
}
