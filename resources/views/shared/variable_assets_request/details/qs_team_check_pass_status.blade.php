@if ($request_info->qs_team_check_status)
    <span style="color: green">
        Finished
    </span>

    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->qs_team_check_date }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->variable_qs_team_checks_table->users_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        No
    </span>
@endif
