@if ($request_info->accept_reject_status == 'accept')
    <span style="color: green; text-align: left;">
        {{ ucfirst($request_info->accept_reject_status) }}
    </span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 20%;">
                Date : {{ $request_info->accept_reject_date ?? '' }}
            </td>
            <td style="width: 20%;">
                By :
                {{ $request_info->variable_accept_reject_statuses_table->users_table->name ?? '' }}
            </td>
            <td style="width: 20%;">
                Remark :
                {{ $request_info->variable_accept_reject_statuses_table->remark ?? '' }}
            </td>
        </tr>
    </table>
@elseif ($request_info->accept_reject_status == 'reject')
    <span style="color: red">
        {{ ucfirst($request_info->accept_reject_status) }}
    </span>

    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 20%;">
                Date : {{ $request_info->accept_reject_date ?? '' }}
            </td>
            <td style="width: 20%;">
                By :
                {{ $request_info->variable_accept_reject_statuses_table->users_table->name ?? '' }}
            </td>
            <td style="width: 20%;">
                Remark :
                {{ $request_info->variable_accept_reject_statuses_table->remark ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        Unknown
    </span>
@endif
