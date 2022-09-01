@if ($request_info->actual_voucher_upload)
    <span style="color: green">
        Received
    </span>

    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->actual_voucher_upload_date ?? '' }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->variable_actual_vouchers_table->users_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red">
        No
    </span>
@endif
