<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="../header.jsp"%>

<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Student's Result sheet</p>
			<form
				action="<%=request.getContextPath()%>/staffs/printResultSheetsearchById"
				method="POST" class="d-flex" role="search">
				<input class="form-control me-2" type="search"
					placeholder="Enter Student ID to Search" aria-label="Search"
					name="id" /> <input class="btn btn-warning" type="submit"
					value="Search Student" />
			</form>

			<hr class="border border-warning border-2 opacity-50">

			<div class="header text-center">
				<h2 class="text-warning">Ghalib University</h2>
				<h3>Faculty Name:</h3>
				<h3>Departement: ${student.department}</h3>
				<h3>RESULT SHEET</h3>
			</div>
			<hr class="border border-warning border-2 opacity-50">
			<!-- Student Information -->
			<table
				class="info-table table table-dark table-striped-columns mx-auto">
				<tr>
					<td>Name:</td>
					<td>${student.name }</td>
					<td>Last Name:</td>
					<td>${student.lastName }</td>
				</tr>
				<tr>
					<td>Roll No</td>
					<td>${student.id }</td>
					<td>Program</td>
					<td>${student.degree }</td>
				</tr>
				<tr>
					<td>Semester</td>
					<td>${student.semester }</td>
					<td>Academic Year</td>
					<td>${student.academicYear}</td>
				</tr>
			</table>
			<hr class="border border-warning border-2 opacity-50">
			<!-- Course Result Table -->
			<table
				class="info-table table table-dark table-striped-columns mx-auto">
				<tr>
					<th>Subject Name</th>
					<th>Max Marks</th>
					<th>Obtained Marks</th>
				</tr>

				<c:forEach var="result" items="${csMarks}" varStatus="status">
					<tr>
						<td>Java Programming</td>
						<td>100</td>
						<td>${result.javaProg}</td>
					</tr>
					<tr>
						<td>Algorithm</td>
						<td>100</td>
						<td>${result.algorithm}</td>
					</tr>
					<tr>
						<td>Data Structure</td>
						<td>100</td>
						<td>${result.dataStructure}</td>
					</tr>
					<tr>
						<td>Math</td>
						<td>100</td>
						<td>${result.mathematics}</td>
					</tr>
					<tr>
						<td>Physics</td>
						<td>100</td>
						<td>${result.physics}</td>
					</tr>
					<tr>
						<td>Networking</td>
						<td>100</td>
						<td>${result.networking}</td>
					</tr>
					<tr>
						<td>Operating System</td>
						<td>100</td>
						<td>${result.operatingSystem}</td>
					</tr>

				</c:forEach>
			</table>

			<!-- Result Summary -->
			<table class="info-table table table-dark table-striped-columns mx-auto">

				<c:forEach var="marks" items="${csMarks}">

					<tr>
						<td><b>Total Marks Obtained</b></td>
						<td colspan="3" >${marks.total}</td>
						
					</tr>
					<tr>
					<td><b>Average Marks</b></td>
						<td colspan="3" >${marks.average} %</td>
					</tr>

					<tr>
						<td><b>Result Status</b></td>
						<td colspan="3"><b>${marks.result} </b></td>
					</tr>
					<tr>
						<td><b>Grade</b></td>
						<td colspan="3"><b>${marks.grade}</b></td>
					</tr>
				</c:forEach>
			</table>


			<!-- Signatures -->
			<table class="info-table table table-dark  mx-auto">
				<tr>
					<td class="no-border">___________________________<br>
						Controller of Examinations
					</td>
					<td class="no-border">___________________________<br>
						Dean / HOD
					</td>
				</tr>
			</table>
			
			<input type="button" class="btn btn-primary" value="Print Result Sheet"/>
<br><br><br>
			<p style="text-align: center; font-size: 12px;">This is a
				computer-generated result sheet.</p>


		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
