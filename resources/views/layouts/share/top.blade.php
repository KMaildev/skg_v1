 <!-- Top -->
 <nav class="layout-navbar navbar navbar-expand-xl align-items-center bg-navbar-theme" id="layout-navbar">
     <div class="container-xxl navbar-nav-right" style="background-color: #296166">

         <div class="navbar-brand app-brand demo d-none d-xl-flex py-0 me-4">
             <a href="{{ route('home') }}" class="app-brand-link gap-2">
                 <span class="app-brand-text demo menu-text fw-bold" style="color: gray;">SK GROUP</span>
             </a>
             <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
                 <i class="bx bx-x bx-sm align-middle"></i>
             </a>
         </div>

         <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0  d-xl-none  ">
             <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                 <i class="bx bx-menu bx-sm" style="color: white"></i>
             </a>
         </div>

         <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
             <ul class="navbar-nav flex-row align-items-center ms-auto">

                 <!-- Notification -->
                 <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-2">
                     <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown"
                         data-bs-auto-close="outside" aria-expanded="false">
                         <i class="bx bx-bell bx-sm"></i>
                         <span class="badge bg-danger rounded-pill badge-notifications">
                             {{ $fixed_assets_request_count_total + $variable_request_count_total ?? 0 }}
                         </span>
                     </a>
                     <ul class="dropdown-menu dropdown-menu-end py-0">
                         <li class="dropdown-menu-header border-bottom">
                             <div class="dropdown-header d-flex align-items-center py-3">
                                 <h5 class="text-body mb-0 me-auto">Request</h5>
                                 <a href="javascript:void(0)" class="dropdown-notifications-all text-body"
                                     data-bs-toggle="tooltip" data-bs-placement="top" title="Mark all as read"><i
                                         class="bx fs-4 bx-envelope-open"></i></a>
                             </div>
                         </li>

                         <li class="dropdown-notifications-list scrollable-container">
                             <ul class="list-group list-group-flush">
                                 <a href="{{ route('managerequest.index') }}" class="dropdown-notifications-read">
                                     <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                         <div class="d-flex">
                                             <div class="flex-grow-1">
                                                 <h6 class="mb-1">
                                                     Fixed Assets Request
                                                 </h6>
                                             </div>
                                             <div class="flex-shrink-0 dropdown-notifications-actions">
                                                 <span class="badge badge_noti_count_second">
                                                     {{ $fixed_assets_request_count_total ?? 0 }}
                                                 </span>
                                             </div>
                                         </div>
                                     </li>
                                 </a>
                             </ul>
                         </li>


                         <li class="dropdown-notifications-list scrollable-container">
                             <ul class="list-group list-group-flush">
                                 <a href="{{ route('variable_assets_request.index') }}"
                                     class="dropdown-notifications-read">
                                     <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                         <div class="d-flex">
                                             <div class="flex-grow-1">
                                                 <h6 class="mb-1">
                                                     Variable Assets Request
                                                 </h6>
                                             </div>
                                             <div class="flex-shrink-0 dropdown-notifications-actions">
                                                 <span class="badge badge_noti_count_second">
                                                     {{ $variable_request_count_total ?? 0 }}
                                                 </span>
                                             </div>
                                         </div>
                                     </li>
                                 </a>
                             </ul>
                         </li>

                     </ul>
                 </li>
                 <!--/ Notification -->


                 <!-- User -->
                 <li class="nav-item navbar-dropdown dropdown-user dropdown">
                     <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                         data-bs-toggle="dropdown">
                         <div class="avatar avatar-online">
                             <img src="{{ asset('assets/data/profile.png') }}" alt class="rounded-circle">
                         </div>
                     </a>
                     <ul class="dropdown-menu dropdown-menu-end">
                         <li>
                             <a class="dropdown-item" href="#">
                                 <div class="d-flex">
                                     <div class="flex-shrink-0 me-3">
                                         <div class="avatar avatar-online">
                                             <img src="{{ asset('assets/data/profile.png') }}" alt
                                                 class="rounded-circle">
                                         </div>
                                     </div>
                                     <div class="flex-grow-1">
                                         <span class="fw-semibold d-block lh-1">SK GROUP</span>
                                         <small>Admin</small>
                                     </div>
                                 </div>
                             </a>
                         </li>
                         <li>
                             <div class="dropdown-divider"></div>
                         </li>
                         <li>
                             <a class="dropdown-item" href="{{ route('profile.index') }}">
                                 <i class="bx bx-user me-2"></i>
                                 <span class="align-middle">My Profile</span>
                             </a>
                         </li>
                         <li>
                             <div class="dropdown-divider"></div>
                         </li>
                         <li>
                             <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                 <i class="bx bx-power-off me-2"></i>
                                 {{ __('Logout') }}
                             </a>

                             <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                 class="d-none">
                                 @csrf
                             </form>
                         </li>
                     </ul>
                 </li>
                 <!--/ User -->
             </ul>
         </div>

     </div>
 </nav>
 <!-- TOp -->
