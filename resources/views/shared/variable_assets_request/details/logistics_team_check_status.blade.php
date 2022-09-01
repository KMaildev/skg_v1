@if ($request_info->logistics_team_check)
    <span style="color: green;">
        Finished
    </span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->logistics_team_check_date }}
            </td>
            <td style="width: 50%;">
                By :
                {{ $request_info->another_variable_logistics_team_checks_table->users_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        No
    </span>
@endif
