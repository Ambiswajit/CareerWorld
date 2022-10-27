<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User : Single Jobs</title>
<%@include file="all_component/all_css.jsp"%>
<script>
function myFunction() {
  let text;
  if (confirm("Are sure!") == true) {
    text = "You pressed OK!";
  } else {
    text = "You canceled!";
  }
  document.getElementById("demo").innerHTML = text;
}
</script>
</head>

<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj }">
		<c:redirect url="ogin.jsp"/>
	</c:if>
	<%@include file="all_component/navbar.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<%
			int id=Integer.parseInt(request.getParameter("id"));
			JobDAO dao = new JobDAO(DBConnect.getConn());
			Jobs j = dao.getJobById(id);
			%>
			<div class="card mt-5">
				<div class="card-body">
					<div class="text-center text-primary">
						<i class="far fa-clipboard fa-2x"></i>
					</div>
					<h6><%=j.getTitle() %></h6>
					<p><%=j.getDescription() %></p>
					<br>
					<div class="form-row">
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Location: <%=j.getLocation() %>"readonly>
						</div>
						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Category: <%=j.getCategory() %>" readonly>
						</div>
						
					</div>
					<h6>
						Publish Date:
						<%=j.getPdate().toString()%>
					</h6>
					<div class="text-center">
						
								<button class="btn btn-primary" onclick="myFunction()">Apply</button>
						</div>
						
					
				</div>
			</div>
			</div>
		</div>
	</div>

</body>
</html>
