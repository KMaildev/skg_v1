<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreProjectBq extends FormRequest
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
            'project_id' => 'required',
            'work_scope_id' => 'required',
            'VariableAsset.*.variable_asset_id' => 'required',
            'VariableAsset.*.qty' => 'required|numeric',
            'VariableAsset.*.rate' => 'required|numeric',
        ];
    }
}
