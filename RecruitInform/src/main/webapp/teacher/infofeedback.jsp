<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>通知反馈</title>

<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/base.css" rel="stylesheet">
<link href="../css/infodetails.css" rel="stylesheet">

<!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
</style>
</head>
<body>
	<div class="a_top">
		<div class="a_1949_bg"></div>
		<div class="a_logo">
			<a href="#"><img src="../images/a_logo.png" width="381"
				height="67"></a>
		</div>
	</div>
	<div class="clearfix c_warp_bor">
		<div class="c_warp">
			<div class="titlebar">
				<span>软件学院就业预测平台</span>
				<button onclick="window.location='logout.do'" class="btn btn-primary">注销</button>
			</div>
			<div class="c_content">
				<div class="cc_left col-md-2">
					<ul>
						<li class="active"><a href="infolist.do">通知列表</a></li>
						<li><a href="newInform.jsp">新建通知</a></li>
						<li><a href="sum.jsp">数据统计</a></li>
					</ul>
				</div>
				<div class="cc_right col-md-10">
					<div class="subtitle">
						<span>${message.title }</span>
					</div>
					<div class="subtitle-info">
						<span class="toexcel btn-default btn"><a
							href="export.do?messageId=${message.messageId }">导出为Excel</a></span> <span
							class="subtitle-time btn-default btn disabled">截止时间:${message.deadline
							}</span> <span class="subtitle-type btn-default btn disabled">类别:${message.type}</span>
					</div>

					<div class="ms-info-list table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>学号</th>
									<th>姓名</th>
									<th>Email</th>
									<th>岗位</th>
									<th>备注</th>
									<th>状态</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${viewlist}" var="infoview">
									<tr>
										<td>${infoview.studentId }</td>
										<td>${infoview.name }</td>
										<td>${infoview.mail }</td>
										<td>${infoview.job }</td>
										<td>${infoview.note }</td>
										<td>${infoview.returnResult(message.type)}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>


	<div class="a_footer">
		<div class="a_footer_p">
			<div class="a_copyright">
				<p>©版权所有：</p>
			</div>
		</div>
	</div>

	<script src="../js/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>