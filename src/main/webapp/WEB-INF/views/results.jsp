
<%@ include file="header.jsp"%>

<div class="container bg-dark bg-gradient my-2">
	<div class="row justify-content-center">
		<div class="col-10 ">
			<p class="fs-3 text-center text-white">Results</p>
			<div class="mx-auto" style="width: 300px;">
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Enter your Id" aria-label="Search" />
					<button class="btn bg-primary-subtle" type="submit">Search</button>
				</form>
			</div>
			<p></p>
		</div>
	</div>

</div>

<div class="container bg-dark bg-gradient my-2">
	<div class="row justify-content-center">
		<div class=col-10">

			<table class="table mt-3 ">
				<thead>
					<tr class="table-dark border border-warning border-3 opacity-75 ">
						<th scope="col"class="text-warning">ID</th>
						<th scope="col" class="text-warning">First</th>
						<th scope="col" class="text-warning">Last</th>
						<th scope="col" class="text-warning">Subj-1</th>
						<th scope="col" class="text-warning">Subj-2</th>
						<th scope="col" class="text-warning">Subj-3</th>
						<th scope="col" class="text-warning">Subj-4</th>
						<th scope="col" class="text-warning">Total</th>
						<th scope="col" class="text-warning">Average</th>
						<th scope="col" class="text-warning">Result</th>
					</tr>
				</thead>
				<tbody class="table-dark border border-warning border-3 opacity-75">
					<tr >
						<td>1001</td>
						<td>Azaad</td>
						<td>Moheb</td>
						<td>90</td>
						<td>99</td>
						<td>89</td>
						<td>99</td>
						<td>350</td>
						<td>94</td>
						<td>Passed</td>
					</tr>

				</tbody>
			</table>
			<div>
				<a href="<%=request.getContextPath()%>/" class="btn btn-primary">Back</a>
			</div>
			<p></p>
		</div>
	</div>

</div>



<%@ include file="footer.jsp"%>