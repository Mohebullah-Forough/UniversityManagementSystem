<%@ include file="../../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Add Course</p>
			<hr class="border border-warning border-2 opacity-50">
			<form action="<%=request.getContextPath() %>/staffs/registerCourse" method="POST">
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="courseCode" class="form-label">Course Code</label> <input
							type="text" name="courseCode" class="form-control" id="courseCode" required>
					</div>
					<div class="col-md-6">
						<label for="courseName" class="form-label">Course Name</label> <input
							type="text" name="courseName" class="form-control" id="courseName" required>
					</div>
				</div>

				<div class="mb-3">
					<label for="department" class="form-label">Course Department</label> <select
						class="form-select" id="courseDept" name="courseDeparment" required>
						<option value="" selected disabled>Select Department</option>
						<option value="Computer Science">Computer Science</option>
						<option value="Engineering">Engineering</option>
						<option value="Economics">Economics</option>
						<option value="Law">Law</option>
						
					</select>
				</div>

				

				<div class="mb-3">
					<label for="degree" class="form-label">Semester</label> <select
						class="form-select" name="courseSemester" id="semester" required>
						<option value="" selected disabled>Select Degree</option>
						<option value="First">First</option>
						<option value="Second">Second</option>
						<option value="Third">Third</option>
						<option value="Fourth">Fourth</option>
						<option value="Fifth">Fifth</option>
						<option value="Sixth">Sixth</option>
						<option value="Seventh">Seventh</option>
						<option value="Eighth">Eighth</option>
						
					</select>
				</div>

				<button type="submit" class="btn btn-warning form-control">Add Course</button>
			</form>

<br><br><br><br><br>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
