@extends('layouts.menus.activity')
@section('content')
    <div class="row justify-content-center py-5">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Activity Log </h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll" role="region" aria-labelledby="HeadersCol"
                    tabindex="0">
                    <table class="table table-bordered main-table py-5" id="export_excel">
                        <thead class="tbbg">
                            <th style="color: white; text-align: center; width: 1%;">#</th>
                            <th style="color: white; text-align: center;">Description</th>
                            <th style="color: white; text-align: center;">User</th>
                            <th style="color: white; text-align: center;">Action Log</th>
                            <th style="color: white; text-align: center;">Old Value</th>
                            <th style="color: white; text-align: center;">Date</th>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($activities_logs as $key => $activities_log)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>

                                    <td style="font-weight: bold">
                                        {{ Str::upper($activities_log['description']) }}
                                    </td>

                                    <td>
                                        {{ $activities_log['causer']['name'] }}
                                    </td>

                                    <td>
                                        @foreach ($activities_log['properties']['attributes'] as $k => $value)
                                            <span style="font-weight: bold;">
                                                {{ Str::upper(str_replace('_', ' ', $k)) }} :
                                            </span>
                                            {{ $value ?: 'NULL' }},
                                        @endforeach
                                    </td>

                                    <td>
                                        @if ($activities_log['description'] == 'updated')
                                            @foreach ($activities_log['properties']['old'] as $k => $value)
                                                <span style="font-weight: bold;">
                                                    {{ Str::upper(str_replace('_', ' ', $k)) }} :
                                                </span>
                                                {{ $value ?: 'NULL' }},
                                            @endforeach
                                        @endif
                                    </td>

                                    <td>
                                        {{ Carbon\Carbon::parse($activities_log['created_at'])->diffForHumans() }}
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection
