<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0"
    style="background-color: white !important;">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item" hidden>
                <a href="{{ route('projectdashboard.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Dashboard</div>
                </a>
            </li>


            @can('customers_menu')
                <li class="menu-item">
                    <a href="{{ route('customers.index') }}" class="menu-link">
                        <div data-i1n="Layouts">Customers</div>
                    </a>
                </li>
            @endcan

            @can('proposal_menu')
                <li class="menu-item">
                    <a href="{{ route('proposal.index') }}" class="menu-link">
                        <div data-i1n="Layouts">Proposal</div>
                    </a>
                </li>
            @endcan

            <li class="menu-item" hidden>
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">Projects</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('proposal.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Proposal</div>
                        </a>
                    </li>
                    <li class="menu-item" hidden>
                        <a href="{{ route('labour.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Operation </div>
                        </a>
                    </li>
                    <li class="menu-item" hidden>
                        <a href="{{ route('labour.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Completed </div>
                        </a>
                    </li>
                </ul>
            </li>


        </ul>
    </div>
</aside>
<!-- / Menu -->
