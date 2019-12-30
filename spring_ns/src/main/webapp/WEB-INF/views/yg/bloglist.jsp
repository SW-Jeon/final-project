<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블로그 리스트</title>
</head>
<body>
<table class="table table-hover table-striped">
	<c:forEach var="vo" items="${list }">
		<tr>
		<td><img src="${cp}/resources/imgpro/${vo.bl_profile }" style="width: 200px; height:200px; border-radius: 50%"></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>