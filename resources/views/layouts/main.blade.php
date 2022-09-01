@include('layouts.includes.header')
@include('layouts.share.top')

<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
    @yield('content')
</div>
<!--/ Content -->

@include('layouts.includes.footer')