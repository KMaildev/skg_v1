<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequestInfo extends FormRequest
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
            'projects_users_id' => 'required',
            'project_id' => 'required',
            'customer_id' => 'required',
            'request_date' => 'required',
            'work_scope' => 'required',

            'fixed_assets_id.*' => 'required',
            'quantity.*' => 'required|numeric',
        ];
    }
}
