<%--
  Created by IntelliJ IDEA.
  User: HQKJ
  Date: 2020/10/8
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>学习中心</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.languages.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/cxCalendar/css/jquery.cxcalendar.css">
</head>
<body>

<c:import url="utlis/background.jsp"/>
<c:import url="utlis/broadside.jsp"/>
<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <h3 style="margin-bottom: 40px">学习中心管理</h3>
    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 620px; padding: 10px;">
        <table id="outBound_tab">
        </table>
    </div>
</div>


</body>

<script>
    tab()

    function tab() {
        $("#outBound_tab").bootstrapTable({
            url: "/school/showSchoolenter",
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
                    field: 'id',
                    title: '编号',
                    formatter: function (value, row, index) {
                        return index + 1;
                    }
                }, {
                    field: 'slNumber',
                    title: '学习中心编号'
                }, {
                    field: 'slSchoolName',
                    title: '学习中心全称'
                }, {
                    field: 'slOuterName',
                    title: '校外学习中心全称'
                }, {
                    field: 'areaName',
                    title: '省份'
                }, {
                    field: 'asName',
                    title: '区域管理中心'
                }, {
                    field: 'slState',
                    title: '状态',
                    formatter: function (value, row, index) {
                        if (value==1){
                            return "启用";
                        }else {
                            return "禁用";
                        }
                    }
                }, {
                    title: '操作',
                    formatter: function (value, row, index) {
                        return "<button><a href=''>操作</a></button>"+
                            "<button><a href=''>删除</a></button>"+
                            "<button><a href=''>用户管理</a></button>"+
                            "<button><a href=''>报名点管理</a></button>"
                    }
                }
            ]
        })
    }


</script>
</html>
