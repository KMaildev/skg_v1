<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('activity.index') }}" class="menu-link">
                    <div data-i1n="Layouts">
                        Login Activity
                    </div>
                </a>
            </li>

            @foreach ($activitieslogs as $activitieslog)
                <li class="menu-item">
                    <a href="{{ route('activity.show', $activitieslog->log_name) }}" class="menu-link">
                        <div data-i1n="Layouts">
                            {{ Str::upper(str_replace('_', ' ', $activitieslog->log_name)) }}
                        </div>
                    </a>
                </li>
            @endforeach


        </ul>
    </div>
</aside>
<!-- / Menu -->
