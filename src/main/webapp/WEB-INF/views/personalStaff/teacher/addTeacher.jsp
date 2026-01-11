<%@ include file="../../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Register Teacher</p>
			<hr class="border border-warning border-2 opacity-50">
			<form action="<%=request.getContextPath()%>/staffs/createTeacher" method="POST">
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="teacherName" class="form-label">Name</label> <input
							type="text" name="teacherName" class="form-control"
							id="teacherName" required>
					</div>
					<div class="col-md-6">
						<label for="teacherLastName" class="form-label">Last Name</label>
						<input type="text" name="teacherLastName" class="form-control"
							id="teacherLastName" required>
					</div>
					<div class="col-md-6">
						<label for="teacherEmail" class="form-label">Email</label> <input
							type="email" name="teacherEmail" class="form-control"
							id="teacherEmail" required>
					</div>
					<div class="col-md-6">
						<label for="teacherJoinDate" class="form-label">Join Date</label>
						<input type="date" name="teacherJoinDate" class="form-control"
							id="teacherJoinDate" required>
					</div>
					<div class="col-md-6">
						<label for="teacherPhone" class="form-label">Phone</label> <input
							type="text" name="teacherPhone" class="form-control"
							placeholder="9876543210" 
							id="teacherPhone" required>
					</div>
					<div class="col-md-6">
						<label for="teacherGender" class="form-label">Gender</label> <select
							class="form-select" id="teacherGender" name="teacherGender"
							required>
							<option value="" selected disabled>Select Gender</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							<option value="Others">Others</option>
						</select>
					</div>
					<div class="col-md-6">
						<label for="teacherDepartment" class="form-label">Department</label>
						<select class="form-select" id="teacherDepartment"
							name="teacherDepartment" required>
							<option value="" selected disabled>Select Department</option>
							<option value="Computer Science">Computer Science</option>
							<option value="Engineering">Engineering</option>
							<option value="Economics">Economics</option>
							<option value="Law">Law</option>

						</select>
					</div>
					<div class="col-md-6">
						<label for="teacherDesignation" class="form-label">Designation</label>
						<select class="form-select" id="teacherDesignation"
							name="teacherDesignation" required>
							<option value="" selected disabled>Designation</option>
							<option value="Professor">Professor</option>
							<option value="Associate Professor">Associate Professor</option>
							<option value="Assistant Professor">Assistant Professor</option>
							<option value="Lecturer">Lecturer</option>

						</select>
					</div>
					<div class="col-md-6">
						<label for="teacherQualification" class="form-label">Qualifications</label>
						<select class="form-select" id="teacherQualification"
							name="teacherQualification" required>
							<option value="" selected disabled>Qualifications</option>
							<option value="Phd">PhD</option>
							<option value="Master">Master</option>
							<option value="Bachelor">Bachelor</option>
						</select>
					</div>
					<div class="col-md-6">
						<label for="teacherExperience" class="form-label">Experience (Only in Number)</label> <input
							type="number" name="teacherExperience" class="form-control" pattern="[0-9]
							id="
							teacherPhone" required>
					</div>

				</div>


				</br>
				<button type="submit" class="btn btn-warning form-control">Register
					Teacher</button>
			</form>

			<br> <br> <br> <br> <br>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
