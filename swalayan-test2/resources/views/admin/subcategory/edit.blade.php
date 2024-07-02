
@extends('admin.Layout.main')
@section('content')

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-12">
				<h1>Edit Sub Category</h1>
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
								<label for="exampleInputEmail1">Category Name <span style="color: red;">*</span></label>
								<select class="form-control" name="category_id">
									<option value="">Select</option>
									@foreach($getCategory as $value)
										<option {{($value->id == $getRecord->category_id)? 'selected':''}} value="{{$value->id}}">{{$value->name}}</option>
									@endforeach

								</select>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Sub Category Name <span style="color: red;">*</span></label>
								<input type="text" class="form-control" required value="{{old('name', $getRecord->name)}}" name="name" placeholder="Category name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Slug <span style="color: red;">*</span></label>
								<input type="text" class="form-control" required value="{{old('slug',  $getRecord->slug)}}" name="slug" placeholder="Slug Ex. URL">
								<div style="color: red;">
									{{$errors->first('slug')}}
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Status <span style="color: red;">*</span></label>
								<select class="form-control" required name="status">
									<option {{ (old('status',  $getRecord->status) == 0) ? 'selected' : '' }} value="0">Active</option>
									<option {{ (old('status',  $getRecord->status) == 1) ? 'selected' : '' }} value="1">Inactive</option>
								</select>
							</div>

							<hr>

							<div class="form-group">
								<label for="exampleInputEmail1">Meta Title <span style="color: red;">*</span></label>
								<input type="text" class="form-control" required value="{{old('meta_title',  $getRecord->meta_title)}}" name="meta_title" placeholder="Meta Title">
							</div>

							<div class="form-group">
								<label>Meta Description</label>
								<textarea class="form-control" placeholder="Meta Description" name="meta_description">{{ trim(old('meta_description', $getRecord->meta_description)) }}</textarea>

							</div>

							<div class="form-group">
								<label>Meta Keywords</label>
								<input type="text" class="form-control" value="{{old('meta_keywords', $getRecord->meta_keywords)}}" name="meta_keywords" placeholder="Category name">
							</div>


							<div class="card-footer">
								<button type="submit" class="btn btn-primary">Update</button>
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