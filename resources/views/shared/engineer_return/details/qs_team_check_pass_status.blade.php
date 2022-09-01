@if ($engineer_return_infos->qs_team_check_pass_status)
    <span style="color: green">Finished</span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $engineer_return_infos->qs_team_check_pass_date }}
            </td>
            <td style="width: 50%;">
                By :
                {{ $engineer_return_infos->return_qs_team_check_passes_table->return_qs_team_check_passes->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red">No</span>
@endif
