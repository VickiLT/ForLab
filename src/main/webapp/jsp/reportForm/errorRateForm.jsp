<%--
  Created by IntelliJ IDEA.
  User: luter
  Date: 2018-4-4-0004
  Time: 下午 6:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath();
    /*String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";*/
%>
<html>
<head>
    <title>设备故障率统计</title>
    <title>首页</title>
    <link href="<%=path%>/css/static/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/css/reporFormC/errorRateFormC.css" rel="stylesheet">
    <!-- js开始-->
    <script src="<%=path%>/js/static/jquery.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=path%>/js/static/vue.js" type="text/javascript"></script>
    <script src="<%=path%>/js/reportForm/errorRateFormJ.js" type="text/javascript"></script>
</head>
<body>
<div id="errorRateF">
    <form id="rateSearch">
        Search <input name="query" v-model="rateSearchQuery">
    </form>
    <demo-grid
            :data="rateGridData"
            :columns="rateGridColumns"
            :filter-key="rateSearchQuery">
    </demo-grid>

</div>
</body>
<script type="text/x-template" id="rateGrid-template">
    <table  class="table table-bordered table-hover">
        <thead>
        <tr>
            <th v-for="key in columns"
                @click="sortBy(key)"
                :class="{ active: sortKey == key }">
                <span v-if="key==='deviceName'">设备</span>
                <span v-else-if="key==='errorRate'">故障率(%)</span>
          <span class="arrow" :class="sortOrders[key] > 0 ? 'asc' : 'dsc'">
          </span>
            </th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="entry in filteredData">
            <td v-for="key in columns">
                {{entry[key]}}
            </td>
        </tr>
        </tbody>
    </table>
</script>
</html>
