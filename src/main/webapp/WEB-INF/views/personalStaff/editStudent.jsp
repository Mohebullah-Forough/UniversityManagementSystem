<%@ include file="../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Edit Student Data</p>
			<hr class="border border-warning border-2 opacity-50">
			<form action="<%=request.getContextPath() %>/staffs/updateStudent" method="POST">
			
			<input type="hidden" name="id"  class="form-control" id="id" value="${student.id}">
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="firstName" class="form-label">First Name</label> <input
							type="text" name="name" class="form-control" id="firstName" required value="${student.name}">
					</div>
					<div class="col-md-6">
						<label for="lastName" class="form-label">Last Name</label> <input
							type="text" name="lastName" class="form-control" id="lastName" required value="${student.lastName}">
					</div>
				</div>

				<div class="mb-3">
					<label for="gender" class="form-label">Gender</label> <select
						class="form-select" id="gender" name="gender" required >
						<option selected>${student.gender}</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">Email Address</label> <input
						type="email" name="email" class="form-control" id="email" required value="${student.email}">
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone Number</label> <input
						type="tel" name="phone" class="form-control" id="phone" required value="${student.phone }">
				</div>

				<div class="mb-3">
					<label for="address" class="form-label">Address</label> <input
						type="text" name="address" class="form-control" id="address" required value="${student.address}">
				</div>

				<div class="mb-3">
					<label for="degree" class="form-label">Degree</label> 
					<select class="form-select" name="degree" id="degree" required>
						<option>${student.degree}</option>
						<option value="Bachelor">Bachelor's</option>
						<option value="Master" >Master's</option>
						<option value="PhD" >PhD</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="department" class="form-label">Department</label> <select
						class="form-select" name="department" id="department" required>
						<option>${student.department }</option>
						<option value="computer Science">Computer Science</option>
						<option value="Engineering">Engineering</option>
						<option value="Business">Business</option>
						<option value="Mathematics">Mathematics</option>
						<option value="Physics">Physics</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="academicYear" class="form-label">Academic Year</label>
					<select class="form-select" name="academicYear" id="academicYear" required>
						<option>${student.academicYear}</option>
						<option value="2023-2024">2023-2024</option>
						<option value="2024-2025">2024-2025</option>
						<option value=2025-2026">2025-2026</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="semester" class="form-label">Semester</label> <select
						class="form-select" name="semester" id="semester" required>
						<option>${student.semester}</option>
						<option value="Fall">Fall</option>
						<option value="Spring">Spring</option>
						<option value="Summer">Summer</option>
					</select>
				</div>

				<button type="submit" class="btn btn-warning form-control">Update</button>
			</form>


		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
