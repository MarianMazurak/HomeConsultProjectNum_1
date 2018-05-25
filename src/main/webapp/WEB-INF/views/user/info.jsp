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
		<div class="row">
			<div class="span4 well">
				<div class="row">
					<div class="span1">
						<a href="http://critterapp.pagodabox.com/others/admin"
							class="thumbnail"><img
							src="http://critterapp.pagodabox.com/img/user.jpg" alt=""></a>
					</div>
					<div class="span3">
						<p>${ userInfo.email }</p>
						<p>
							<strong>${ userInfo.firstName }</strong>
						</p>
						<p>
							<strong>${ userInfo.lastName }</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>