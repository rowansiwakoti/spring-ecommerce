<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/style.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
	
		<!-- Navigation -->
		<%@ include file="./shared/navbar.jsp"%>

		<div class="content">
		
			<!-- Loads home Content when a user requests /home -->
			<c:if test="${userClickHome == true}">
				<%@ include file="home.jsp"%>
			</c:if>

			<!-- Loads About Us Content -->
			<c:if test="${userClickAbout == true}">
				<%@ include file="about.jsp"%>
			</c:if>


			<!-- Loads Contact Us Content -->
			<c:if test="${userClickContact == true}">
				<%@ include file="contact.jsp"%>
			</c:if>
			
		</div>
		
		<!-- Footer -->
		<%@ include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>

		<!-- My Custom JS -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>

