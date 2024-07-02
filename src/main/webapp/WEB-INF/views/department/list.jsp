<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<h1>부서목록 페이지</h1>
	
	<div class = "row">
		<c:forEach items="${requestScope.info }" var = "m">
			<h3>${pageScope.m.id }</h3>
			<h3>${pageScope.m.sum }</h3>
			<h3>${pageScope.m.avg }</h3>
		</c:forEach>
	
	</div>


	<div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>부서 번호</th>
					<th>부서 명</th>
					<th>관리자 번호</th>
					<th>지역 번호</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${requestScope.list}" var="dto">
					<tr>
						<td>${pageScope.dto.department_id }</td>
						<td><a
							href="detail?department_id=${pageScope.dto.department_id }">${pageScope.dto.department_name }</a></td>
						<td>${pageScope.dto.manager_id }</td>
						<td>${pageScope.dto.location_id }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<div>
			<a href="add" class="btn btn-outline-primary">부서 등록</a>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
</body>
</html>