@if ($request_info->logistics_team_check_sent_status)
    <span style="color: green;">
        Finished
    </span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->logistics_team_check_sent_date }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->transfer_infos_table->transfer_infos_user->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        No
    </span>
@endif
