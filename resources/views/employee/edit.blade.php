@extends('layouts.menus.hr')
@section('content')
    <div class="row justify-content-center">
        <div class="col-xl-12">
            <div class="row">
                <div class="col-md-6">
                    <div class="card mb-4">
                        <h5 class="card-header">Employee</h5>
                        <div class="card-body">

                            <form action="{{ route('employee.update', $employee->id) }}" method="POST" autocomplete="off"
                                id="edit-form" role="form" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Employee ID</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('employee_id') is-invalid @enderror"
                                            type="text" name="employee_id" value="{{ $employee->employee_id }}" />
                                        @error('employee_id')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Name</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('name') is-invalid @enderror" type="text"
                                            name="name" value="{{ $employee->name }}" />
                                        @error('name')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Email</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('email') is-invalid @enderror" type="email"
                                            name="email" value="{{ $employee->email }}" />
                                        @error('email')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Phone</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('phone') is-invalid @enderror" type="text"
                                            name="phone" value="{{ $employee->phone }}" />
                                        @error('phone')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>


                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Passport Photo</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('passport_photo') is-invalid @enderror"
                                            type="file" name="passport_photo" value="{{ old('passport_photo') }}" />
                                        @error('passport_photo')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror

                                        <div class="preview_img my-2">
                                            @if ($employee->passport_photo)
                                                <img src="{{ Storage::url($employee->passport_photo) }}" alt=""
                                                    style="width: 40%; height: 200px; background-position: center; background-size: contain, cover;">
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">NRC Number</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('nrc_number') is-invalid @enderror" type="text"
                                            name="nrc_number" value="{{ $employee->nrc_number }}" />
                                        @error('nrc_number')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">
                                        NRC Front Photo
                                    </label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('nrc_front') is-invalid @enderror" type="file"
                                            name="nrc_front" value="{{ old('nrc_front') }}" />
                                        @error('nrc_front')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror

                                        <div class="preview_img my-2">
                                            @if ($employee->nrc_front)
                                                <img src="{{ Storage::url($employee->nrc_front) }}" alt=""
                                                    style="width: 50%; height: auto; background-position: center; background-size: contain, cover;">
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">
                                        NRC Back Photo
                                    </label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('nrc_back') is-invalid @enderror" type="file"
                                            name="nrc_back" value="{{ old('nrc_back') }}" />
                                        @error('nrc_back')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror

                                        <div class="preview_img my-2">
                                            @if ($employee->nrc_front)
                                                <img src="{{ Storage::url($employee->nrc_back) }}" alt=""
                                                    style="width: 50%; height: auto; background-position: center; background-size: contain;">
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Gender</label>
                                    <div class="col-md-9">
                                        <select name="gender" class="form-control">
                                            <option value="male" @if ($employee->gender == 'male') selected @endif>Male
                                            </option>
                                            <option value="female" @if ($employee->gender == 'female') selected @endif>Female
                                            </option>
                                        </select>
                                        @error('gender')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Address</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('address') is-invalid @enderror" type="text"
                                            name="address" value="{{ $employee->address }}" />
                                        @error('address')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Department</label>
                                    <div class="col-md-9">
                                        <select name="department_id" class="form-control">
                                            @foreach ($departments as $department)
                                                <option value="{{ $department->id }}"
                                                    @if ($employee->department_id == $department->id) selected @endif>
                                                    {{ $department->title }}
                                                </option>
                                            @endforeach
                                        </select>
                                        @error('department_id')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="select2Multiple" class="col-md-3 form-label">Role (or) Designation</label>
                                    <div class="col-md-9">
                                        <select id="select2Multiple" class="select2 form-select" multiple name="roles[]">
                                            @foreach ($roles as $role)
                                                <option value="{{ $role->name }}"
                                                    @if (in_array($role->id, $old_roles)) selected @endif>
                                                    {{ $role->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Password</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('password') is-invalid @enderror"
                                            type="password" name="password" value="{{ old('password') }}" />
                                        @error('password')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>



                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Employment Type</label>
                                    <div class="col-md-9">
                                        <select name="employment_type" class="form-control">
                                            <option value="Probation" @if ($employee->employment_type == 'Probation') selected @endif>
                                                Probation
                                            </option>
                                            <option value="Contract" @if ($employee->employment_type == 'Contract') selected @endif>
                                                Contract
                                            </option>
                                        </select>
                                        @error('employment_type')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>


                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Join Date</label>
                                    <div class="col-md-9">
                                        <input class="form-control date_picker @error('join_date') is-invalid @enderror"
                                            type="text" name="join_date" value="{{ $employee->join_date }}" />
                                        @error('join_date')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>


                                <h6 class="mb-b fw-normal">2. Emergency Contact</h6>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Contact Person</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('contact_person') is-invalid @enderror"
                                            type="text" name="contact_person"
                                            value="{{ $employee->contact_person }}" />
                                        @error('contact_person')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-text-input" class="col-md-3 col-form-label">Contact Number</label>
                                    <div class="col-md-9">
                                        <input class="form-control @error('emergency_contact') is-invalid @enderror"
                                            type="text" name="emergency_contact"
                                            value="{{ $employee->emergency_contact }}" />
                                        @error('emergency_contact')
                                            <div class="invalid-feedback"> {{ $message }} </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="mb-3 row">
                                    <label for="html5-search-input" class="col-md-3 col-form-label"></label>
                                    <div class="col-md-9">
                                        <button type="submit" class="btn btn-secondary">Save</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <h5 class="card-header">Household Members List</h5>
                        <div class="mb-3" style="margin: 20px;">
                            <form action="{{ route('members_lists.store') }}" method="POST" autocomplete="off"
                                id="create-form" role="form" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="user_id" value="{{ $employee->id }}" required>
                                <div class="input-group">
                                    <input class="form-control @error('members_list_file') is-invalid @enderror"
                                        type="file" name="members_list_file[]" multiple
                                        value="{{ old('members_list_file') }}" required />
                                    @error('members_list_file')
                                        <div class="invalid-feedback"> {{ $message }} </div>
                                    @enderror
                                    <button class="btn btn-outline-primary" type="submit"
                                        id="inputGroupFileAddon04">Upload</button>
                                </div>
                            </form>
                        </div>

                        <div class="table-responsive text-nowrap">
                            <table class="table table-bordered">
                                <thead class="tbbg">
                                    <tr>
                                        <th style="color: white">#</th>
                                        <th style="color: white">File Name</th>
                                        <th style="color: white">Photo</th>
                                        <th style="color: white">Download</th>
                                        <th style="color: white">Upload Date</th>
                                        <th style="color: white">Upload By</th>
                                        <th style="color: white">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">
                                    @foreach ($members_lists as $key => $value)
                                        <tr>
                                            <td>
                                                {{ $key + 1 }}
                                            </td>

                                            <td>
                                                <strong>{{ $value->original_name }}</strong>
                                            </td>

                                            <td>
                                                <img src="{{ Storage::url($value->members_list_file) }}" alt=""
                                                    style="width: 100%; height: 70px; background-position: center; background-size: contain, cover;"
                                                    data-enlargeable="">
                                            </td>

                                            <td>
                                                <a href="{{ Storage::url($value->members_list_file) }}" download>
                                                    <i class="fa fa-download fa-lg text-danger"></i>
                                                    <strong>Download</strong>
                                                </a>
                                            </td>

                                            <td>
                                                <i class="fa fa-calendar fa-lg text-success"></i>
                                                <strong>{{ $value->created_at }}</strong>
                                            </td>
                                            <td>
                                                <i class="fa fa-user fa-lg text-success"></i>
                                                <strong>{{ $value->users_table->name ?? '' }}</strong>
                                            </td>

                                            <td>
                                                <form action="{{ route('members_lists.destroy', $value->id) }}"
                                                    method="POST">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="button" class="btn btn-danger btn-sm del_confirm"
                                                        id="confirm-text" data-toggle="tooltip">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\UpdateEmployee', '#edit-form') !!}
@endsection
