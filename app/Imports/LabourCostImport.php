<?php

namespace App\Imports;

use App\Models\LabourCost;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class LabourCostImport implements ToCollection, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $rows)
    {
        Validator::make($rows->toArray(), [
            '*.project_id' => 'required',
            '*.particular' => 'required',
            '*.unit' => 'required',
            '*.quantity' => 'required',
            '*.rate' => 'required',
        ])->validate();

        foreach ($rows as $row) {
            LabourCost::create([
                'project_id'     => $row['project_id'],
                'particular'     => $row['particular'],
                'unit'     => $row['unit'],
                'quantity'     => $row['quantity'],
                'rate'     => $row['rate'],
                'per'     => $row['per'],
                'user_id'     => auth()->user()->id ?? 0,

                'created_at'    => date('Y-m-d h:i:s'),
                'updated_at'    => date('Y-m-d h:i:s'),
            ]);
        }
    }
}
