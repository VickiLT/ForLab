/**
 * Created by luer on 2018-3-17-0017.
 */
$(function() {
    var homepageNav= new Vue({
        el: '#homepageNav',
        data: {
            isSelect: '主页',
            items: [
                {title: '主页', url: '/luer/jsp/indexContent.jsp'},
                {title: '机房巡检', url: '/luer/jsp/labInspect/environmentIns.jsp'},
                {title: '巡检方案管理', url: '/luer/jsp/InspectManage/routManage.jsp'},
                {title: '巡检信息管理', url: '/luer/jsp/infoProcess/alarmProcess.jsp'},
                {title: '报表统计管理', url: '/luer/jsp/reportForm/inspectRep.jsp'},
                {title: '电子地图', url: '/luer/jsp/electMap.jsp'}

            ]
        },
        methods:{
            selectNav: function(title,event){
                this.isSelect=title;
                var selectedNav=event.currentTarget;
                var ContenSrc=selectedNav.getAttribute("data-url");
                var iframeS="<iframe src="+ContenSrc+" ></iframe>";
                $("iframe").remove();
                $(".homeContent").append(iframeS);
            }
        }
    });


});
