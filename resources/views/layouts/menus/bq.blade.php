@include('layouts.includes.header')
@include('layouts.share.top')

@include('layouts.share.menulist.bq_menu')

<div class="container-xxl flex-grow-1 container-p-y">
    @include('layouts.includes.alert')
    @yield('content')
</div>

@include('layouts.includes.footer')
