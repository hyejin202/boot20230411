<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<h1>고객목록</h1>
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>CONTACTNAME</th>
				<th>ADDRESS</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customerList }" var="customer">
				<tr>
					<td>${customer.id }</td>
					<td>${customer.name }</td>
					<td>${customer.contactName}</td>
					<td>${customer.address}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 페이지네이션 -->
	<div>
		<nav aria-label="Page navigation example">
			<ul class="pagination">

				<li class="page-item">
					<c:url value="/sun26/link1" var="pageLink">
						<c:param name="page" value="1"></c:param>
					</c:url>
					<a class="${pageLink }" class="page-link}">맨앞</a>
				</li>

				<!-- 이전 버튼 -->
				<c:if test="${prevPageNum ge 1}">
					<li class="page-item">
						<c:url value="/sun26/link1" var="pageLink">
							<c:param name="page" value="${prevPageNum }"></c:param>
						</c:url>
						<a class="${pageLink }" class="page-link}">이전</a>
					</li>
				</c:if>
				<!-- 페이지목록 -->
				<c:forEach begin="${leftPageNum }" end="${rightPageNum }" var="pageNumber">
					<!-- li.page-item>a.page-link -->
					<c:url value="/sun26/link1" var="pageLink">
						<c:param name="page" value="${pageNumber }"></c:param>
					</c:url>
					<li class="page-item">
						<a href="${page-link }" class="page-link ${pageNumber eq currentPageNumer ? 'active' : ''}">${pageNumber }</a>
					</li>
				</c:forEach>
				<!-- 다음 버튼 -->
				<c:if test="${nextPageNum le lastPageNum}">
					<li class="page-item">
						<c:url value="/sun26/link1" var="pageLink">
							<c:param name="page" value="${nextPageNum }"></c:param>
						</c:url>
						<a class="${pageLink }" class="page-link}">다음</a>
					</li>
				</c:if>
				
				<li class="page-item">
					<c:url value="/sun26/link1" var="pageLink">
						<c:param name="page" value="lastPageNum"></c:param>
					</c:url>
					<a class="${pageLink }" class="page-link}">맨뒤</a>
				</li>

			</ul>
		</nav>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>