<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>${fns:getConfig('productName')}|登录</title>

<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7//font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7//css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7//css/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7//css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7//css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css"
	rel="stylesheet">
</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen animated fadeInDown">
		<div>
			<div>

				<h2 class="logo-name">git</h2>

			</div>
			<br />
			<h3>Welcome to jeegit</h3>
			<p>
				快速开发平台.
				<!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
			</p>
			<p></p>
			<div class="header">
				<div id="messageBox"
					class="alert alert-error ${empty message ? 'hide' : ''}">
					<button data-dismiss="alert" class="close">×</button>
					<label id="loginError" class="error">${message}</label>
				</div>
			</div>
			<form class="m-t" id="loginForm" role="form" action="${ctx}/login"
				method="post">
				<div class="form-group">
					<input id="username" name="username" type="text"
						class="form-control" placeholder="用户名" required="">
				</div>
				<div class="form-group">
					<input id="password" name="password" type="password"
						class="form-control" placeholder="密码" required="">
				</div>

				<c:if test="${isValidateCodeLogin}">

					<sys:validateCode name="validateCode"
						inputCssStyle="margin-bottom:0;" />

				</c:if>

				<button type="submit" class="btn btn-primary block full-width m-b">登录</button>

				<a href="#"><small>忘记密码?</small></a>
				<p class="text-muted text-center">
					<small>还没有帐号?</small>
				</p>
				<a class="btn btn-sm btn-white btn-block" href="register.html">注册</a>
			</form>
			<p class="m-t">
				<small>jeegit v1.0 企业级快速开发平台 &copy; 2017</small>
			</p>
		</div>
	</div>

	<!-- Mainly scripts -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
