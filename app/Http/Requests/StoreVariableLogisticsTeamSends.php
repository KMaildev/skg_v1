<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreVariableLogisticsTeamSends extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'variable_request_info_id' => 'required',
            'transfer_from_warehouse_id' => 'required',
            'transfer_to' => 'required',
            'transfer_to_customer_id' => 'required',
            'sent_date' => 'required',
        ];
    }
}
