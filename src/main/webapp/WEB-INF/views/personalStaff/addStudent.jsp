<%@ include file="../header.jsp"%>
<div class="container-fluid min-vh-100">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Student Registration Form</p>
			<hr class="border border-warning border-2 opacity-50">
			<form action="<%=request.getContextPath() %>/staffs/registerStudent" method="POST">
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="firstName" class="form-label">First Name</label> <input
							type="text" name="name" class="form-control" id="firstName" required>
					</div>
					<div class="col-md-6">
						<label for="lastName" class="form-label">Last Name</label> <input
							type="text" name="lastName" class="form-control" id="lastName" required>
					</div>
				</div>

				<div class="mb-3">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-select" id="gender" name="gender" required>
						<option value="" selected disabled>Select Gender</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">Email Address</label> <input
						type="email" name="email" class="form-control" id="email" required>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone Number</label> <input
						type="tel" name="phone" class="form-control" id="phone" required>
				</div>

				<div class="mb-3">
					<label for="address" class="form-label">Address</label> <input
						type="text" name="address" class="form-control" id="address" required>
				</div>

				<div class="mb-3">
					<label for="degree" class="form-label">Degree</label> <select
						class="form-select" name="degree" id="degree" required>
						<option value="" selected disabled>Select Degree</option>
						<option value="Bachelor">Bachelor's</option>
						<option value="Master" >Master's</option>
						<option value="PhD" >PhD</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="department" class="form-label">Department</label> <select
						class="form-select" name="department" id="department" required>
						<option value="" selected disabled>Select Department</option>
						<option value="Computer Science">Computer Science</option>
						<option value="Engineering">Engineering</option>
						<option value="Economics">Economics</option>
						<option value="Law">Law</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="academicYear" class="form-label">Academic Year</label>
					<select class="form-select" name="academicYear" id="academicYear" required>
						<option value="" selected disabled>Select Academic Year</option>
						<option value="2023-2024">2023-2024</option>
						<option value="2024-2025">2024-2025</option>
						<option value="2025-2026">2025-2026</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="semester" class="form-label">Semester</label> <select
						class="form-select" name="semester" id="semester" required>
						<option value="" selected disabled>Select Semester</option>
						<option value="Fall">Fall</option>
						<option value="Spring">Spring</option>
						<option value="Summer">Summer</option>
					</select>
				</div>

				<button type="submit" class="btn btn-warning form-control">Register</button>
			</form>


		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
