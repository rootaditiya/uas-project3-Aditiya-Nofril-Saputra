
@extends('admin.Layout.main')
@section('content')

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-12">
				<h1>Add New Product</h1>
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
								<label for="exampleInputEmail1">Title<span style="color: red;">*</span></label>
								<input type="text" class="form-control" required value="{{old('title')}}" name="title" placeholder="Title">
							</div>

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