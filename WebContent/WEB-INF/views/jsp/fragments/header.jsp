<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
<title>PSCM</title>

<spring:url value="/resources/bootstrap-4.1.3-dist/css/hello.css" var="coreCss" />
<spring:url value="/resources/bootstrap-4.1.3-dist/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>

<spring:url value="/" var="urlHome" />
<spring:url value="/users/add" var="urlAddUser" />

<nav class="navbar navbar-light bg-dark">
  <div class="container">
		<div class="navbar-header">
			<a class="navbar-brand mb-0 h1" href="${urlHome}">PRODUCTION SCHEDULING AND CAPACITY MANAGEMENT</a>
		</div>
	</div>
</nav>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="true">Dropdown</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Separated link</a>
    </div>
    
</nav>