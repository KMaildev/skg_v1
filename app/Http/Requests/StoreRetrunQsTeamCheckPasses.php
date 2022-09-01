<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreRetrunQsTeamCheckPasses extends FormRequest
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
            'engineer_return_info_id' => 'required',
            'return_item_id.*' => 'required',
            'passed_qty.*' => 'required|numeric',
        ];
    }
}
