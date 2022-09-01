<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0"
    style="background-color: white !important;">
    <div class="container-xxl d-flex h-100">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('inventorydashboard.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Dashboard</div>
                </a>
            </li>

            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">Assets</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('fixedassets.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Fixed Assets</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('variable_assets.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Variable Assets </div>
                        </a>
                    </li>
                </ul>
            </li>



            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">
                        Manage Fixed Assets Request
                        <span class="badge badge_noti_count">
                            {{ $fixed_assets_request_count_total ?? 0 }}
                        </span>
                    </div>
                </a>

                <ul class="menu-sub">

                    <li class="menu-item">
                        <a href="{{ route('managerequest.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Fixed Assets Request</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('fixed_assets_reject_list') }}" class="menu-link">
                            <div data-i2n="Without menu">Rejected Request</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('fixed_assets_completed_list') }}" class="menu-link">
                            <div data-i2n="Without menu">Completed Request</div>
                        </a>
                    </li>
                </ul>
            </li>


            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">
                        Manage Variable Assets Request
                        <span class="badge badge_noti_count">
                            {{ $variable_request_count_total ?? 0 }}
                        </span>
                    </div>
                </a>

                <ul class="menu-sub">

                    <li class="menu-item">
                        <a href="{{ route('variable_request_ssd.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Variable Assets Request SSD</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('variable_assets_request.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Variable Assets Request</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('variable_reject_list') }}" class="menu-link">
                            <div data-i2n="Without menu">Rejected Request</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="{{ route('variable_completed_list') }}" class="menu-link">
                            <div data-i2n="Without menu">Completed Request</div>
                        </a>
                    </li>
                </ul>
            </li>


            <li class="menu-item">
                <a href="{{ route('inventory_engineer_return.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Engineer Return</div>
                </a>
            </li>


            <li class="menu-item">
                <a href="{{ route('manage_warehouse_plan.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Warehouse Plan</div>
                </a>
            </li>

            <li class="menu-item" hidden>
                <a href="{{ route('transferhistory.index') }}" class="menu-link">
                    <div data-i1n="Layouts">
                        Transfer History
                    </div>
                </a>
            </li>

            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">Configuration</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('mainwarehouse.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Main Warehouse</div>
                        </a>
                    </li>
                </ul>
            </li>



            {{-- no using --}}
            <li class="menu-item" hidden>
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <div data-i2n="Layouts">Products</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('material.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Material</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('labour.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Labour </div>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item" hidden>
                <a href="{{ route('unitsofmeasure.index') }}" class="menu-link">
                    <div data-i1n="Layouts">Units of Measure</div>
                </a>
            </li>
            {{-- no using --}}

        </ul>
    </div>
</aside>
<!-- / Menu -->
