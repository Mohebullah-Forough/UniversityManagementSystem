

<div class="card " style="width: 18rem;">
	<div class="card-header bg-warning">Mr.XYZ Home Panel</div>
	<ul class="list-group list-group-flush">

		<li class="list-group-item ms-2 mt-2"><a
			class="text-decoration-none text-reset" data-bs-toggle="collapse"
			href="#materialsSubList" role="button" aria-expanded="false"
			aria-controls="materialsSubList">Profile and Settings</a>
			<ul class="list-unstyled ps-3 list-group collapse ps-3 mt-2"
				id="materialsSubList"">
				<li>Update Bio</li>
				<li><a class="text-decoration-none text-reset"
					href="<%=request.getContextPath()%>/teacher/updatePassword">Change
						Password</a></li>
			</ul></li>
		<li class="list-group-item"><a
			href="<%=request.getContextPath()%>/teacher/courses"
			class="text-decoration-none text-reset">Courses</a></li>
		<li class="list-group-item"><a
			class="text-decoration-none text-reset"
			href="<%=request.getContextPath()%>/teacher/attendance">Attendance</a></li>
		<li class="list-group-item">Log out</li>
	</ul>
</div>