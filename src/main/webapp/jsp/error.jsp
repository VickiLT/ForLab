<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

<head>
    <title>Title</title>
    <link href="<%=basePath%>css/static/bootstrap.min.css" rel="stylesheet">
    <!-- js开始-->
    <script src="<%=basePath%>js/static/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>

</head>
<body>
登录失败
</body>
</html>
