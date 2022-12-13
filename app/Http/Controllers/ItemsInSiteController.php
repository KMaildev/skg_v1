<?php

namespace App\Http\Controllers;

use App\Models\Customers;
use App\Models\EngRequestItem;
use App\User;
use Illuminate\Http\Request;

class ItemsInSiteController extends Controller
{
    public function index(Request $request)
    {
        $customers = Customers::query();
        if (request('search')) {
            $customers->where('name', 'Like', '%' . request('search') . '%');
        }
        $customers = $customers->orderBy('id', 'ASC')->paginate(50);
        return view('items_in_site.index', compact('customers'));
    }


    public function items_in_site_by_engineer(Request $request)
    {
        // $customers = Customers::query();
        // if (request('search')) {
        //     $customers->where('name', 'Like', '%' . request('search') . '%');
        // }
        // $customers = $customers->orderBy('id', 'ASC')->paginate(50);


        $user_id = auth()->user()->id;
        $projects_users = User::where('id', $user_id)->get();
        return view('items_in_site.index_by_engineer', compact('projects_users'));
    }


    public function showItems($id)
    {
        $eng_request_items = EngRequestItem::with('fixed_assets_table', 'users_table', 'request_info_table')
            ->where('customer_id', $id)
            ->get();

        $html = '';
        $html .= '<table style="width: 100%" class="sub_table">';
        $html .= '<tr>';
        $html .= '<td style="background-color: #296166; color: white;"># </td>';
        $html .= '<td style="background-color: #296166; color: white;">Request Code </td>';
        $html .= '<td style="background-color: #296166; color: white;">Request Date </td>';
        $html .= '<td style="background-color: #296166; color: white;">Engineer </td>';
        $html .= '<td style="background-color: #296166; color: white;">Work Scope </td>';
        $html .= '<td style="background-color: #296166; color: white;">Items </td>';
        $html .= '<td style="background-color: #296166; color: white; text-align: right;">Qty </td>';
        $html .= '</tr>';

        $i = 1;
        $total_quantity = [];
        foreach ($eng_request_items as $key => $value) {
            $item_name = $value->fixed_assets_table->item_name ?? '';
            $engineer_name = $value->users_table->name ?? '';
            $quantity = $value->quantity ?? '';
            $request_code = $value->request_info_table->request_code ?? '';
            $request_date = $value->request_info_table->request_date ?? '';
            $work_scope = $value->request_info_table->work_scope ?? '';
            $total_quantity[] = $quantity;

            $html .= '<tr>';
            $html .= '<td>' . $i++ . '</td>';
            $html .= '<td>' . $request_code . '</td>';
            $html .= '<td>' . $request_date . '</td>';
            $html .= '<td>' . $engineer_name . '</td>';
            $html .= '<td>' . $work_scope . '</td>';
            $html .= '<td>' . $item_name . '</td>';
            $html .= '<td style="text-align: right;">' . $quantity . '</td>';
            $html .= '</tr>';
        }

        $total_quantity = array_sum($total_quantity);
        $html .= '<tr style="font-weight: bold;">';
        $html .= '<td style="font-weight: bold">Total</td>';
        $html .= '<td style="font-weight: bold" colspan="5"></td>';
        $html .= '<td style="font-weight: bold; text-align: right;">';
        $html .= number_format($total_quantity);
        $html .= '</td>';
        $html .= '</table>';

        return response()->json([
            'html' => $html
        ]);
    }
}
