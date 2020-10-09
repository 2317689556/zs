<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/9
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>报名点信息查询</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/bootstrap/table/bootstrap-table.js"></script>
    <script src="/static/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/static/cxCalendar/js/jquery.cxcalendar.languages.js"></script>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/static/cxCalendar/css/jquery.cxcalendar.css">
</head>
<script>
    $(function () {
        $("#surgicalDrapeTableId").bootstrapTable({
            url: "/school/surgicalDrape",
            pageNumber: 1,
            pageSize: 5,
            pageList: [10, 15, 20],
            pagination: true,
            sidePagination: 'client', //客户端分页    服务端分页'server'
            //post提交，默认不写get
            mehtod: 'post',
            //发送到服务器的数据编码类型，设置form表单传输编码
            contentType: "aplication/x-www-form-urlencoded;charset=UTF-8",
            striped: true,//斑马线
            queryParams: function () {
                return {
                    id: $("#tab_id").val(),
                }
            },
            columns: [
                {
                    field: 'dtNumber',
                    title: '报点编号'
                }, {
                    field: 'dtName',
                    title: '名称'
                }, {
                    field: 'scname',
                    title: '所属学习中心'
                }, {
                    field: 'dtState',
                    title: '状态'
                }, {
                    title: '操作',
                    formatter: function (value, row, index) {
                        return "<a href=''>用户信息</a>"
                    }
                }
            ]
        })
    })
</script>
<body>
<c:import url="../utlis/background.jsp"/>
<c:import url="../utlis/broadside.jsp"/>
<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <h3 style="margin-bottom: 40px">学习中心管理</h3>
    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 620px; padding: 10px;">
        <table id="surgicalDrapeTableId"></table>
    </div>
</div>

</body>
</html>
