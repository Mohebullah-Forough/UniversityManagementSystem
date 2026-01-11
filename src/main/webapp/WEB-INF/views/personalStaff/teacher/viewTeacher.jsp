<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc" %>


<%@ include file="../../header.jsp"%>

<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white table-responsive">
			<p class="text-center fs-3">List of Teachers</p>
			<hr class="border border-warning border-2 opacity-50">

			<table class="table mt-3 ">
				<thead>
					<tr class="table-dark border border-warning border-3 opacity-75 ">
						<th scope="col" class="text-warning">ID</th>
						<th scope="col" class="text-warning">Name</th>
						<th scope="col" class="text-warning">Last Name</th>
						<th scope="col" class="text-warning">Email</th>
						<th scope="col" class="text-warning">Join Date</th>
						<th scope="col" class="text-warning">Phone</th>
						<th scope="col" class="text-warning">Gender</th>
						<th scope="col" class="text-warning">Department</th>
						<th scope="col" class="text-warning">Designation</th>
						<th scope="col" class="text-warning">Qualifications</th>
						<th scope="col" class="text-warning">Experience</th>
						<th scope="col" class="text-warning">Action</th>
					</tr>
				</thead>
				<tbody class="table-dark border border-warning border-3 opacity-75">

					<cc:forEach var="teacher" items="${teachers}">
						<tr>
							<td>${teacher.teacherId}</td>
							<td>${teacher.teacherName }</td>
							<td>${teacher.teacherLastName }</td>
							<td>${teacher.teacherEmail}</td>
							<td>${teacher.teacherJoinDate}</td>
							<td>${teacher.teacherPhone}</td>
							<td>${teacher.teacherGender}</td>
							<td>${teacher.teacherDepartment}</td>
							<td>${teacher.teacherDesignation}</td>
							<td>${teacher.teacherQualification}</td>
							<td>${teacher.teacherExperience}-Year(s)</td>
							<td>
							<a href="<%=request.getContextPath()%>/staffs/editTeacher/${teacher.teacherId}" type="button" class="btn btn-primary w-100 mb-1">Edit</a>
							<a href="<%=request.getContextPath()%>/staffs/deleteTeacher/${teacher.teacherId}" type="button" class="btn btn-primary w-100">Delete</a>
							</td>
						</tr>
					</cc:forEach>

				</tbody>
			</table>


		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
