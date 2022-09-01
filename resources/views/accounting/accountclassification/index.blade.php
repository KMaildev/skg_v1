@extends('layouts.menus.accounting')
@section('content')

    <div class="row justify-content-center">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">Account Classification</h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <input type="text" class="form-control form-control-sm" placeholder="Search" />
                            </div>

                            @include('layouts.includes.export')

                            <a href="{{ route('accountclassification.create') }}"
                                class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered table-sm">
                        <thead class="tbbg">
                            <tr>
                                <th style="color: white; text-align: center; width: 1%;">#</th>
                                <th style="color: white; text-align: center;">Account Name</th>
                                <th style="color: white; text-align: center;">Account Code</th>
                                <th style="color: white; text-align: center;">Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($account_classifications as $account_classification)
                                <tr>
                                    <td style="text-align: center;">
                                        {{ ++$i }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $account_classification->name }}
                                    </td>
                                    <td style="text-align: center;">
                                        {{ $account_classification->ac_code }}
                                    </td>
                                    <td style="text-align: center;">
                                        <div class="btn-group">
                                            <button class="btn btn-info btn-xs dropdown-toggle" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Action
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a class="dropdown-item"
                                                        href="{{ route('accountclassification.edit', $account_classification->id) }}">Edit</a>
                                                </li>
                                                <li>
                                                    <form
                                                        action="{{ route('accountclassification.destroy', $account_classification->id) }}"
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

                        <caption class="ms-1">
                            {!! $account_classifications->links() !!}
                        </caption>
                    </table>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('script')

@endsection
