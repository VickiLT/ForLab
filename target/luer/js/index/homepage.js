/**
 * Created by luer on 2018-3-17-0017.
 */
$(function() {
    var homepageNav= new Vue({
        el: '#homepageNav',
        data: {
            isSelect: '主页',
            items: [
                {title: '主页', url: '#'},
                {title: '机房巡检', url: '#'},
                {title: '巡检方案管理', url: '#'},
                {title: '巡检信息管理', url: '#'},
                {title: '报表统计管理', url: '#'},
                {title: '电子地图', url: '#'}

            ]
        }
    });
});