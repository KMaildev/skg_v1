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
                By : {{ $request_info->qs_team_check_passes_table->qs_team_check_passes_user->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        No
    </span>
@endif
