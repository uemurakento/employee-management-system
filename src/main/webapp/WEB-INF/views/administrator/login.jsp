<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>従業員管理システム</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<!-- 上余白 -->
		<div class="row">
			<div class="col-lg-offset-0 col-lg-6 col-md-8 col-sm-10 col-xs-12">
				<img src="img/header_logo.png">
			</div>
		</div>
<!-- 		<div class="row"> -->
<!-- 			<div class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8 col-sm-10 col-xs-12"> -->
<!-- 				<h2>従業員管理システム</h2> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<!-- login form -->
		<div class="row">
			<div class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8 col-sm-10 col-xs-12">
				<!-- 背景をグレーに、埋め込んだようなコンポーネント -->
				<div class="well">
					<form:form modelAttribute="administratorForm" action="${pageContext.request.contextPath}/login">
						<fieldset>
							<legend>ログイン</legend>
							<div class="form-group">
								<label class="control-label" style="color: red" for="inputError">メールアドレスまたはパスワードが間違っています</label>
							</div>
							<div class="form-group">
								<label for="inputEmail">メールアドレス:</label>
								<form:input path="mailAddress" class="form-control" placeholder="Email"/>
							</div>
							<div class="form-group">
								<label for="inputPassword">パスワード:</label>
								<form:password path="password" id="inputPassword" class="form-control" placeholder="password"/>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">ログイン</button>
							</div>
							<div class="form-group">
								<a href="${pageContext.request.contextPath}/insert">管理者登録はこちらから</a>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<!-- end container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>