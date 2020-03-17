<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/top.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/left.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/main_top.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/list_container.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/newfolder.css" />
		<style type="text/css">
			.navs .mod-head span{top: 0;color: #fff;line-height: 50px;}
			.navs .mod-head{position:absolute; width: 260px; height: 50px;float: left;right: 12px;}
			.navs .mod-head a{float: left;}
			.navs .mod-head .hyn{padding-left: 22px;line-height: 50px;font-size: 14px;}
			.navs .mod-head .sui{padding-left: 22px;font-size: 16px;font-family: arial;}
			.navs .mod-head span:hover{color: #0067FF}
			.bd{position: relative;z-index: 996;padding-top: 1px;box-shadow: 1px 1px 3px #000;}
			.bd .aside{position: absolute;top: 50px;left: 0; width: 143px;min-height: 800px;color: #fff;background-color:#252525 ;}
			.aside a{color: #fff;}
			.aside ul li:hover{background-color: #303030;}
			.s_dynamic{float: left;line-height: 33px;font-family: arial;font-size: 14px;}
			.selectdynamic{background-color: #252525; font-weight: bold;height: 35px; padding-left: 44px; display: block;position: relative;text-decoration: none;}
			.selectdynamic:hover{background-color: #000;color: #F0F0F0; border-radius: 5px;}
			.all-icon{background-image: url(<%=path %>/imgs/frame-icon.png);}
			.f-icon{position: absolute;top: 10px; left: 15px; display: block;height: 20px; width: 20px;}
			.i-all-share{background-position: -25px -48px;  background-repeat: no-repeat;}
			.i-all-share:hover{background-position: 0 -48px;}
			/*
			.myshare_left{padding: 23px 0 10px 0;position: relative;}
			.my-icon{background-position: -25px -68px; background-image: url(http://yun.baidu.com/ppres/static/images/frame-icon.png?t=201601052700?@=-1); background-repeat: no-repeat;}
			.my-icon:hover{background-position: 0 -68px;}*/
			.myshare_left{padding: 23px 0 10px 0;position: relative;}
			.my-icon{background-position: -25px -68px; background-repeat: no-repeat;}
			.my-icon:hover{background-position: 0 -68px;}
			.s-icon{position: absolute;top: 7px;left: 15px; display: block;height: 22px; width: 22px;z-index: 1000px;}
			.s-icon{background: url(<%=path %>/imgs/aside-app-icon.png); background-position: 0 -153px; background-repeat: no-repeat;}
		
			.myshare_left{padding: 23px 0 10px 0;position: relative;}
			.my-icon{background-position: -25px -68px; background-repeat: no-repeat;}
			.my-icon:hover{background-position: 0 -68px;}
			.s-icon{position: absolute;top: 7px;left: 15px; display: block;height: 22px; width: 22px;z-index: 1000px;}
			.s-icon{background: url(<%=path %>/imgs/aside-app-icon.png); background-position: 0 -153px; background-repeat: no-repeat;}
			
			/*main-content start*/
			.main-content{min-height: 800px; margin-left: 143px; padding-left: 1px;background: #ededf0;overflow-y: auto;position: relative;}
			.feed-method{font-size: 22px; text-align: center;position: relative;margin-top: 60px;height: 40px;
						line-height: 40px; background: -webkit-linear-gradient(#fff,#f7f7f7);}
			
			/*end main-content*/
			#feed{background:#ededf0 ;}
			.feed-panel{overflow: hidden;min-width: 830px;min-height: 460px;background: #ededf0;}
			.feed-top-link{height: 1px; background: #dadadd;margin: 0 3px 0 11px;font-size: 1px;}
			.column{float: left; vertical-align: top;position: relative;}
			.con-ul-li{display: inline-block;background: #fff;color: #666;font-size: 12px;margin: 15px 0 0 13px; width: 388px;box-shadow: 0 1px 3px rgba(0,0,0,.3);}
			.con-ul-li span{padding-left: 16px;font-size: 14px;}
			.a_cancel{cursor:pointer;color:green;}
			.a_cancel:hover{color:red;}
		</style>
	</head>

	<body>
		<div class="content">

			<!--top start-->
			<jsp:include page="top.jsp"></jsp:include>
			<!--top end-->
			<!--
        	作者：pamgogdpyc@163.com
        	时间：2016-01-05
        	描述：left
        	<div class="left" id="layoutAside">
			</div>
        	-->
        	
        	<section class="bd clearfix">
        		<!--left start-->
        		<jsp:include page="shareleft.jsp"></jsp:include>
        		<!--end left-->
        		
        		<section class="main-content" style="height: 209px;">
        			<header class="hd-feed">
        				<div class="feed-method">收藏的文件</div>
        			</header>
        			<section id="feed">
        				<div class="feed-panel">
        					<div class="feed-content">
        						<div class="feed-top-link"></div>
        						<c:forEach items="${fileInfos }" var="fileInfo">
        						<ul id="con-ul" class="column" style="width: 403px; height: auto;">
        							<li class="con-ul-li">
        								<div class="f-name">
        									<span class="file-title">文件名称：</span>
        									<span class="file-desc"><a href="<%=path %>/FileDownloadServlet.do?method=downloadFile&filename=${fileInfo.filename }&fileid=${fileInfo.id}" title="点击下载文件">${fileInfo.filename}</a>&nbsp;&nbsp;(点击下载)</span>
        								</div>
										<div class="share-name">
											<span class="file-title">分&nbsp;&nbsp;享&nbsp;&nbsp;人：</span>
											<span class="file-desc">${fileInfo.fileuser }</span>
										</div>
										<div class="share-name">
											<span class="file-title">文件大小：</span>
											<span class="file-desc"><fmt:formatNumber type="number" value="${fileInfo.size/1024 }" pattern="0.00" maxFractionDigits="2"/>kb</span>
										</div>
										<div class="share-time">
											<span class="file-title">分享日期：</span>
											<span class="file-desc">${fileInfo.change_time }</span>
										</div>
										<div class="share-time">
											<input type="hidden" name="fileid" value="${fileInfo.id }" />
											<%-- <a class="a_cancel" href="<%=path %>/FileFavoriteServlet.do?method=cancelfavorForward&fileid=${fileInfo.id}"  title="收藏文件"><span class="file-title">取消收藏</span></a>
											 --%>
											 <a class="a_cancel"  title="取消收藏文件"><span class="file-title">取消收藏</span></a>
											 <span class="file-desc"></span>
										</div>
        							</li>
        						</ul>
        						</c:forEach>
        					</div>
        				</div>
						
        			</section>
        		</section>
        	</section>
			
			<!--left end-->
			<!--
        	作者：pamgogdpyc@163.com
        	时间：2016-01-05
        	描述：main
        	-->
			<div class="main" id="layoutmain">


			</div>
		</div>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".a_cancel").click(function() {
				var filename=$(this).parent().parent().children("div:eq(0)").find("a").html();
				window.confirm("确定要取消"+filename+"文件吗？");
				var fileid = $(this).parent().find("input[name='fileid']").val();
				favor(fileid);
			});
		})
		function favor(id) {
			$.ajax({
				cache : false,
				url : "<%=path%>/FileFavoriteServlet.do",
				data : {
					method : "cancelfavorForward",
					fileid : id,
				},
				type : "POST",
				//请求成功返回的数据
				dataType:"json",
			});
		}
	</script>
	
	</body>

</html>