<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>

<%@ include file="header.jsp"%>

<!--
<html>
<head>
<title>Thot - All Sessions</title>
<link rel="stylesheet" type="text/css" href="assets/bootstrap.css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
-->
<div class="container-fluid">

	<!--/span-->
	<div class="well well-small">
	<h1>All Open Spaces</h1>
	</div>
	
	<div style="float: right;">
			<a class="btn btn-primary" href="<%= request.getContextPath() %>/addSession">Add OpenSpace</a>
	</div>

	<br style="clear: both;"/>

	<div class="row-fluid">
<table class="table table-striped">
<thead>  
	<tr>
		<th>Day</th>
		<th>Start</th>
		<th>End</th>
		<th>Title</th>
		<th>Proposed by</th>
		<th>Description</th>
	</tr>
</thead>
<tbody>
<c:forEach items="${sessions}" var="session">
	<tr>
		<td>${session.date}</td>
		<td>${session.start}</td>
		<td>${session.end}</td>
		<td>${session.title}</td>
		<td>${session.author}</td>
		<td>${session.description}</td>
	</tr>
</c:forEach>
</tbody>
</table>
</div></div>
<%@ include file="footer.html"%>