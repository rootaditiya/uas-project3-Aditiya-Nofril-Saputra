
@extends('admin.Layout.main')
@section('content')

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-12">
				<h1>Add New Color</h1>
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
								<label for="exampleInputEmail1">Color Name <span style="color: red;">*</span></label>
								<input type="text" class="form-control" required value="{{old('name')}}" name="name" placeholder="color name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Color Code <span style="color: red;">*</span></label>
								<input type="color" class="form-control" required value="{{old('code')}}" name="code" placeholder="Color code">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Status <span style="color: red;">*</span></label>
								<select class="form-control" required name="status">
									<option {{ (old('status') == 0) ? 'selected' : '' }} value="0">Active</option>
									<option {{ (old('status') == 1) ? 'selected' : '' }} value="1">Inactive</option>
								</select>
							</div>

							<hr>

							<div class="card-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>

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