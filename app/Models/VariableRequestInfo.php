<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class VariableRequestInfo extends Model
{
    public function user_table()
    {
        return $this->belongsTo(User::class, 'engineer_id', 'id');
    }

    public function variable_request_items_table()
    {
        return $this->hasMany(VariableRequestItem::class);
    }

    public function customer_table()
    {
        return $this->belongsTo(Customers::class, 'customer_id', 'id');
    }

    public function variable_logistics_team_sends_table()
    {
        return $this->belongsTo(VariableLogisticsTeamSend::class, 'id', 'variable_request_info_id');
    }

    public function variable_logistics_team_checks_table()
    {
        return $this->hasMany(VariableLogisticsTeamCheck::class);
    }

    public function variable_qs_team_checks_table()
    {
        return $this->belongsTo(VariableQsTeamCheck::class, 'id', 'variable_request_info_id');
    }


    public function another_variable_qs_team_checks_table()
    {
        return $this->belongsTo(VariableQsTeamCheck::class, 'variable_request_item_id', 'id');
    }


    public function variable_payments_table()
    {
        return $this->belongsTo(VariablePayment::class, 'id', 'variable_request_info_id')->latest();
    }


    public function variable_accept_reject_statuses_table()
    {
        return $this->belongsTo(VariableAcceptRejectStatus::class, 'id', 'variable_request_info_id')->latest();;
    }


    public function another_variable_logistics_team_checks_table()
    {
        return $this->belongsTo(VariableLogisticsTeamCheck::class, 'id', 'variable_request_info_id');
    }

    public function variable_received_by_engineers_table()
    {
        return $this->belongsTo(VariableReceivedByEngineer::class, 'id', 'variable_request_info_id');
    }

    public function variable_actual_vouchers_table()
    {
        return $this->belongsTo(VariableActualVoucher::class, 'id', 'variable_request_info_id');
    }

    public function variable_finance_payment_slips_table()
    {
        return $this->belongsTo(VariableFinancePaymentSlip::class, 'id', 'variable_request_info_id');
    }
}
