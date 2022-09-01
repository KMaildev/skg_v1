<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreChartofAccount extends FormRequest
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
            'account_number' => 'required|unique:chartof_accounts,coa_number',
            'account_type' => 'required',
            'account_group' => 'required',
            'description' => 'required',
            'opening_balance' => "numeric",
        ];
    }
}
