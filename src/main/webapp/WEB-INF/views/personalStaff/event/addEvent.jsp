<%@ include file="../../header.jsp"%>
<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white">
			<p class="text-center fs-3">Add Events</p>
			<hr class="border border-warning border-2 opacity-50">
			<form action="<%=request.getContextPath()%>/staffs/createEvent" method="POST">
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="eventTitle" class="form-label">Event Title</label> <input
							type="text" name="eventTitle" class="form-control"
							id="eventTitle" required>
					</div>
					<div class="col-md-6">
						<label for="eventDate" class="form-label">Event Date</label> <input
							type="date" name="eventDate" class="form-control" id="eventDate"
							required>
					</div>
				</div>

				<div class="mb-3">
					<label for="eventType" class="form-label">Event Type</label> <select
						class="form-select" id="eventType" name="eventType" required>
						<option value="" selected disabled>Select Event Type</option>
						<option value="Seminar">Seminar</option>
						<option value="Lecture">Lecture</option>
						<option value="Conference">Conference</option>
						<option value="Cultural">Cultural</option>
						<option value="Sport">Sport</option>
						<option value="Others">Others</option>

					</select>
				</div>
				<div class="mb-3">
					<label for="eventDescription" class="form-label">Event
						Description</label>
					<textarea name="eventDescription" class="form-control" placeholder="Write your event's description here..."
						id="eventDescription" style="height: 100px"></textarea>
				</div>

				<div class="mb-3">
					<label for="eventDepartment" class="form-label">Event Department</label> <select
						class="form-select" id="eventDepartment" name="eventDepartment" required>
						<option value="" selected disabled>Select Department</option>
						<option value="Computer Science">Computer Science</option>
						<option value="Engineering">Engineering</option>
						<option value="Economics">Economics</option>
						<option value="Law">Law</option>
						
					</select>
				</div>
				<div class="md-3">
						<label for="eventLocation" class="form-label">Event Location</label> <input
							type="text" name="eventLocation" class="form-control"
							id="eventLocation" required>
					</div>
</br>
				<button type="submit" class="btn btn-warning form-control">Add
					Event</button>
			</form>

			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
