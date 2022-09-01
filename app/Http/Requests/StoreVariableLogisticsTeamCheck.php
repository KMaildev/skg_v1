<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreVariableLogisticsTeamCheck extends FormRequest
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
            'variable_request_item_id' => 'required',
            'price.*' => 'required|numeric',
            'transportation' => 'required|numeric',
            'labor' => 'required|numeric',
            'banking_percent' => 'required|numeric',
            'extra' => 'required|numeric',
        ];
    }
}
