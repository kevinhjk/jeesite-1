<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>${fns:getConfig('productName')}</title>
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<!-- Toastr style -->
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/css/plugins/toastr/toastr.min.css"
	rel="stylesheet">
<!-- Gritter -->
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/gritter/jquery.gritter.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/css/animate.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/static/bootstrap/3.3.7/css/style.css"
	rel="stylesheet">
</head>

<body class="full-height-layout">
	<div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav metismenu" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span> <img alt="image" class="img-circle"
								src="img/profile_small.jpg" />
							</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<span class="clear"><span class="block m-t-xs"><strong
										class="font-bold">姚海陆</strong> </span><span
									class="text-muted text-xs block">管理员 <b class="caret"></b></span></span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="profile.html" target="mainFrame">博客</a></li>
								<li><a href="contacts.html" target="mainFrame">通讯录</a></li>
								<li><a href="mailbox.html" target="mainFrame">邮箱</a></li>
								<li class="divider"></li>
								<li><a href="login.html">注销</a></li>
							</ul>
						</div>
						<div class="logo-element">jeegit</div>
					</li>


					<c:forEach items="${fns:getMenuList()}" var="menu"
						varStatus="idxStatus">
						<c:if test="${menu.parent.id eq '1'&&menu.isShow eq '1'}">
							<li><c:if test="${empty menu.href}">
									<a href="#"><i class="fa fa-sitemap"></i><span
										class="nav-label">${menu.name}</span> <c:if
											test="${menu.childCount>0}">
											<span class="fa arrow"></span>
										</c:if></a>


									<c:if test="${menu.childCount>0}">

										<ul class="nav nav-second-level collapse">
											<c:forEach items="${menuList}" var="menu2">
												<c:if
													test="${menu2.parent.id eq menu.id&&menu2.isShow eq '1'}">
													<li><a target="mainFrame"
														href="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu2.href : '/404'}">${menu2.name}
															<span class="fa arrow"></span>
													</a> <c:if test="${menu2.childCount>0}">
															<ul class="nav nav-third-level">
																<c:forEach items="${menuList}" var="menu3">
																	<c:if
																		test="${menu3.parent.id eq menu2.id&&menu3.isShow eq '1'}">
																		<li><a target="mainFrame"
																			href="${fn:indexOf(menu3.href, '://') eq -1 ? ctx : ''}${not empty menu3.href ? menu3.href : '/404'}">${menu3.name}</a></li>
																	</c:if>
																</c:forEach>
															</ul>



														</c:if></li>
												</c:if>
											</c:forEach>


										</ul>

									</c:if>




								</c:if> <c:if test="${not empty menu.href}">
									<a
										href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${menu.href}"
										target="mainFrame"><i class="fa fa-sitemap"></i><span
										class="nav-label">${menu.name}</span><span class="fa arrow"></span></a>

								</c:if></li>
						</c:if>
					</c:forEach>






				</ul>

			</div>
		</nav>

		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
							href="#"><i class="fa fa-bars"></i></a>
					</div>
					<ul class="nav navbar-top-links navbar-right">
						<li><a href="${ctx}/logout"> <i class="fa fa-sign-out"></i>注销
						</a></li>

					</ul>

				</nav>
			</div>
			<div class="row J_mainContent" id="content-main"
				style="height: calc(100% - 100px);">
				<iframe class="J_iframe" id="mainFrame" name="mainFrame"
					width="100%" height="100%" src="clients.jsp" frameborder="0"
					data-id="clients.jsp" seamless></iframe>
			</div>

			<div class="footer">

				<div>
					<strong>Copyright</strong> jeegit team Company &copy; 2017-2020
				</div>
			</div>
		</div>

	</div>

	<!-- Mainly scripts -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Flot -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/flot/jquery.flot.spline.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/flot/jquery.flot.pie.js"></script>

	<!-- Peity -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/peity/jquery.peity.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/demo/peity-demo.js"></script>

	<!-- Custom and plugin javascript -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/inspinia.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/pace/pace.min.js"></script>

	<!-- jQuery UI -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/jquery-ui/jquery-ui.min.js"></script>

	<!-- GITTER -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/gritter/jquery.gritter.min.js"></script>

	<!-- Sparkline -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/sparkline/jquery.sparkline.min.js"></script>

	<!-- Sparkline demo data  -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/demo/sparkline-demo.js"></script>

	<!-- ChartJS-->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/chartJs/Chart.min.js"></script>

	<!-- Toastr -->
	<script
		src="${pageContext.request.contextPath}/static/bootstrap/3.3.7/js/plugins/toastr/toastr.min.js"></script>


</body>
</html>
