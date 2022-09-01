<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('activity.index') }}" class="menu-link">
                    <div data-i1n="Layouts">
                        Login
                    </div>
                </a>
            </li>

            <li class="menu-item">
                <a href="{{ route('activity.show', 'customers_log') }}" class="menu-link">
                    <div data-i1n="Layouts">
                        {{ Str::upper(str_replace('_', ' ', 'customers_log')) }}
                    </div>
                </a>
            </li>
        </ul>
    </div>
</aside>
<!-- / Menu -->
