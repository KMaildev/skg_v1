@if ($request_info->finance_payment_slip_upload)
    <span style="color: green">
        Received
    </span>

    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->finance_payment_slip_upload_date ?? '' }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->variable_finance_payment_slips_table->users_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red">
        No
    </span>
@endif
