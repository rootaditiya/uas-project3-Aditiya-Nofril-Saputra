
@extends('admin.Layout.main')
@section('content')

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-12">
				<h1>Add New Admin</h1>
			</div>
		</div>
	</div><!-- /.container-fluid -->
</section>

<section class="content">
	<div class="container-fluid">
		<div class="row">

			<div class="col-md-12">

				<!-- general form elements -->
				<div class="card card-primary">
					<!-- form start -->
					<form action="" method="post">
						@csrf
						<div class="card-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label>
								<input type="text" class="form-control" required value="{{old('name')}}" name="name" placeholder="Enter name">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label>
								<input type="email" class="form-control" required value="{{old('email')}}" name="email" placeholder="Enter email">
								<div style="color: red;">
									{{$errors->first('email')}}
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label>
								<input type="password" class="form-control" required name="password" placeholder="Password">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Status</label>
								<select class="form-control" required name="status">
									<option {{ (old('status') == 0) ? 'selected' : '' }} value="0">Active</option>
									<option {{ (old('status') == 1) ? 'selected' : '' }} value="1">Inactive</option>
								</select>
							</div>
						</div>

						<div class="card-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
				<!-- /.card -->

				

			</div>
			<!-- /.col -->
		</div>

	</div>
</section>

@endsection