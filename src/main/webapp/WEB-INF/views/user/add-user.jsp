<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css">
</head>
<body>

	<h2 align="center">add User</h2>
	<div class="container">
	<form 
		class="form-horizontal"
		action="${ pageContext.request.contextPath }/user/add" 
		method="post">
		
		<div class="form-group">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" name="emails">
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">First Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="firstNames">
			</div>
		</div>
		
		<div class="form-group">
			<label  class="col-sm-2 control-label">Last Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="lastNames">
			</div>
		</div>
		
		
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Sign in</button>
			</div>
		</div>

	</form>
</div>
</body>
</html>