<header class="container-fluid">
    <nav class="bg-cherii navigation-mobile fixed-top">
        <div class="float-right position-relative mt-5">
            <i class="pe-7s-shopbag"></i>
        </div>
        <div class="d-flex justify-content-center pt-4">
            <a href=""><img  src="{{asset('images/logo-Verticale.png')}}" width="60px" alt=""></a>
        </div>

        <div id="menuToggle">

            <input type="checkbox"/>

            <span></span>
            <span></span>
            <span></span>


            <div id="menu">
                <div class="flex-column-center menu-mobile">
                    <a class="pt-4" href=""><img src="{{asset('images/logo-Verticale.png')}}" width="60px" alt=""></a>

                    <ul class="nav navbar-right iconsize">
                        <li><i class="pe-7s-search"></i></li>
                        <li><i class="pe-7s-user"></i></li>
                        <li><i class="pe-7s-like"></i></li>
                        <li><i class="pe-7s-shopbag"></i></li>
                    </ul>
                    <ul class="list-unstyled my-5 ali">
                        <li class="border-bottom pb-2 mt-2"><a href="#">Home</a></li>
                        <li class="border-bottom pb-2 pt-2"><a href="#">Vêtements</a></li>
                        <li class="border-bottom pb-2 pt-2"><a href="#">Sous-vêtements</a></li>
                        <li class="border-bottom pb-2 pt-2"><a href="#">Accessoires</a></li>
                        <li class="border-bottom pb-2 pt-2"><a href="#">Goodies</a></li>
                        <li class="border-bottom pb-2 pt-2"><a href="#">Bundle</a></li>

                    </ul>
                    <i class="fa fa-facebook"></i>

                </div>
            </div>
        </div>
    </nav>
    <div class="wrapper">

        <nav id="navigation" class="container-fluid fixNavigation">
            <div class="container-fluid">
                <div class="bg-cherii navbar navbar-expand">

                <a href=""><img src="{{asset('images/logo-Horizontal.png')}}" width="100px" alt=""></a>

                {{--<div class="navbar-expand">--}}
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Vêtements</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Sous-vêtements</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Accessoires</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Goodies</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Bundle</a></li>
                    </ul>
                {{--</div>--}}
                <ul class="nav  navbar-right iconsize">
                    <li><i class="pe-7s-search pe-3x pe-va"></i></li>
                    <li><i class="pe-7s-user"></i></li>
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}<i class="pe-7s-user"></i></a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                    <li><i class="pe-7s-like"></i></li>
                    <li><i class="pe-7s-shopbag"></i></li>
                </ul>
            </div>
            </div>

        </nav>
</header>
