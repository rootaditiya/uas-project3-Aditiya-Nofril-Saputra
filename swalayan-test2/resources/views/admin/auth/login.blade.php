@extends('admin.auth.LoginReg')
@section('content')

<div class="login-box">
	<!-- /.login-logo -->
	<div class="card card-outline card-primary">
		<div class="card-header text-center">
			<a href="" class="h1"><b>rpl-</b>Mart</a>
		</div>
		<div class="card-body">
			<p class="login-box-msg">Sign in to start your session</p>

			@include('admin.layout._message')

			<form action="" method="post">
				@csrf

				@error('email')
				<small>{{$message}}</small>
				@enderror
				<div class="input-group mb-3">
					<input type="email" name="email" required value="{{old('email')}}" class="form-control" placeholder="Email">
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
					<input type="password" name="password" required class="form-control" placeholder="Password" >
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-8">
						<div class="icheck-primary">
							<input type="checkbox" id="remember" name="remember">
							<label for="remember">
								Remember Me
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-4">
						<button type="submit" class="btn btn-primary btn-block">Sign In</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<p class="mb-1">
				<a href="">I forgot my password</a>
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