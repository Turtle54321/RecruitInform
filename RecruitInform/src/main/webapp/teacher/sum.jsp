<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>数据统计</title>

<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/base.css" rel="stylesheet">

<!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
.sel-date {
	width: 400px;
	margin: 40px auto;
}

.sel-date div:first-child {
	position: relative;
	top: 7px;
	left: 10px;
}

.download-link {
	width: 400px;
	margin: 100px auto;
}

.download-link a {
	display: block;
	margin-bottom: 30px;
}
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
				<span>实习生就业服务系统</span>
					<button onclick="window.location='logout.do'" class="btn btn-primary">注销</button>
			</div>
			<div class="c_content">
				<div class="cc_left col-md-2">
					<ul>
						<li><a href="infolist.do">通知列表</a></li>
						<li><a href="newInform.jsp">新建通知</a></li>
						<li class="active"><a href="sum.jsp">数据统计</a></li>
					</ul>
				</div>
				<div class="cc_right col-md-10">
					<div class="subtitle">
						<span>数据统计下载</span>
					</div>

					<div class="sel-date">
						<div class="col-md-3">年份选择</div>
						<div class="col-md-9">
							<select name="year" class="form-control">
								<option value="2017" selected="selected">2017</option>
								<option value="2016">2016</option>
								<option value="2015">2015</option>
							</select>
						</div>
					</div>
					<div class="download-link">
						<a href="offerowner.do?type=-1" class="btn btn-primary">所有获得offer的同学</a>
						<a href="offerowner.do?type=1" class="btn btn-success">获得offer的同学中未拒绝过offer的同学</a>
						<a href="offerowner.do?type=0" class="btn btn-warning">获得offer的同学中拒绝过offer的同学</a>
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