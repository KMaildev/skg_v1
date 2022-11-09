<table class="table table-bordered table-sm">
    <thead class="tbbg">
        <tr>
            <th style="width: 1vh">#</th>
            <th style="width: 5vh">Employee ID</th>
            <th style="width: 5vh">Name</th>
            <th style="width: 5vh">Email</th>
            <th style="width: 5vh">Phone</th>
            <th style="width: 5vh">Department</th>
            <th style="width: 5vh">Role</th>
            <th style="width: 5vh">nrc_number</th>
            <th style="width: 5vh">gender</th>
            <th style="width: 5vh">address</th>
            <th style="width: 5vh">contact_person</th>
            <th style="width: 5vh">emergency_contact</th>
            <th style="width: 5vh">join_date</th>
            <th style="width: 5vh">employment_type</th>
            <th style="width: 5vh">last_login_at</th>
            <th style="width: 5vh">last_login_ip</th>
            <th style="width: 5vh">Device</th>
        </tr>
    </thead>
    <tbody class="table-border-bottom-0">
        @foreach ($employees as $key => $value)
            <tr>
                <td>
                    {{ $key + 1 }}
                </td>
                <td>
                    {{ $value->employee_id }}
                </td>
                <td>
                    {{ $value->name }}
                </td>
                <td>
                    {{ $value->email }}
                </td>
                <td>
                    {{ $value->phone }}
                </td>
                <td>
                    {{ $value->department->title ?? '' }}
                </td>
                <td>
                    @foreach ($value->roles as $role)
                        {{ $role->name }}
                    @endforeach
                </td>

                <td>
                    {{ $value->nrc_number ?? '' }}
                </td>

                <td>
                    {{ $value->gender ?? '' }}
                </td>

                <td>
                    {{ $value->address ?? '' }}
                </td>

                <td>
                    {{ $value->contact_person ?? '' }}
                </td>

                <td>
                    {{ $value->emergency_contact ?? '' }}
                </td>

                <td>
                    {{ $value->join_date ?? '' }}
                </td>

                <td>
                    {{ $value->employment_type ?? '' }}
                    
                </td>

                <td>
                    {{ $value->last_login_at ?? '' }}
                </td>

                <td>
                    {{ $value->last_login_ip ?? '' }}
                </td>

                <td>
                    {{ $value->agent ?? '' }}
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
