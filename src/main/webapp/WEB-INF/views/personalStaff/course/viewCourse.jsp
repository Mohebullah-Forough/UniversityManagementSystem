<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc" %>


<%@ include file="../../header.jsp"%>

<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">List of Courses</p>
			<hr class="border border-warning border-2 opacity-50">

			<table class="table mt-3 ">
				<thead>
					<tr class="table-dark border border-warning border-3 opacity-75 ">
						<th scope="col" class="text-warning">ID</th>
						<th scope="col" class="text-warning">Course Code</th>
						<th scope="col" class="text-warning">Course Name</th>
						<th scope="col" class="text-warning">Course Department</th>
						<th scope="col" class="text-warning">Course Semester</th>
						<th scope="col" class="text-warning">Action</th>
					</tr>
				</thead>
				<tbody class="table-dark border border-warning border-3 opacity-75">

					<cc:forEach var="course" items="${courses}">
						<tr>
							<td>${course.courseId}</td>
							<td>${course.courseCode}</td>
							<td>${course.courseName}</td>
							<td>${course.courseDeparment}</td>
							<td>${course.courseSemester}</td>
							<td>
							<a href="<%=request.getContextPath()%>/staffs/editCourse/${course.courseId}" type="button" class="btn btn-primary w-100 mb-1">Edit</a>
							<a href="<%=request.getContextPath()%>/staffs/deleteCourse/${course.courseId}" type="button" class="btn btn-primary w-100">Delete</a>
							</td>
						</tr>
					</cc:forEach>

				</tbody>
			</table>


		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
