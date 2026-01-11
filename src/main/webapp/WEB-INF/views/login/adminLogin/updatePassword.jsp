<%@ include file="../../header.jsp"%>






<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2  my-2">
			<%@ include file="../../admin/adminPanel.jsp"%>
		</div>
		
		
		<div class="col-5 mx-auto bg-dark bg-gradient text-white pb-4 border my-4">

			<p class="fs-3 text-center">Update Admin Password</p>
			<div class="px-5">
				<hr class="border border-warning border-3 opacity-75">
			</div>
			<form action="" method="">
				<div class="mb-3">
					<label for="inputPassword1" class="form-label">Old Password</label>
					<input type="password" class="form-control" id="inputPassword1">
				</div>

				<div class="mb-3">
					<label for="inputPassword1" class="form-label">New Password</label>
					<input type="password" class="form-control" id="inputPassword1">
				</div>

				<div class="mb-3">
					<label for="inputPassword1" class="form-label">Repeat New
						Password</label> <input type="password" class="form-control"
						id="inputPassword1">
				</div>
				<button type="submit" class="btn btn-warning form-control">Update</button>
			</form>
		</div>
	</div>
</div>






<%@ include file="../../footer.jsp"%>