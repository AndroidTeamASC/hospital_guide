@extends('backtemplate')
@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="add">
			<h1>Physician </h1>
			@if ($errors->any())
			    <div class="alert alert-danger">
			        <ul>
			            @foreach ($errors->all() as $error)
			                <li>{{ $error }}</li>
			            @endforeach
			        </ul>
			    </div>
			@endif
			<form action="{{route('physician.store')}}" method="post" enctype="multipart/form-data">
				@csrf

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Physician Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="name" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Degree</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="degree" class="form-control">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Speciality </label>
					</div>

					<div class="col-md-5">
						<select name="speciality"  class="form-control">
							<option selected disabled>Select Speciality</option>
							@foreach($specialities as $speciality)
							<option value="{{$speciality->id}}">{{$speciality->speciality_mname}}</option>
							@endforeach
						</select>
					</div>
				
				</div>

			  
 
				
				
				<div class="col-md-3">
					<input type="submit" value="ADD">
				</div>
			</form>	
		</div>
		<div class="edit">
			<h1> Edit physician </h1>
			<form action="{{route('physician.update',1)}}" method="post" enctype="multipart/form-data">
				@csrf
				@method('PUT')
				<input type="hidden" name="edit_id" id="edit_id">
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Physician Name</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_name" class="form-control" id="edit_name">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Degree</label>
				</div>
				<div class="col-md-5">
					<input type="text" name="edit_degree" class="form-control"
					id="edit_degree">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Speciality </label>
					</div>
					<div class="col-md-5">
						<select name="edit_speciality"  class="form-control" id="edit_speciality">
							<option selected disabled>Select Speciality</option>
							@foreach($specialities as $speciality)
							<option value="{{$speciality->id}}">{{$speciality->speciality_mname}}</option>
							@endforeach
						</select>
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
				<th>physician Name</th>
				<th>Degree</th>
				<th>Speciality</th>
				 
				<th colspan="2">Action</th>
			</tr>
			@php $i = 1; @endphp
			@foreach($physicians as $physician)
			<tr>
				<td>{{$i++}}</td>
				<td>{{$physician->name}}</td>
				<td>{{$physician->degree}}</td>		
				<td>{{$physician->speciality->speciality_mname}}</td>
				<td>
					<a href="#" class="btn btn-secondary  edit_item " 
					data-id="{{$physician->id}}" 
					data-name = "{{$physician->name}}" 
					data-degree="{{$physician->degree}}"  
					data-date_time="{{$physician->date_time}}" 
					data-speciality="{{$physician->speciality_id}}"  
					data-hospital="{{$physician->hospital_id}}">Edit</a>
				</td>
				<td>	
                    <form action="{{route('physician.destroy',$physician->id)}}" method="post">
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
				var degree 		 = $(this).data('degree');
				var date_time  = $(this).data('date_time');
				var speciality 		 = $(this).data('speciality');
				var hospital 	 = $(this).data('hospital');
			 
				console.log(id,name,hospital)
				$('#edit_id').val(id);
				$('#edit_name').val(name);
				$('#edit_degree').val(degree);
				$('#edit_speciality').val(speciality);
				$('#edit_date_time').val(date_time);
				$('#edit_hospital').val(hospital);
				 
			})
		})
	</script>

@endsection
