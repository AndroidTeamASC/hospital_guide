@extends('backtemplate')
@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="add">
			<h1>schedule </h1>
			@if ($errors->any())
			    <div class="alert alert-danger">
			        <ul>
			            @foreach ($errors->all() as $error)
			                <li>{{ $error }}</li>
			            @endforeach
			        </ul>
			    </div>
			@endif
			<form action="{{route('schedule.store')}}" method="post" enctype="multipart/form-data">
				@csrf

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Day</label>
				</div>
				<div class="col-md-5">
					<select name="s_day" class="form-control">
						<option disabled selected>Select Day </option>
						@foreach($days as $day)
							<option value="{{$day}}">{{$day}}</option>
						@endforeach
					</select>
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Time</label>
				</div>
				<div class="col-md-5">
					<input type="time" name="s_time" class="form-control">
				</div>
				
				</div>

				
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Hospital </label>
					</div>

				<div class="col-md-5">
					<select name="hospital"  class="form-control" >
						<option selected disabled>Select Hospital</option>
						@foreach($hospitals as $hospital)
						<option value="{{$hospital->id}}">{{$hospital->hospital_name}}</option>
						@endforeach
					</select>
				</div>
			</div>
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>schedule </label>
					</div>

					<div class="col-md-5">
						<select name="physician"  class="form-control" id="edit_physician">
							<option selected disabled>Select physician</option>
							@foreach($physicians as $physician)
							<option value="{{$physician->id}}">{{$physician->name}}</option>
							@endforeach
						</select>
					</div>
				
				</div>

			  
 
				
				
				<div class="col-md-3">0
					<input type="submit" value="ADD">
				</div>
			</form>	
		</div>
		<div class="edit">
			<h1> Edit schedule </h1>
			<form action="{{route('schedule.update',1)}}" method="post" enctype="multipart/form-data">
				@csrf
				@method('PUT')
				<input type="hidden" name="edit_id" id="edit_id">
				
				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Day</label>
				</div>
				<div class="col-md-5">
					<input type="day" name="s_day" class="form-control" id="edit_day">
				</div>
				
				</div>

				<div class="row mt-5">
					<div class="col-md-3 ">
					<label>Time</label>
				</div>
				<div class="col-md-5">
					<input type="time" name="s_time" class="form-control" id="edit_time">
				</div>
				
				</div>

				
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>Hospital </label>
					</div>

				<div class="col-md-5">
					<select name="hospital"  class="form-control" id="edit_hospital">
						<option selected disabled>Select Hospital</option>
						@foreach($hospitals as $hospital)
						<option value="{{$hospital->id}}">{{$hospital->hospital_name}}</option>
						@endforeach
					</select>
				</div>
			</div>
				<div class="row mt-5">
					<div class="col-md-3 ">
						<label>schedule </label>
					</div>

					<div class="col-md-5">
						<select name="physician"  class="form-control" id="edit_physician">
							<option selected disabled>Select physician</option>
							@foreach($physicians as $physician)
							<option value="{{$physician->id}}">{{$physician->name}}</option>
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

		<table class="table table-dark table-sm ">
			<tr>
				<th>NO.</th>
				<th>Day</th>
				<th>Time</th>
				<th>schedule</th>
				<th>Hospital</th>
				 
				<th colspan="2">Action</th>
			</tr>
			@php $i = 1; @endphp
			@foreach($schedules as $schedule)
			<tr>
				<td>{{$i++}}</td>
				<td>{{$schedule->s_day}}</td>
				<td>{{$schedule->s_time}}</td>			 
				<td>{{$schedule->hospital->hospital_name}}</td>
				<td>{{$schedule->physician->name}}</td>
				<td>
					<a href="#" class="btn btn-secondary  edit_item " 
					data-id="{{$schedule->id}}" 
					data-day = "{{$schedule->s_day}}" 
					data-time="{{$schedule->s_time}}"  
					data-physician="{{$schedule->physician_id}}"  
					data-hospital="{{$schedule->hospital_id}}">Edit</a>
				</td>
				<td>	
                    <form action="{{route('schedule.destroy',$schedule->id)}}" method="post">
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

		getDays();
			$('.add').show();
			$('.edit').hide();
			$('.edit_item').click(function(){
				$('.edit').show();
				$('.add').hide();
				var id 			 = $(this).data('id');
				var day  		 = $(this).data('day');
				var time 		 = $(this).data('time');
				var physician 	 = $(this).data('physician');
				var hospital 	 = $(this).data('hospital');
			 
				console.log(id,name,hospital)
				$('#edit_id').val(id);
				$('#edit_day').val(day);
				$('#edit_time').val(time);
				$('#edit_physician').val(physician);
				$('#edit_hospital').val(hospital);
				 
			})
			function getDays(){
				var days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
				Date.prototype.getDayName = function(){
					return days[this.getDay()];
				}

				var now = new Date();
				var day = now.getDayName();
				console.log(day);
			}
		})
	</script>

@endsection

