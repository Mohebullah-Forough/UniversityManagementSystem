<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Assign a Course to a Teacher</p>
			<hr class="border border-warning border-2 opacity-50">
			<form action="<%=request.getContextPath()%>/staffs/assignCourse"
				method="POST">
					
				<div class="row mb-3">
					<div class="col-md-6">

						<div class="mb-3">
							<label for="teacherList" class="form-label">Teacher List</label>
							<select class="form-select" id="teacherName" name="teacherId"
								required>
								<option value="" selected disabled>Select Teacher Name</option>

								<c:forEach var="teacher" items="${allTeachers}">
									<option value="${teacher.teacherId}">${teacher.teacherName}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<label for="courseList" class="form-label">Course List</label> <select
								class="form-select" id="coursName" name="courseId" required>
								<option value="" selected disabled>Select Course</option>

								<c:forEach var="course" items="${allCourses}">

									<option value="${course.courseId}">${course.courseName}</option>
								</c:forEach>

							</select>
						</div>
					</div>
				</div>



				<button type="submit" class="btn btn-warning form-control">Assign
					to Teacher</button>
			</form>

			<br> <br> <br> <br> <br>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
