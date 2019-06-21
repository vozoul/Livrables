<nav id="sidebar" class="active">
    <div class="sidebar-header text-center">
        <img src="{{asset('img/logo.png')}}" alt="My project Logo" height="70" width="60" class="m-2 p-2">
        <h3 class="ml-3">My Project</h3>
        <strong>MP</strong>
    </div>
    <div class="text-center">
    {{--<button type="button" id="sidebarCollapse" class="btn btn-warning mx-3 my-2">--}}
        {{--<i class="fas fa-arrow-right"></i>--}}
    {{--</button>--}}
    @include('navs.menu')
    </div>
</nav>

