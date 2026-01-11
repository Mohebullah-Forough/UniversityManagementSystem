<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc" %>


<%@ include file="../../header.jsp"%>

<div class="fluid">
	<div class="row bg-dark bg-gradient">
		<div class="col-2 my-2">
			<%@ include file="../staffPanel.jsp"%>
		</div>
		<div class="col-8 my-2 mx-auto text-white table-responsive">
			<p class="text-center fs-3">List of Events</p>
			<hr class="border border-warning border-2 opacity-50">

			<table class="table mt-3 ">
				<thead>
					<tr class="table-dark border border-warning border-3 opacity-75 ">
						<th scope="col" class="text-warning">ID</th>
						<th scope="col" class="text-warning">Event Title</th>
						<th scope="col" class="text-warning">Event Date</th>
						<th scope="col" class="text-warning">Event Type</th>
						<th scope="col" class="text-warning">Event Description</th>
						<th scope="col" class="text-warning">Event Department</th>
						<th scope="col" class="text-warning">Event Location</th>
						<th scope="col" class="text-warning">Action</th>
					</tr>
				</thead>
				<tbody class="table-dark border border-warning border-3 opacity-75">

					<cc:forEach var="event" items="${eventList}">
						<tr>
							<td>${event.eventId}</td>
							<td>${event.eventTitle }</td>
							<td>${event.eventDate }</td>
							<td>${event.eventType }</td>
							<td>${event.eventDescription }</td>
							<td>${event.eventDepartment}</td>
							<td>${event.eventLocation }</td>
							<td>
							<a href="<%=request.getContextPath()%>/staffs/editEvent/${event.eventId}" type="button" class="btn btn-primary w-100 mb-1">Edit</a>
							<a href="<%=request.getContextPath()%>/staffs/deleteEvent/${event.eventId}" type="button" class="btn btn-primary w-100">Delete</a>
							</td>
						</tr>
					</cc:forEach>

				</tbody>
			</table>


		</div>
	</div>
</div>

<%@ include file="../../footer.jsp"%>
