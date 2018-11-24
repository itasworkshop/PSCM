<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PSCM</title>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

    <!-- Add custom CSS here -->
    <link href="<c:url value="/resources/bootstrap-3.3.7-dist/css/modern-business.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap-3.3.7-dist/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/custom/css/simple-sidebar.css"/>" rel="stylesheet">


</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}">PRODUCTION SCHEDULING AND CAPACITY MANAGEMENT</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Configuration <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="portfolio-1-col">Station Rule</a>
                            </li>
                            <li><a href="portfolio-2-col">EUPH</a>
                            </li>
                            <li><a href="portfolio-3-col">QUEUE TIME</a>
                            </li>
                            <li><a href="portfolio-4-col">GOLDEN TOOL</a>
                            </li>
                             <li><a href="portfolio-5-col">SPECIAL CONFIG</a>
                            </li>
                            <li><a href="portfolio-item">Single Portfolio Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Scheduler Output <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="blog-home-1">Volume Schedule</a>
                            </li>
                            <li><a href="blog-home-2">Lot Schedule</a>
                            </li>
                            <li><a href="blog-post">Lot Report</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Capacity Reporting <b class="caret"></b></a>
                        <ul class="dropdown-menu">	
                            <li><a href="full-width">Shiftly Horizon</a>
                            </li>
                            <li><a href="sidebar">Day Horizon</a>
                            </li>
                            <li><a href="faq">Week Horizon</a>
                            </li>
                            <li><a href="404">Month Horizon</a>
                            </li>
                            <li><a href="pricing">Quarter Horizon</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
</body>

</html>