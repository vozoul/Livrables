<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="navbar-header viewable">
        <img src="{{asset('img/logo.png')}}" alt="My project Logo" class="position-absolute" height="40" width="40" class="m-2 p-2">
        <h3 class="d-inline ml-5 pl-2">My Project</h3>
    </div>
    {{--<a class="navbar-brand" href="#">Navbar</a>--}}
    {{--<button class="navbar-toggler" id="sidebarCollapse" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--}}
    <button class="navbar-toggler ml-auto" id="sidebarCollapse" type="button" data-toggle="collapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    @include('navs.menu')
    </div>
</nav>