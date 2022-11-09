<table>
    <thead class="tbbg">
        <tr>
            <th style="text-align: center; width: 2vh;">#</th>
            <th style="text-align: center; width: 10vh">Name</th>
            <th style="text-align: center; width: 10vh">Site Location</th>
            <th style="text-align: center; width: 10vh">Building Area</th>
            <th style="text-align: center; width: 10vh">Construction Type</th>
            <th style="text-align: center; width: 10vh">Job Scope</th>
            <th style="text-align: center; width: 10vh">Date</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($customers as $key => $customer)
            <tr>
                <td>
                    {{ $key + 1 }}
                </td>
                <td>
                    {{ $customer->name }}
                </td>
                <td>
                    {{ $customer->site_location }}
                </td>
                <td>
                    {{ $customer->building_area }}
                </td>
                <td>
                    {{ $customer->construction_type }}
                </td>
                <td>
                    {{ $customer->job_scope }}
                </td>
                <td>
                    {{ $customer->created_date }}
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
