@if ($request_info->management_accept_reject_status)
    <span style="color: green;">
        Finished
    </span>
    <table class="second_table" style="width: 100%">
        <tr>
            <td style="width: 50%;">
                Date : {{ $request_info->management_accept_reject_date }}
            </td>
            <td style="width: 50%;">
                By :
            </td>
        </tr>
    </table>
@else
    <span style="color: red;">
        No
    </span>
@endif
