/**
 * Created by luer on 2018-3-17-0017.
 */
var demo;
$(function() {
    var homeNavData=[
            {
                title: '机房巡检',
                children: [
                    {title: '设备状态检测', url: '/luer/jsp/labInspect/labInspect.jsp'},
                    {title: '机房环境检测#', url: '/luer/jsp/labInspect/environmentIns.jsp'},
                    {title: '机房异物检测', url: '/luer/jsp/infoProcess/InfoProcess.jsp'},
                    {title: '机房异常声音检测', url: '/luer/jsp/reportForm/reportForm.jsp'}
                ]
            },
            {
                title: '巡检方案管理',
                children: [
                    {title: '日常例行路线#', url: '/luer/jsp/InspectManage/routManage.jsp'},
                    {title: '调度式', url: '/luer/jsp/labInspect/labInspect.jsp'},
                    {title: '自主巡检', url: '/luer/jsp/InspectManage/inspectManage.jsp'},
                    {title: '机房施工管理', url: '/luer/jsp/infoProcess/InfoProcess.jsp'},
                    {title: '机器人自我维护', url: '/luer/jsp/reportForm/reportForm.jsp'}
                ]
            },
            {
                title: '巡检信息处理',
                children: [
                    {title: '音、视频信息', url: '/luer/jsp/indexContent.jsp'},
                    {title: '设备状态分析及告警#', url: '/luer/jsp/infoProcess/alarmProcess.jsp'},
                    {title: '设备故障预判', url: '/luer/jsp/InspectManage/inspectManage.jsp'},
                    {title: '巡检结果生成及发布', url: '/luer/jsp/infoProcess/InfoProcess.jsp'}
                ]
            },
            {
                title: '报表统计管理',
                children: [
                    {title: '巡检报表#', url: '/luer/jsp/reportForm/inspectRep.jsp'},
                    {title: '故障统计', url: '/luer/jsp/reportForm/errorRateForm.jsp'},
                    {title: '网络可用性', url: '/luer/jsp/InspectManage/inspectManage.jsp'},
                    {title: '自定义报表', url: '/luer/jsp/infoProcess/InfoProcess.jsp'}
                ]
            },
            {
                title: '电子地图',
                children: [
                    {title: '二维电子地图#', url: '/luer/jsp/electMap/DimenElectMap.jsp'},
                    {title: '实时显示位置', url: '/luer/jsp/labInspect/labInspect.jsp'}
                ]
            }
        ];
    Vue.component('item', {
        template: '#item-template',
        props: {
            model: Object
        },
        data: function () {
            return {
                selected: "主页"
            }
        },
        methods: {
            selectNav: function(title,event){
                if(demo.selectedNav==title) return ;
                demo.selectedNav=title;
                var selectedNav=event.currentTarget;
                var ContenSrc=selectedNav.getAttribute("data-url");
                var iframeS="<iframe src="+ContenSrc+" ></iframe>";
                $("iframe").remove();
                $(".homeContent").append(iframeS);
            }
        }
    });
    // boot up the demo
    demo = new Vue({
        el: '#homepageNav',
        data: {
            treeData: homeNavData,
            open:"主页",
            selectedNav:"主页"
        },
        methods:{
            toggle: function (title,event) {
                    if(this.open == title){
                        this.open="主页";
                    }else{
                        this.open = title;
                    }
            }
        }
    });


});
