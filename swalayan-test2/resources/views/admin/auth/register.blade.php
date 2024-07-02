@extends('Layout.LoginReg')
@section('title', 'Register')
@section('content')

<div class="login-box">
	<!-- /.login-logo -->
	<div class="card card-outline card-primary">
		<div class="card-header text-center">
			<a href="{{route('v2.dashboard')}}" class="h1"><b>Admin</b>LTE</a>
		</div>
		<div class="card-body">
			<p class="login-box-msg">Sign up</p>

			<form action="{{route('register-proses')}}" method="post">
				@csrf

				@error('name')
				<small>{{$message}}</small>
				@enderror
				<div class="input-group mb-3">
					<input type="text" name="name" class="form-control" placeholder="Nama Lengkap" value="{{old('name')}}">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-user"></span>
						</div>
					</div>
				</div>

				@error('email')
				<small>{{$message}}</small>
				@enderror
				<div class="input-group mb-3">
					<input type="email" name="email" class="form-control" placeholder="Email" value="{{old('email')}}">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
				</div>

				@error('password')
				<small>{{$message}}</small>
				@enderror
				<div class="input-group mb-3">
					<input type="password" name="password" class="form-control" placeholder="Password">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>

				<div class="row">
					<!-- /.col -->
					<div class="col-12">
						<button type="submit" class="btn btn-primary btn-block">Sign Up</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<p class="mb-0">
				<a href="{{route('login')}}" class="text-center">Already have an Account?</a>
			</p>
		</div>
		<!-- /.card-body -->
	</div>
	<!-- /.card -->
</div>

@if($message = Session::get('failed'))
<script type="text/javascript">
	Swal.fire('{{$message}}');
</script>
@endif

@if($message = Session::get('success'))
<script type="text/javascript">
	Swal.fire('{{$message}}');
</script>
@endif

@endsection