<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/sample/bootHeader.jsp"></c:import>
</head>
<body>
<c:import url="/WEB-INF/views/sample/header.jsp"></c:import>

<div class="container">
		<div class="row">
			<h1>상품 등록 페이지</h1>
		</div>
		<div class="row">
			<form action="/department/add" method="post">
				<div class="mb-3">
					<label for="product_name" class="form-label">상품명</label>
					<input type="text" class="form-control" id="product_name" name="product_name">
				</div>
				<div class="mb-3">
					<label for="product_rate" class="form-label">이자율</label>
					<input type="text" class="form-control" id="product_rate" name="product_rate">
				</div>
				<div class="mb-3">
					<label for="product_ex" class="form-label">상품 설명</label>
					<input type="text" class="form-control" id="product_ex" name="product_ex">
				</div>
				
				<button type="submit" class="btn btn-primary">등록</button>
			</form>

		</div>

	</div>

<c:import url="/WEB-INF/views/sample/bootFooter.jsp"></c:import>
</body>
</html>