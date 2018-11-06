<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
		<!-- 上余白 -->
		<div class="row">
			<div class="col-lg-offset-0 col-lg-6 col-md-8 col-sm-10 col-xs-12">
				<img src="${pageContext.request.contextPath}/img/header_logo.png">
			</div>
		</div>
		<!-- login form -->
		<div class="row">
			<div class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8 col-sm-10 col-xs-12">
				<!-- 背景をグレーに、埋め込んだようなコンポーネント -->
				<div class="well">
					<form:form modelAttribute="administratorForm" action="${pageContext.request.contextPath}/registration">
						<fieldset>
							<legend>管理者登録<br>(システムにログインできる管理者を登録します)</legend>
							<!-- 氏名 -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<label for="inputSubjectName">
											氏名:
										</label>
										<label class="control-label" style="color: red" for="inputSubjectName">
											氏名を入力してください
										</label>
										<form:input path="name" id="inputSubjectName" class="form-control" placeholder="山田太郎"/>
									</div>
								</div>
							</div>
							<!-- メールアドレス -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<label for="inputSubjectEmail">
											メールアドレス:
										</label>
										<label class="control-label" style="color: red" for="inputSubjectEmail">
											メールアドレスを入力してください
										</label>
										<form:input path="mailAddress" id="inputSubjectEmail" class="form-control" placeholder="yamada@mail.com"/>
									</div>
								</div>
							</div>
							<!-- パスワード -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<label for="inputPassward">
											パスワード:
										</label>
										<label class="control-label" style="color: red" for="inputPassward">
											パスワードを入力してください
										</label>
										<form:password path="password" id="inputPassward" class="form-control" placeholder="password"/>
									</div>
								</div>
							</div>
							<!-- 登録ボタン -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<button type="submit" class="btn btn-primary">登録</button>
									</div>
								</div>
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
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>