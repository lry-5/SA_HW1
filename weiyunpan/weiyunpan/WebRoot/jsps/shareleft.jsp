<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'shareleft.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<aside class="aside" id="aside" style="height: 209px;">
	<ul class="myshare_left">
		<li><a class="selectdynamic" href="<%=path %>/RedirectBase.do?method=isShareForward"> <span
				class="s_dynamic f-icon i-all-share all-icon"></span> <em
				class="s_dynamic">分享动态</em>
		</a></li>
		<li><a class="selectdynamic" href="<%=path %>/FileShareServlet.do?method=myShareForward"> <span
				class=" s_dynamic my-icon f-icon all-icon"></span> <em
				class="s_dynamic">我的分享</em>
		</a></li>
		<br />
		<br />
		<li><a class="selectdynamic" href="<%=path %>/FileFavoriteServlet.do?method=myfavorForward"> <span
				class=" s_dynamic  s-icon all-icon"></span> <em class="s_dynamic">我的收藏</em>
		</a></li>
	</ul>
	</aside>
</body>
</html>
