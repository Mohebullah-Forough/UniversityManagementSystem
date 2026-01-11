<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc" %>


<%@ include file="../header.jsp"%>

<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Students List</p>
			<hr class="border border-warning border-2 opacity-50">

			<table class="table mt-3 ">
				<thead>
					<tr class="table-dark border border-warning border-3 opacity-75 ">
						<th scope="col" class="text-warning">ID</th>
						<th scope="col" class="text-warning">Name</th>
						<th scope="col" class="text-warning">Family</th>
						<th scope="col" class="text-warning">Degree</th>
						<th scope="col" class="text-warning">Academic Year</th>
						<th scope="col" class="text-warning">Department</th>
						<th scope="col" class="text-warning">Semester</th>
						<th scope="col" class="text-warning">Phone</th>
						<th scope="col" class="text-warning">Email</th>
						<th scope="col" class="text-warning">Action</th>

					</tr>
				</thead>
				<tbody class="table-dark border border-warning border-3 opacity-75">

					<cc:forEach var="student" items="${students}">
						<tr>
							<td>${student.id}</td>
							<td>${student.name}</td>
							<td>${student.lastName}</td>
							<td>${student.degree}</td>
							<td>${student.academicYear}</td>
							<td>${student.department}</td>
							<td>${student.semester}</td>
							<td>${student.phone}</td>
							<td>${student.email}</td>
							<td>
							<a href="<%=request.getContextPath()%>/staffs/editStudent/${student.id}" type="button" class="btn btn-primary w-100 mb-1">Edit</a>
							<a href="<%=request.getContextPath()%>/staffs/deleteStudent/${student.id}" type="button" class="btn btn-primary w-100">Delete</a>
							</td>
						</tr>
					</cc:forEach>

				</tbody>
			</table>


		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
