
@extends('admin.Layout.main')
@section('content')

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-12">
				<h1>Edit Product</h1>
			</div>
		</div>
	</div><!-- /.container-fluid -->
</section>

<section class="content">
	<div class="container-fluid">
		<div class="row">

			<div class="col-md-12">

				@include('admin.layout._message')

				<!-- general form elements -->
				<div class="card card-primary">
					<!-- form start -->
					<form action="" method="post" enctype="multipart/form-data">
						@csrf
						<div class="card-body">

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">Title<span style="color: red;">*</span></label>
										<input type="text" class="form-control" required value="{{old('title', $product->title)}}" name="title" placeholder="Title">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">SKU<span style="color: red;">*</span></label>
										<input type="text" class="form-control" required value="{{old('sku', $product->sku)}}" name="sku" placeholder="SKU">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">Category<span style="color: red;">*</span></label>
										<select class="form-control" id="ChangeCategory" name="category_id" required>
											<option value="">Select</option>
											@foreach($getCategory as $category)
											<option {{ ($product->category_id == $category->id) ? 'selected' : ''}} value="{{ $category->id }}">{{$category->name}}</option>

											@endforeach
										</select>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">Sub Category<span style="color: red;">*</span></label>
										<select class="form-control" id="getSubCategory" name="sub_category_id" required> 
											<option value="">Select</option>
											
											@foreach($get_sub_category as $subcategory)
											<option {{ ($product->sub_category_id == $subcategory->id) ? 'selected' : ''}} value="{{ $subcategory->id }}">{{$subcategory->name}}</option>
											@endforeach

										</select>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">Brand<span style="color: red;">*</span></label>
										<select class="form-control" name="brand_id">
											<option value="">Select</option>
											@foreach($getBrand as $brand)
											<option {{ ($product->brand_id == $brand->id) ? 'selected' : ''}} value="{{$brand->id}}">{{$brand->name}}</option>
											@endforeach
										</select>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Color<span style="color: red;">*</span></label>
										<div>

											@foreach($getColor as $color)
											@php
											$checked = '';
											@endphp
											@foreach($product->getColor as $pcolor)
											@if($pcolor->color_id == $color->id)
											@php
											$checked = 'checked';
											@endphp
											@endif
											@endforeach
											<label><input {{$checked}} type="checkbox" name="color_id[]" value="{{$color->id}}">{{$color->name}}</label>
											@endforeach
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">Price (Rp)<span style="color: red;">*</span></label>
										<input type="text" class="form-control" required value="{{!empty($product->price) ? $product->price : ''}}" name="price" placeholder="Title">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label for="exampleInputEmail1">Old Price (Rp)<span style="color: red;">*</span></label>
										<input type="text" class="form-control" required value="{{!empty($product->old_price) ? $product->old_price : ''}}" name="old_price" placeholder="Title">
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Size<span style="color: red;">*</span></label>
										<div>
											<table class="table">

												<thead>
													<tr>
														<th>Name</th>
														<th>Price (Rp)</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody id="table-size">
													@php
													$i_s = 1;
													@endphp
													@foreach($product->getSize as $size)
													<tr id="delSize{{$i_s}}">
														<td>
															<input class="form-control" type="text" value="{{$size->name}}" name="size[{{$i_s}}][name]" placeholder="name" >
														</td>
														<td>
															<input class="form-control" type="text" value="{{$size->price}}" name="size[{{$i_s}}][price]" placeholder="price">
														</td>
														<td style="width: 200px;">
															<button type="button" id="{{$i_s}}" class="btn btn-danger btn-sm delSize">Delete</button>
														</td>
													</tr>
													@php
													$i_s++;
													@endphp
													@endforeach
													<tr>
														<td>
															<input class="form-control" type="text" name="size[100][name]" placeholder="name" >
														</td>
														<td>
															<input class="form-control" type="text" name="size[100][price]" placeholder="price">
														</td>
														<td style="width: 200px;">
															<button type="button" class="btn btn-primary btn-sm addSize">Add</button>
														</td>
													</tr>
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<hr>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Image<span style="color: red;">*</span></label>
										<input type="file" name="image[]" class="form-control" multiple accept="image/*" style="padding: 5px;">

									</div>
								</div>
							</div>

							@if(!empty($product->getImage->count()))
							<div class="row">
								@foreach($product->getImage as $image)
								@if(!empty($image->getPImage()))
								<div class="col-md-2">
									<img src="{{$image->getPImage()}}" style="width:100%; height: 200px;">
									<a onclick="return confirm('Are you sure for delete this image?')" 	href="{{url('admin/product/image_delete/'.$image->id)}}" class="btn btn-danger btn-sm" style="margin-top: 10px;">Delete</a>
								</div>
								@endif
								@endforeach
							</div>
							@endif

							<hr>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Short Description<span style="color: red;">*</span></label>
										<textarea class="form-control" id="short_description" name="short_description" rows="5">{{ trim($product->short_description) }}</textarea>

									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Description<span style="color: red;">*</span></label>
										<textarea class="form-control editor" name="description" placeholder="Description">
											{{$product->description}}
										</textarea>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Additional Information<span style="color: red;">*</span></label>
										<textarea class="form-control editor" name="additional_information" placeholder="Additional Information">
											{{$product->additional_description}}
										</textarea>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputEmail1">Shipping Returns<span style="color: red;">*</span></label>
										<textarea class="form-control editor" name="shipping_returns" placeholder="Shipping Returns">
											{{$product->shipping_returns}}
										</textarea>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputPassword1">Status <span style="color: red;">*</span></label>
										<select class="form-control" required name="status">
											<option {{ ($product->shipping_returns == 0) ? 'selected' : '' }} value="0">Active</option>
											<option {{ ($product->shipping_returns == 1) ? 'selected' : '' }} value="1">Inactive</option>
										</select>
									</div>
								</div>
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

@section('script')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script src="{{asset('lte/plugins/summernote/summernote-bs4.min.js')}}"></script>
<script type="text/javascript">
	$('.editor').summernote({
		height: 200
	});

	var i = 101;
	$('body').delegate('.addSize', 'click', function(e){
		var html = `<tr id="delSize${i}">
		<td>
		<input class="form-control" plaaceholder="name" type="text" name="size[${i}][name]">
		</td>
		<td>
		<input class="form-control" plaaceholder="price" name="size[${i}][price] "type="text">
		</td>
		<td>
		<button type="button" id="${i}" class="btn btn-danger btn-sm delSize">Delete</button>
		</td>
		</tr>`;
		i++;
		$('#table-size').append(html);
	});

	$('body').delegate('.delSize', 'click', function(e){
		var id = $(this).attr('id');
		$(`#delSize${id}`).remove();
	});

	$('body').delegate('#ChangeCategory', 'change', function(e){
		var id = $(this).val();
		$.ajax({
			type: "post",
			url: "{{ url('admin/get_sub_category') }}",
			data: {
				"id" : id,
				"_token": "{{csrf_token()}}",
			},
			dataType:"json",
			success: function(data){
				$('#getSubCategory').html(data.html);
			},
			error: function(data){

			}
		})
	});
</script>

@endsection