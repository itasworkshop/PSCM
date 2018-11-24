<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../fragments/index.jsp" />
</head>


<body>

	<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">&nbsp;</li>
                <li><a href="https://www.google.com">Dashboard</a>
                </li>
                <li><a href="#">Shortcuts</a>
                </li>
                <li><a href="#">Overview</a>
                </li>
                <li><a href="#">Events</a>
                </li>
                <li><a href="#">About</a>
                </li>
                <li><a href="#">Services</a>
                </li>
                <li><a href="#">Contact</a>
                </li>
            </ul>
        </div>
<br></br>
        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="content-header">            
                <h1>
                    <a id="menu-toggle" href="#" class="btn btn-default"><i class="icon-reorder"></i></a>
                    <span></span>
                    All Resource's Schedules
                </h1>
            </div>
            <!-- Keep all page content within the page-content inset div! -->
            <div class="page-content inset">
                <div class="row">
                    <div class="col-md-12">
                        <c:if test="${not empty msg}">
			<div class="alert alert-${css} alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<strong>${msg}</strong>
			</div>
		</c:if>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>ScheduleID</th>
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
                    </div>
                    
                </div>
            </div>
        </div>
	<!-- Custom JavaScript for the Menu Toggle -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    </script>

</body>
</html>