<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0"
    style="background-color: white !important;">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('engineerdashboard.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Dashboard</div>
                </a>
            </li>


            <li class="menu-item">
                <a href="{{ route('sites.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Sites</div>
                </a>
            </li>

            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">Manage Request</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('manage_my_request.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Fixed Assets Request</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('engineer_variable_assets.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Variable Assets Request</div>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item">
                <a href="{{ route('engineer_return.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Engineer Return</div>
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('weekly_photo.index') }}" class="menu-link">
                    <div data-i1n="Layouts">
                        Weekly photo
                    </div>
                </a>
            </li>


        </ul>
    </div>
</aside>
<!-- / Menu -->
