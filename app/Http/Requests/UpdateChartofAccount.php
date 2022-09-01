<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateChartofAccount extends FormRequest
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
        $id = $this->route('chartofaccount');
        return [
            'account_number' => 'required|unique:chartof_accounts,coa_number,' . $id,
            'account_type' => 'required',
            'account_group' => 'required',
            'description' => 'required',
            'opening_balance' => "numeric",
        ];
    }
}
