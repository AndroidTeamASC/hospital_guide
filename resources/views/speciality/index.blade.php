@extends('backtemplate')
@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="add">
			<h1>Speciality </h1>
			@if ($errors->any())
			    <div class="alert alert-danger">
			        <ul>
			            @foreach ($errors->all() as $error)
			                <li>{{ $error }}</li>
			            @endforeach
			        </ul>
			    </div>
			@endif
			<form action="{{route('speciality.store')}}" method="post" enctype="multipart/form-data">
				@csrf

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Speciality English Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="ename" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Speciality Myanmar Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="mname" class="form-control">
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
					<label>Speciality Image</label>
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
			<h1> Edit speciality </h1>
			<form action="{{route('speciality.update',1)}}" method="post" enctype="multipart/form-data">
				@csrf
				@method('PUT')
				<input type="hidden" name="edit_id" id="edit_id">
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>speciality English Name</label>
					</div>
					<div class="col-md-5">
						<input type="text" name="edit_ename" class="form-control" id="edit_ename">
					</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>speciality Myanmar Name</label>
					</div>
					<div class="col-md-5">
						<input type="text" name="edit_mname" class="form-control" id="edit_mname">
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
						<label>speciality Image</label>
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
				<th>speciality Myanmar Name</th>
				<th>speciality English Name</th>
				<th>speciality Image</th>
				<th>Hospital</th>
				 
				<th colspan="2">Action</th>
			</tr>
			@php $i = 1; @endphp
			@foreach($specialities as $speciality)
			<tr>
				<td>{{$i++}}</td>
				<td>{{$speciality->speciality_mname}}</td>
				<td>{{$speciality->speciality_ename}}</td>
				<td><img src="{{$speciality->speciality_image}}" width="150" height="150"></td>
			 
				<td> 
				<td>{{$speciality->hospital->hospital_name}}</td>
				<td>
					<a href="#" class="btn btn-secondary  edit_item " data-id="{{$speciality->id}}" data-mname = "{{$speciality->speciality_mname}}" 
					data-image="{{$speciality->speciality_image}}"  
					data-ename="{{$speciality->speciality_ename}}" 
					data-hospital="{{$speciality->hospital_id}}">Edit</a>
				</td>
				<td>	
                    <form action="{{route('speciality.destroy',$speciality->id)}}" method="post">
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
				var mname  		 = $(this).data('mname');
				var image 		 = $(this).data('image');
				var ename  = $(this).data('ename');
				 
				var hospital 	 = $(this).data('hospital');
			 
				console.log(id,ename,image,hospital)
				$('#edit_id').val(id);
				$('#edit_mname').val(mname);
				$('#edit_image').attr("src",image);
				$('#edit_image_old').val(image);
				$('#edit_ename').val(ename);
				$('#edit_hospital').val(hospital);
				 
			})
		})
	</script>

@endsection
