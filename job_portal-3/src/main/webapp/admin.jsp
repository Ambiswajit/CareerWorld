<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img{
background: url("img/admin.jpg");
height: 60vh;
width: 70%;
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all_component/navbar.jsp"%>


	<div class="text-center">
		<h1 class="text-black p-4">Welcome</h1>
	</div>
	  <div class="container-fluid back-img">
	  </div>
	
</body>
</html>