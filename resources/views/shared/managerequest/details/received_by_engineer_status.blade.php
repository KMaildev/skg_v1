@if ($request_info->received_by_engineer_status)
    <span style="color: green">
        Received
    </span>

    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->received_date }}
            </td>
            <td style="width: 50%;">
                By : {{ $request_info->user_table->name ?? '' }}
            </td>
        </tr>
    </table>
@else
    <span style="color: red">
        No
    </span>
@endif
