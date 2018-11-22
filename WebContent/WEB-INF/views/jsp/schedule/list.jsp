<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<body>

	<div class="container">

		<c:if test="${not empty msg}">
			<div class="alert alert-${css} alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${msg}</strong>
			</div>
		</c:if>

		<h1>All Resource's Schedules</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>#shID</th>
					<th>Resource Type</th>
					<th>Resource Name</th>
					<th>Activity</th>
					<th>Start Time</th>
					<th>End Time</th>
				</tr>
			</thead>

			<c:forEach var="schedule" items="${schedules}">
				<tr>
					<td>
						${schedule.shid}
					</td>
					<td>${schedule.resource_type}</td>
					<td>${schedule.resource_name}</td>
					<td>${schedule.activity}</td>
					<td>${schedule.start_time}</td>
					<td>${schedule.end_time}</td>
					
					<td>
						<spring:url value="/users" var="homeUrl" />
						<spring:url value="/users/${user.id}" var="userUrl" />
						<spring:url value="/users/${user.id}/delete" var="deleteUrl" /> 
						<spring:url value="/users/${user.id}/update" var="updateUrl" />

						<button class="btn btn-info" onclick="location.href='${homeUrl}'">Home</button>
						<button class="btn btn-info" onclick="location.href='${userUrl}'">Query</button>
						<button class="btn btn-primary" onclick="location.href='${updateUrl}'">Update</button>
						<button class="btn btn-danger" onclick="this.disabled=true;post('${deleteUrl}')">Delete</button></td>
				</tr>
			</c:forEach>
		</table>

	</div>

	<jsp:include page="../fragments/footer.jsp" />

</body>
</html>