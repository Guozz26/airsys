<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List,aviation.entity.po.AviationFlight;" %>

<!DOCTYPE html>
<html>

<head>
<title>首页</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="/aviation/assets/css/bootstrap.css">
</head>
<body>
	<h3 align="center"> 航班计划 </h3>
	<hr color="red">
	<div class="container" align="center">
	<table class="table table-striped">
		<tr>
			<th>ID</th>
			<th>出发地</th>
			<th>目的地</th>
			<th>出发时间</th>
			<th>到达时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${lists}" var="list">
			<tr>
				<td>${list.flightId}</td>
				<td>${list.flightFrom }</td>
				<td>${list.flightTo }</td>
				<td>${list.flightFromTime }</td>
				<td>${list.flightToTime }</td>
				<td>
					<a href="lists/${list.flightId}">查看详细信息</a>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	<%-- <ul style="list-style:none;display:flex;justify-content:space-around;font-size:20px;color:#000;">
		
		
		<li><a href="listacts?pageNo=${pageNo-1}&pageSize=5" id='${pageNo}'>&lt;&lt;</a></li>
	
		<c:forEach var="index" begin="1" end="${pager.total}">
		<li><a href="listacts?pageNo=${index}&pageSize=5">${index}</a></li>
		</c:forEach>

		<li><a href="listacts?pageNo=${pageNo+1}&pageSize=5" id='${pageNo}'>&gt;&gt;</a></li>
	</ul> --%>
	</div>
</body>

</html>
