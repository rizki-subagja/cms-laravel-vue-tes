<!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Rizki Subagja">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <script src="{{ asset('js/app.js') }}" defer></script>
        <title> CMS Rizki Subagja</title>
        <link rel="stylesheet" href="{{ asset('/css/app.css') }}">
        <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
        <style> 
        body {
          padding-top: 54px;
        }
        @media (min-width: 992px) {
          body {
              padding-top: 56px;
          }
        }
        </style>
      </head>
      <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
          <div class="container">
            <a class="navbar-brand" href="/"> CMS Rizki Sbj</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                 @if (Route::has('login'))
                    @auth
                    <li class="nav-item">
                         <a class="nav-link" href="{{ url('/home') }}">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{{ route('logout') }}"
                                           onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">
                        Log out
                      </a>
                      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                      </form>
                     </li>
                     @else
                     <li class="nav-item">
                         <a class="nav-link" href="{{ route('login') }}"> Login </a>
                    </li>
                     <li class="nav-item">
                         <a class="nav-link" href="{{ route('register') }}"> Daftar </a>
                     </li>
                     @endauth
                 @endif
              </ul>
            </div>
          </div>
        </nav>

        <div id="app">
            @yield('content')
        </div>

        <footer class="py-5 bg-dark">
          <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; CMS Rizki Subagja</p>
          </div>
        </footer>
      </body>
    </html>