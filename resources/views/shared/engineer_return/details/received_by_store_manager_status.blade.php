@if ($engineer_return_infos->received_store_manager_status)
    <span style="color: green">Received</span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $engineer_return_infos->received_store_manager_date }}
            </td>
            <td style="width: 50%;">
                By :
                {{ $engineer_return_infos->received_by_store_managers_table->users_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red">No</span>
@endif
