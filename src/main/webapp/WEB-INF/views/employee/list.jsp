<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>従業員管理システム</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"> <!-- 企業ロゴ --> <img
						alt="main log" src="${pageContext.request.contextPath}/img/header_logo_small.png">
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${pageContext.request.contextPath}/employee/">従業員管理</a></li>
					</ul>
					<p class="navbar-text navbar-right">
						<a href="${pageContext.request.contextPath}/" class="navbar-link">ログアウト</a>
					</p>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<!-- パンくずリスト -->
		<ol class="breadcrumb">
			<li class="active"><a href="${pageContext.request.contextPath}/employee/">従業員リスト</a></li>
		</ol>

		<!-- table -->
		<div class="row">
			<div
				class="table-responsive col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>従業員名</th>
							<th>入社日</th>
							<th>扶養人数</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="employee" items="${employees}">
						<tr>
							<td><a href="${pageContext.request.contextPath}/employee/employeeinfo?id=${employee.id}"><c:out value="${employee.name}"/></a></td>
							<td><fmt:formatDate value="${employee.hiredate}"/></td>
							<td><c:out value="${employee.dependentsCount}"/>人</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- end container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>