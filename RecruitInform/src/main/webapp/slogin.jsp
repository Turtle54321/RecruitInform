<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户登录</title>
<link href="css/sbase.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/slogin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/1.js"></script>
</head>
<body>
	<div class="a_top">
		<div class="a_1949_bg"></div>
		<div class="a_logo">
			<a href="#"><img src="./images/a_logo.png" width="381"
				height="67"></a>
		</div>
	</div>
	<div class="content">
		<div class="loginbox">
			<form id="form1" class="form-horizontal" action="student/login.do"
				method="post" onSubmit="return mycheck()">
				<div class="form-group">
					<label for="userName" class="col-xs-3 control-label">学号</label>
					<div class="col-xs-9">
						<input id="userName" name="studentId" type="text"
							class="form-control" placeholder="请输入学号">
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-xs-3 control-label">密码</label>
					<div class="col-xs-9">
						<input id="password" name="password" type="password"
							class="form-control" placeholder="请输入密码">
					</div>
				</div>
				<div class="divider"></div>

				<div class="form-group">
					<p class="col-xs-offset-2 col-xs-7">大工软院就业预测平台</p>
					<div class="col-xs-3">
						<button type="submit" class="btn btn-default">登录</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/1.js"></script>
	<script type="text/javascript" src="js/2.js"></script>
</body>
</html>