@extends('layouts.menus.hr')
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Engineers</h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Engineer</th>
                                <th style="color: white; text-align: center;">Project Info</th>
                                <th style="color: white; text-align: center;">Add Date</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($projects_users as $key => $projects_user)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>

                                    <td>
                                        {{ $projects_user->users_table->name ?? '' }}
                                    </td>

                                    <td>
                                        {{ $projects_user->projects_table->customer_table->project_code ?? '' }}
                                        @
                                        {{ $projects_user->projects_table->customer_table->name ?? '' }}
                                    </td>

                                    <td style="text-align: center">
                                        {{ $projects_user->created_at->diffForHumans() }}
                                    </td>

                                    <td style="text-align: center">
                                        <div class="btn-group">
                                            <button class="btn btn-success btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('engineer.edit', $projects_user->id) }}">
                                                        Edit
                                                    </a>
                                                </li>

                                                <li>
                                                    <form action="{{ route('engineer.destroy', $projects_user->id) }}"
                                                        method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="button" class="dropdown-item del_confirm"
                                                            id="confirm-text" data-toggle="tooltip">Delete</button>
                                                    </form>
                                                </li>
                                            </ul>
                                        </div>
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
