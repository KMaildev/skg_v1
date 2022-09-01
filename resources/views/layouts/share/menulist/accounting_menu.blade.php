<!-- Menu -->
<aside id="layout-menu" class="layout-menu-horizontal menu-horizontal  menu bg-menu-theme flex-grow-0">
    <div class="container-xxl d-flex h-100" style="background-color: white !important;">
        <ul class="menu-inner">

            <li class="menu-item">
                <a href="{{ route('accountingdashboard.index') }}" class="menu-link">
                    <i class="menu-icon tf-icons bx bx-layout"></i>
                    <div data-i1n="Layouts">Dashboard</div>
                </a>
            </li>

            <li class="menu-item" hidden>
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx bx-user"></i>
                    <div data-i2n="Layouts">Customers</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">
                                Invoices </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Customers </div>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item">
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx bx-user-check"></i>
                    <div data-i2n="Layouts">Purchase</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">
                                Bill
                            </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">
                                Suppliers
                            </div>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item" hidden>
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx bx-calculator"></i>
                    <div data-i2n="Layouts">Accounting</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Cash Book </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Journal Entries </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Fixed Assets </div>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item" hidden>
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx bx-bar-chart-alt"></i>
                    <div data-i2n="Layouts">Reporting</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Profit and Loss</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Balance Sheet</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Aged Receivable</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">Aged Payable</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">
                                General Ledger</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">
                                Trial Balance</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="#" class="menu-link">
                            <div data-i2n="Without menu">
                                Bank & Cash</div>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="menu-item" hidden>
                <a href="javascript:void(0)" class="menu-link menu-toggle">
                    <i class="menu-icon tf-icons bx bx-layout"></i>
                    <div data-i2n="Layouts">Chart of accounts</div>
                </a>

                <ul class="menu-sub">
                    <li class="menu-item">
                        <a href="{{ route('accountclassification.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Account Classification </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('accounttype.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Account Type </div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="{{ route('chartofaccount.index') }}" class="menu-link">
                            <div data-i2n="Without menu">Chart of accounts </div>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</aside>
<!-- / Menu -->
