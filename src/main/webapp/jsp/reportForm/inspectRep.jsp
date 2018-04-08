<%--
  Created by IntelliJ IDEA.
  User: luter
  Date: 2018-3-19-0019
  Time: 下午 12:11
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath();
    /*String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";*/
%>

<html>
<head>
    <title>机房巡检报表统计管理</title>
    <link href="<%=path%>/css/static/bootstrap.min.css" rel="stylesheet">
    <!-- js开始-->
    <script src="<%=path%>/js/static/jquery.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/vue.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/echarts.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/reportForm/inspectRepJ.js" type="text/javascript"></script>
</head>

<div>此处是机房巡检报表统计管理页面</div>
<div id="temperatureForm"style="width: 100%;height:50%;"></div>

</html>
