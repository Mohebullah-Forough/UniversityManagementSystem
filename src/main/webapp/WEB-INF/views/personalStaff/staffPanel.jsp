

<div class="card min-vh-100" style="width: 18rem;">
	<div class="card-header bg-warning">Staff Home Panel</div>
	<ul class="list-group list-group-flush ">

		<li class="list-group-item ms-2 mt-2"><a
			class="text-decoration-none text-reset" data-bs-toggle="collapse"
			href="#materialsSubList" role="button" aria-expanded="false"
			aria-controls="materialsSubList">Profile Management</a>
			<ul class="list-unstyled ps-3 list-group collapse ps-3 mt-2"
				id="materialsSubList"">
				<li>Update Bio</li>
				<li><a class="text-decoration-none text-reset"
					href="<%=request.getContextPath()%>/staffs/updatePassword">Change
						Password</a></li>
			</ul></li>
		


		<li class="list-group-item ms-2"><a
			class="text-decoration-none text-reset" data-bs-toggle="collapse"
			href="#materialsSubList2" role="button" aria-expanded="false"
			aria-controls="materialsSubList2">Student Management</a>
			<ul class="list-unstyled ps-3 list-group collapse ps-3 mt-2"
				id="materialsSubList2"">
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/addStudent">Add Student</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/csStudentMarks">Add Student Marks</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/viewStudents">View Students</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/printResultSheet">Print Result Sheet</a></li>
			</ul></li>

	

		<li class="list-group-item ms-2"><a
			class="text-decoration-none text-reset" data-bs-toggle="collapse"
			href="#materialsSubList3" role="button" aria-expanded="false"
			aria-controls="materialsSubList3">Course Management</a>
			<ul class="list-unstyled ps-3 list-group collapse ps-3 mt-2"
				id="materialsSubList3"">
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/addCourse">Add Course</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/viewCourse">View Course</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/assignFacultyToCourse">Assign Faculty to
						Course</a></li>
			</ul></li>
	

		<li class="list-group-item ms-2"><a
			class="text-decoration-none text-reset" data-bs-toggle="collapse"
			href="#materialsSubList4" role="button" aria-expanded="false"
			aria-controls="materialsSubList4">Event Management</a>
			<ul class="list-unstyled ps-3 list-group collapse ps-3 mt-2"
				id="materialsSubList4"">
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/addEvent">Add Event</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/viewEvent">View Event</a></li>
				

			</ul></li>
	
		<li class="list-group-item ms-2"><a
			class="text-decoration-none text-reset" data-bs-toggle="collapse"
			href="#materialsSubList5" role="button" aria-expanded="false"
			aria-controls="materialsSubList5">Teacher Management</a>
			<ul class="list-unstyled ps-3 list-group collapse ps-3 mt-2"
				id="materialsSubList5"">
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/addTeacher">Add Teacher</a></li>
				<li><a class="dropdown-item" href="<%=request.getContextPath()%>/staffs/viewTeacher">View Teacher</a></li>
			</ul></li>
</div>