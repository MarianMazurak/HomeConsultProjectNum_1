<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglip.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${ rootURL }/resources/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<table class="table table-striped custab">
			<thead>
				<tr>
					<th>ID</th>
					<th>email</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th class="text-center">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ showUsers }" var="users">
			 <tr>
                <td>${ users.id }</td>
                <td><a href="${ rootURL }/user/email/${users.email}">${ users.email }</a></td>
                <td>${ users.firstName }</td>
                <td>${ users.lastName }</td>
                <td class="text-center">
                <a class='btn btn-info btn-xs' href="${ rootURL }/user/info/${ users.id }"><span class="glyphicon glyphicon-edit">
                </span> Info</a> 
                <a href="${ rootURL }/user/users/${users.id}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove">
                </span> Del</a></td>
            </tr>
			
			</c:forEach>
			</tbody>
			
			
		</table>
	</div>

</body>
</html>