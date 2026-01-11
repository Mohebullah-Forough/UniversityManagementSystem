
<%@ include file="../header.jsp"%>

<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="teacherPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto">

			<table class="table">
				<thead>
					<tr>
						<th scope="col">Course Code</th>
						<th scope="col">Course Name</th>
						<th scope="col">Semester</th>
						<th scope="col">Departement</th>
						<th scope="col">Week Days</th>
						<th scope="col">Lecture PDF</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1001</th>
						<td>Web Engineering</td>
						<td>3rd</td>
						<td>Software Engineering</td>
						<td>Mon,Tue,Fri</td>
						<td></td>
						<td>
							<button class="btn btn-warning">Add Lect.</button>
							<button class="btn btn-warning">Del Lect.</button>
						</td>
					</tr>
					<tr>
						<th scope="row">2002</th>
						<td>Algorithm</td>
						<td>4th</td>
						<td>Software Engineering</td>
						<td>Mon,Tue</td>
						<td></td>
						<td>
							<button class="btn btn-warning">Add Lect.</button>
							<button class="btn btn-warning">Del Lect.</button>
						</td>
					</tr>

				</tbody>
			</table>


		</div>
	</div>
</div>


<%@ include file="../footer.jsp"%>