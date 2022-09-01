@extends('layouts.menus.activity')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Login</h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Name</th>
                                <th style="color: white; text-align: center;">Email</th>
                                <th style="color: white; text-align: center;">Last Login At</th>
                                <th style="color: white; text-align: center;">Last Login IP</th>
                                <th style="color: white; text-align: center;">Agent</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($employees as $key => $value)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ $key + 1 }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->name }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->email }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->last_login_at }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->last_login_ip }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $value->agent }}
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
