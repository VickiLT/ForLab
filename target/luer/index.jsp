<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath();
    /*String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";*/
%>
<html>
<head>
    <title>首页</title>
    <link href="<%=path%>/css/static/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/css/index/homepage.css" rel="stylesheet">
    <!-- js开始-->
    <script src="<%=path%>/js/static/jquery.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/vue.js" type="text/javascript"></script>

</head>
<body>

    <div class="container">
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">数据机房智能巡检系统</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-left pull-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理员 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header" >个人中心</li>
                                <li><a href="#">修改密码</a></li>
                                <li><a href="#">设置</a></li>
                                <li><a href="#">帮助</a></li>
                            </ul>
                        </li>
                    </ul>

                </div><!-- /.navbar-collapse -->
            </div>
        </nav>
        <div class="row" style="margin-top: 100px">
            <div class="col-md-3">
                <ul id="homepageNav" class="nav nav-pills nav-stacked nav-list">
                    <li  v-for="item in treeData" class="item divider homeNavLi" >
                        <a class="homeNavLiA" @click="toggle(item.title,$event)">{{item.title}} <span class="navImg">{{ open===item.title ? '' : '  》' }}</span></a>

                        <ul v-show="open===item.title"class="nav nav-pills nav-stacked homeNavChild">
                            <item
                                    class="item"
                                    v-for="(model,index) in item.children"
                                    :key="index"
                                    :model="model">
                            </item>
                        </ul>
                    </li>
                </ul>






            </div>


            <div class="col-md-9 homeContent">
                <iframe src="/luer/jsp/indexContent.jsp" ></iframe>
            </div>
        </div>
    </div>
</body>


<script type="text/x-template" id="item-template">
    <li @click="selectNav(model.isSelect,$event)" :data-url="model.url">
           <a :class='model.isSelect? "homeNavK active":"homeNavK" '> {{ model.title }}</a>
    </li>
</script>
<script src="<%=path%>/js/index/homepage.js" type="text/javascript"></script>
</html>
