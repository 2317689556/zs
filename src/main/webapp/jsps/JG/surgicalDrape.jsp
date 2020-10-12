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
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/trap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.languages.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/cxCalendar/css/jquery.cxcalendar.css">
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
                }
            ]
        })
    })

    function clickUser() {
        $("#showUserModal").modal("show");
    }
    $(function () {
        $("#showUser").bootstrapTable({
            url: "/school/showSchoolUser",
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
            columns: [
                {
                    field: 'id',
                    title: '编号',
                    formatter: function (value, row, index) {
                        return index + 1;
                    }
                }, {
                    field: 'syName',
                    title: '姓名'
                }, {
                    field: 'syUsername',
                    title: '用户名'
                }, {
                    field: 'syState',
                    title: '状态',
                    formatter: function (value, row, index) {
                        if (value == 1) {
                            return "启用";
                        } else {
                            return "禁用";
                        }
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
<%--查看用户信息模态框--%>
<div class="modal fade" id="showUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">学习中心用户添加</h4>
            </div>
            <div class="modal-body">
                <table id="showUser"></table>

            </div>
        </div>
    </div>
</div>
</body>
</html>
