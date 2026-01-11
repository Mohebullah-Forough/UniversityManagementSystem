<%@ include file="../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">
				Computer Science Student Marksheet 
			<div class="container-fluid">
				<form action="<%=request.getContextPath() %>/staffs/searchCsStudentById" method="POST" class="d-flex" role="search">
      <input class="form-control me-2" type="search"
						placeholder="Enter Student ID to Search" aria-label="Search" name="id" />
						
      <input class="btn btn-warning" type="submit" value="Search Student" />
    </form>
  </div>
			</p>
			
			
			<hr class="border border-warning border-2 opacity-50">
			

			
			
			
			<div class="container mt-5">
    <div class="card shadow p-4">
      <h2 class="mb-4 text-center">Enter Student Marks</h2>
      
     
      <form action="<%=request.getContextPath() %>/staffs/saveCsStudentMarks" method="POST">
		<p class="fs-3 text-center bg-warning shadow p-3 mb-5  rounded"> ${student.name } ${student.lastName} </p>
        <!-- Table for input fields -->
        <table class="table table-bordered">
          <tbody>
          <!-- Row 1 -->
           <tr>
              <td>
                <label for="studentId" class="form-label">Student ID</label>
                <input type="text" class="form-control" id="studentId" name="studentId" required value=${student.id} readonly placeholder="Student id">
              </td>
              <td>
                <label for="studentName" class="form-label">Student Name</label>
                <input type="text" class="form-control" id="studentName" name="studentName" value=${student.name} disabled>
                
              </td>
              <td>
                <label for="dept" class="form-label">Department</label>
                <input type="text" class="form-control" id="dept" name="dept"  value=${student.department} disabled >
                
              </td>
            </tr>
            
            <!-- Row 2 -->
            <tr>
              <td>
                <label for="javaProg" class="form-label">Java Programming</label>
                <input type="number" class="form-control" step="0.01" id="javaProg" name="javaProg" min ="0" max="100" required>
                
              </td>
              <td>
                <label for="mathematics" class="form-label">Mathematics</label>
                <input type="number" class="form-control" step="0.01" id="mathematics" name="mathematics" min="0" max="100" required>
              </td>
              <td>
                <label for="physics" class="form-label">Physics</label>
                <input type="number" class="form-control" step="0.01" id="physics" name="physics" min="0" max="100" required>
              </td>
            </tr>
            

            <!-- Row 2 -->
            <tr>
              <td>
                <label for="dataStructure" class="form-label">Data Structure</label>
                <input type="number" class="form-control" step="0.01" id="dataStructure" name="dataStructure" min="0" max="100" required>
              </td>
              <td>
                <label for="networking" class="form-label">Networking</label>
                <input type="number" class="form-control" step="0.01" id="networking" name="networking" min="0" max="100" required>
              </td>
              <td>
                <label for="operatingSystem" class="form-label">Operating System</label>
                <input type="number" class="form-control" step="0.01" id="operatingSystem" name="operatingSystem" min="0" max="100" required>
              </td>
            </tr>

            <!-- Row 3 -->
            <tr>
              <td>
                <label for="algorithm" class="form-label">Algorithm</label>
                <input type="number" class="form-control" step="0.01" id="algorithm" name="algorithm" min="0" max="100" required>
              </td>
              <td>
                <label for="semester" class="form-label">Semester</label>
                <select class="form-select" id="semester" name="semester" required>
                  <option value="">Select</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                </select>
              </td>
              <td>
                <label for="year" class="form-label">Academic Year</label>
                <input type="text" class="form-control" id="year" name="year" placeholder="e.g., 2024-2025" required>
              </td>
            </tr>
          </tbody>
        </table>

        <!-- Submit -->
        <div class="text-center mt-4">
          <input type="submit" class="btn btn-warning px-5 form-control" value="Save Marks"/>
        </div>

      </form>
    </div>
  </div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>
