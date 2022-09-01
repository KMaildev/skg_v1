@if ($request_info->accept_reject_status == 'accept')
    <span style="color: green; text-align: left;">
        {{ ucfirst($request_info->accept_reject_status) }}
    </span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->accept_reject_statuses_table->accept_reject_date ?? '' }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->accept_reject_statuses_table->accept_reject_statuse_user->name ?? '' }}
            </td>
        </tr>
    </table>
@elseif ($request_info->accept_reject_status == 'reject')
    <span style="color: red">
        {{ ucfirst($request_info->accept_reject_status) }}
    </span>

    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->accept_reject_statuses_table->accept_reject_date ?? '' }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->accept_reject_statuses_table->accept_reject_statuse_user->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        Unknown
    </span>
@endif
