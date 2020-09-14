@extends('backtemplate')
@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="add">
			<h1>Package </h1>
			@if ($errors->any())
			    <div class="alert alert-danger">
			        <ul>
			            @foreach ($errors->all() as $error)
			                <li>{{ $error }}</li>
			            @endforeach
			        </ul>
			    </div>
			@endif
			<form action="{{route('package.store')}}" method="post" enctype="multipart/form-data">
				@csrf

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Package Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="name" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Regular Price</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="rprice" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Special Price</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="sprice" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Hospital </label>
					</div>
					<div class="col-md-5">
						<select name="hospital" class="form-control">
							<option selected disabled>Select Hospital</option>
							@foreach($hospitals as $hospital)
							<option value="{{$hospital->id}}">{{$hospital->hospital_name}}</option>
							@endforeach
						</select>
					</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Package Description</label>
				</div>
				<div class="col-md-5">
					<textarea name="description" class="form-control"></textarea>
				</div>
				
				</div>
				
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Package Image</label>
				</div>
				<div class="col-md-5">
					<input type="file" name="image" class="form-control">
				</div>
				
				</div>
 
				
				
				<div class="col-md-3">
					<input type="submit" value="ADD">
				</div>
			</form>	
		</div>
		<div class="edit">
			<h1> Edit Package </h1>
			<form action="{{route('package.update',1)}}" method="post" enctype="multipart/form-data">
				@csrf
				@method('PUT')
				<input type="hidden" name="edit_id" id="edit_id">
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Package Name</label>
					</div>
					<div class="col-md-5">
						<input type="text" name="edit_name" class="form-control" id="edit_name">
					</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Regular Price</label>
					</div>
					<div class="col-md-5">
						<input type="text" name="edit_rprice" class="form-control" id="edit_rprice">
					</div>
			
				</div><div class="row mt-5">
					<div class="col-md-3 ">
						<label>Special Price</label>
					</div>
					<div class="col-md-5">
						<input type="text" name="edit_sprice" class="form-control" id="edit_sprice">
					</div>
			
				</div>

				

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Description</label>
					</div>
					<div class="col-md-5">
						<textarea id="edit_description" name="edit_description" class="form-control"></textarea>
					</div>
				
				</div>
			 
			 
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Hospital </label>
				</div>
				<div class="col-md-5">
					<select name="edit_hospital" id="edit_hospital" class="form-control">
						<option selected disabled>Select Hospital</option>
						@foreach($hospitals as $hospital)
						<option value="{{$hospital->id}}">{{$hospital->hospital_name}}</option>
						@endforeach
					</select>
				</div>
				
				</div>
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>package Image</label>
					</div>
					<div class="col-md-5">
						<input type="file" name="image" class="form-control">
					</div>
					<div class="col-md-4">
						<img src="" id="edit_image" width="150" height="150">
						<input type="hidden" name="old_image" id="edit_image_old">
					</div>
				
				</div>

				 
				
				<div class="col-md-3">
					<input type="submit" value="Update">
				</div>
			</form>	
		</div>

		

	<div class="col-md-12 mt-5">

		<table class="table table-dark table-sm table-responsive">
			<tr>
				<th>NO.</th>
				<th>package Name</th>
				<th>package Image</th>
				<th>Regular Price</th>
				<th>Special Price</th>
				<th>Package Description</th>
				<th>Hospital</th>
				 
				<th colspan="2">Action</th>
			</tr>
			@php $i = 1; @endphp
			@foreach($packages as $package)
			<tr>
				<td>{{$i++}}</td>
				<td>{{$package->package_name}}</td>
				<td><img src="{{$package->package_image}}" width="150" height="150"></td>
			 
				<td>{{$package->package_price}}</td>
				<td>{{$package->special_price}}</td>
				<td>{{$package->package_description}}</td>
				<td>{{$package->hospital->hospital_name}}</td>
				<td>
					<a href="#" class="btn btn-secondary  edit_item " data-id="{{$package->id}}" data-name = "{{$package->package_name}}" data-image="{{$package->package_image}}" data-sprice="{{$package->special_price}}"  
					data-description="{{$package->package_description}}" 
					data-rprice="{{$package->package_price}}"  
					data-hospital="{{$package->hospital_id}}">Edit</a>
				</td>
				<td>	
                    <form action="{{route('package.destroy',$package->id)}}" method="post">
                        @method('Delete')
                        @csrf

                        <input type="submit" name="btnsubmit" value="Delete" class="btn btn-danger">
                     </form>
                </td>
			</tr>
			@endforeach
		</table>
	</div>
		
	</div>
	
</div>

@endsection

@section('script')

	<script type="text/javascript">
		
		$(document).ready(function(){
			$('.add').show();
			$('.edit').hide();
			$('.edit_item').click(function(){
				$('.edit').show();
				$('.add').hide();
				var id 			 = $(this).data('id');
				var name  		 = $(this).data('name');
				var image 		 = $(this).data('image');
				var description  = $(this).data('description');
				var rprice 		 = $(this).data('rprice');
				var sprice 	     = $(this).data('sprice');
				var hospital 	 = $(this).data('hospital');
			 	console.log(rprice,sprice)
				$('#edit_id').val(id);
				$('#edit_name').val(name);
				$('#edit_image').attr("src",image);
				$('#edit_image_old').val(image);
				$('#edit_description').val(description);
				$('#edit_rprice').val(rprice);
				$('#edit_sprice').val(sprice);
				$('#edit_hospital').val(hospital);
				 
			})
		})
	</script>

@endsection
