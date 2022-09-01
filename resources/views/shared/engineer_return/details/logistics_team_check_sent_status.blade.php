@if ($engineer_return_infos->logistics_team_check_sent_status)
    <span style="color: green;">Finished</span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $engineer_return_infos->logistics_team_check_sent_date }}
            </td>
            <td style="width: 50%;">
                By :
                {{ $engineer_return_infos->return_transfer_infos_another_table->users_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red">No</span>
@endif
