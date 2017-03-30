<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="name" type="java.lang.String" required="true" description="验证码输入框名称"%>
<%@ attribute name="inputCssStyle" type="java.lang.String" required="false" description="验证框样式"%>
<%@ attribute name="imageCssStyle" type="java.lang.String" required="false" description="验证码图片样式"%>
<%@ attribute name="buttonCssStyle" type="java.lang.String" required="false" description="看不清按钮样式"%>




<div class="form-group">
	<div class="input-group">
		<input type="text" id="${name}" name="${name}" placeholder="验证码"
			class="form-control" required=""> <span
			class="input-group-btn">
			<button type="button" class="btn btn-primary">
				<img 
					src="${pageContext.request.contextPath}/servlet/validateCodeServlet"
					onclick="$('.${name}').attr('src','${pageContext.request.contextPath}/servlet/validateCodeServlet?'+new Date().getTime());"
					style="width:50px;height:18px;${imageCssStyle}"   class="mid ${name}"/>
			</button>
		</span>
	</div>
</div>







