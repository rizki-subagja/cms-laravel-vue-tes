@extends('layouts.app')

@section('content')
<div class="card">
    <div class="card-body register-card-body">
        <p class="login-box-msg"><b> {{ __('DAFTAR BARU') }} </b></p>
        <form action="{{ route('register') }}" method="post">
            @csrf 

            <div class="input-group mb-3">
                <input id="name" type="text" 
                    class="form-control @error('name') is-invalid @enderror" 
                    name="name" value="{{ old('name') }}" 
                    required autocomplete="name" placeholder="Nama" autofocus
                    oninvalid="this.setCustomValidity('Masukan Nama Anda')" oninput="setCustomValidity('')">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-user"></span>
                    </div>
                </div>
                @error('name')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

            <div class="input-group mb-3">
                <input id="email" type="email" 
                    class="form-control @error('email') is-invalid @enderror" 
                    name="email" value="{{ old('email') }}" 
                    required autocomplete="email" placeholder="E-Mail">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-envelope"></span>
                    </div>
                </div>
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

            <div class="input-group mb-3">
                <input id="password" type="password" 
                    class="form-control @error('password') is-invalid @enderror" 
                    name="password" required autocomplete="new-password" placeholder="Password"
                    oninvalid="this.setCustomValidity('Masukan Password untuk Akun Anda')" oninput="setCustomValidity('')">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                    </div>
                </div>
                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

            <div class="input-group mb-3">
                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Masukan Ulang Password">
                <div class="input-group-append">
                    <div class="input-group-text">
                        <span class="fas fa-lock"></span>
                    </div>
                </div>
            </div>

            <!-- /.col -->
            <div class="col-4">
                <button type="submit" class="btn btn-primary btn-block"> {{ __('Daftar') }} </button>
            </div>
            <!-- /.col -->
        </form>
        <br>
        Sudah punya akun? <a href="{{ route('login') }}" class="text-center"> {{ __('Login') }} </a>
    </div>
</div>
@endsection
