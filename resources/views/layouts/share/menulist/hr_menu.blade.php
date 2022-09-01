<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0" style="background-color: white !important;">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('hrdashboard.index') }}" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-layout"></i>
                    <div data-i1n="Layouts">Dashboard</div>
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('employee.index') }}" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-user"></i>
                    <div data-i1n="Layouts">Employees</div>
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('leave.index') }}" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-user"></i>
                    <div data-i1n="Layouts">Leave</div>
                </a>
            </li>


            <li class="menu-item">
                <a href="{{ route('engineer.index') }}" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-user"></i>
                    <div data-i1n="Layouts">Engineers</div>
                </a>
            </li>


            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx bx-cog"></i>
                    <div data-i2n="Layouts">Configuration</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('department.index') }}" class="menu-link">
                            <div data-i2n="Without menu">
                                Department
                            </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('role.index') }}" class="menu-link">
                            <div data-i2n="Without menu">
                                Role
                            </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('permission.index') }}" class="menu-link">
                            <div data-i2n="Without menu">
                                Permission
                            </div>
                        </a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</aside>
<!-- / Menu -->
