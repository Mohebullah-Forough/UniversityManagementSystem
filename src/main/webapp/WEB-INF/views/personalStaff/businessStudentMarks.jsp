<%@ include file="../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">
				Business Student Marksheet 
			<div class="container-fluid">
				<form action="<%=request.getContextPath() %>/staffs/searchCsStudentById" method="POST" class="d-flex" role="search">
      <input class="form-control me-2" type="search"
						placeholder="Enter Student ID to Search" aria-label="Search" name="id" />
						
      <input class="btn btn-warning" type="submit" value="Search Student" />
    </form>
  </div>
			</p>
			
			
			<hr class="border border-warning border-2 opacity-50">
			

			Id: ${student.id}
			Name: ${student.name }
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
