@extends('backtemplate')
@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="add">
			<h1>Hospital </h1>
			@if ($errors->any())
			    <div class="alert alert-danger">
			        <ul>
			            @foreach ($errors->all() as $error)
			                <li>{{ $error }}</li>
			            @endforeach
			        </ul>
			    </div>
			@endif
			<form action="{{route('hospital.store')}}" method="post" enctype="multipart/form-data">
				@csrf

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Hospital Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="name" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Email</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="email" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Place</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="place" class="form-control">
				</div>
				
				</div>
				
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Phone No :</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="phone_no" class="form-control">
				</div>
				
				</div>	



				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Specialities </label>
					</div>
					<div class="col-md-5">
						<div class="row">
							@foreach($specialities as $speciality)
						              <div class="col-md-6 col-lg-6 col-sm-6">
						              	<input type="checkbox" class="form-check-input" id="{{$speciality->id}}" value="{{$speciality->id}}" name="specialities[]" multiple>
										<label class="form-check-label" for="{{$speciality->id}}">{{$speciality->speciality_ename}}</label>
										</div>
							@endforeach
						</div>
					</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Website Link</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="website_link" class="form-control">
				</div>
				
				</div>
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Facebook Link</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="facebook_link" class="form-control">
				</div>
				
				</div>
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Hospital Image</label>
				</div>
				<div class="col-md-5">
					<input type="file" name="image" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Hospital Banner</label>
				</div>
				<div class="col-md-5">
					<input type="file" name="banner" class="form-control">
				</div>
				
				</div>

				
				
				<div class="col-md-3">
					<input type="submit" value="ADD">
				</div>
			</form>	
		</div>
		<div class="edit">
			<h1> Edit hospital </h1>
			<form action="{{route('hospital.update',1)}}" method="post" enctype="multipart/form-data">
				@csrf
				@method('PUT')
				<input type="hidden" name="edit_id" id="edit_id">
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Hospital Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_name" class="form-control" id="edit_name">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Email</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_email" class="form-control" id="edit_email">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Place</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_place" class="form-control" id="edit_place">
				</div>
				
				</div>
				
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Phone No :</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_phone_no" class="form-control" id="edit_phone_no">
				</div>
				
				</div>	

				

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Specialities </label>
					</div>
					<div class="col-md-5">
						<div class="row">
							@foreach($specialities as $speciality)
						              <div class="col-md-6 col-lg-6 col-sm-6">
						              	<input type="checkbox" class="form-check-input" id="{{$speciality->id}}" value="{{$speciality->id}}" name="edit_specialities[]" multiple>
										<label class="form-check-label" for="{{$speciality->id}}">{{$speciality->speciality_ename}}</label>
										</div>
							@endforeach
						</div>
					</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Website Link</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_website_link" class="form-control" id="edit_website_link">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Facebook Link</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_facebook_link" class="form-control" id="edit_facebook_link">
				</div>
				
				</div>




				<div class="row mt-5">
				<div class="col-md-3 ">
					<label>Hospital Image</label>
				</div>
				<div class="col-md-5">
					<input type="file" name="image" class="form-control">
				</div>
				<div class="col-md-4">
					<img src="" id="edit_image" width="150" height="150">
					<input type="hidden" name="old_image" id="edit_image_old">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Hospital Banner</label>
				</div>
				<div class="col-md-5">
					<input type="file" name="banner" class="form-control">
				</div>
				<div class="col-md-4">
					<img src="" id="edit_banner" width="150" height="150">
					<input type="hidden" name="old_banner" id="edit_banner_old">
				</div>
				
				</div>

				
				<div class="col-md-3">
					<input type="submit" value="ADD">
				</div>
			</form>	
		</div>

		

	<div class="col-md-12 mt-5">

		<table class="table table-dark table-sm table-responsive">
			<tr>
				<th>NO.</th>
				<th>hospital Name</th>
				<th>Hospital Image</th>
				<th>Hospital Banner</th>
				<th>Email</th>
				<th>Phone No:</th>
				<th>Facebook</th>
				<th>Website</th>
				<th>Place</th>
				<th colspan="2">Action</th>
			</tr>
			@php $i = 1; @endphp
			@foreach($hospitals as $hospital)
			<tr>
				<td>{{$i++}}</td>
				<td>{{$hospital->hospital_name}}</td>
				<td><img src="{{$hospital->hospital_image}}" width="150" height="150"></td>
				<td><img src="{{$hospital->hospital_banner}}" width="150" height="150"></td>
				<td>{{$hospital->email}}</td>
				<td>{{$hospital->phone_no}}</td>
				<td>{{$hospital->facebook_link}}</td>
				<td>{{$hospital->website_link}}</td>
				<td>{{$hospital->place}}</td>
				<td>
					<a href="#" class="btn btn-secondary  edit_item " data-id="{{$hospital->id}}" data-name = "{{$hospital->hospital_name}}" data-image="{{$hospital->hospital_image}}" data-banner="{{$hospital->hospital_banner}}" data-email="{{$hospital->email}}" data-phone_no="{{$hospital->phone_no}}" data-facebook_link="{{$hospital->facebook_link}}"
					data-email="{{$hospital->email}}"	
					 data-website_link="{{$hospital->website_link}}" data-place="{{$hospital->place}}">Edit</a>
				</td>
				<td>	
                    <form action="{{route('hospital.destroy',$hospital->id)}}" method="post">
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
				var banner 		 = $(this).data('banner');
				var place 		 = $(this).data('place');
				var phone_no 	 = $(this).data('phone_no');
				var website_link = $(this).data('website_link');
				var facebook_link= $(this).data('facebook_link');
				var email 		 = $(this).data('email');
				console.log(email)
				$('#edit_id').val(id);
				$('#edit_name').val(name);
				$('#edit_image').attr("src",image);
				$('#edit_image_old').val(image);
				$('#edit_banner').attr("src",banner);
				$('#edit_banner_old').val(banner);
				$('#edit_place').val(place);
				$('#edit_phone_no').val(phone_no);
				$('#edit_website_link').val(website_link);
				$('#edit_email').val(email);
				$('#edit_facebook_link').val(facebook_link);
			})
		})
	</script>

@endsection
