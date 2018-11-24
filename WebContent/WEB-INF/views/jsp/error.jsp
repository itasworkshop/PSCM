<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="fragments/index.jsp" />

<body>
	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand">&nbsp;</li>
				<li><a href="https://www.google.com">Dashboard</a></li>
				<li><a href="#">Shortcuts</a></li>
				<li><a href="#">Overview</a></li>
				<li><a href="#">Events</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<br></br>
		<!-- Page content -->
		<div id="page-content-wrapper">
			<div class="content-header">
				<h1>
					<a id="menu-toggle" href="#" class="btn btn-default"><i
						class="icon-reorder"></i></a> <span></span> <h1>Error Page</h1>
				</h1>
			</div>
			<!-- Keep all page content within the page-content inset div! -->
			<div class="page-content inset">
				<div class="container">

					

					<p>${exception.message}</p>
					<!-- Exception: ${exception.message}.
		  	<c:forEach items="${exception.stackTrace}" var="stackTrace"> 
				${stackTrace} 
			</c:forEach>
	  	-->

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