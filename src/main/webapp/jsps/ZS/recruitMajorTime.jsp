<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>招生管理 高校编码管理</title>
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
    <script>
        $(function () {
            $("#tab1").bootstrapTable({
                url: "/wZcenroll/wZcenrollFandAll",
                method: "get",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                pagination:true,
                sidePagination: "client",
                pageSize: 5,
                columns: [
                    {
                        field: 'id',
                        title: '序号',
                        formatter: function (value, row, index) {
                            return index + 1;
                        }
                    }, {
                        field: 'elBatch',
                        title: '入学批次'
                    }, {
                        field: 'slNum',
                        title: '学习中心编号'
                    },{
                        field: 'slName',
                        title: '学习中心全称'
                    },{
                        field: 'elGradation',
                        title: '层次'
                    },{
                        field: 'elMajor',
                        title: '专业'
                    },{
                        field: 'elAllow',
                        title: '是否允许招生专业',
                        formatter: function (value, row, index) {
                            if (value == 1) {
                                return "<span>允许</span>";
                            } else if (value == -1) {
                                return "<span class='third-item'>不允许</span>";
                            }
                        }
                    },{
                        field: 'id',
                        title: '操作',
                        formatter: function (value, row, index) {
                            return "<input type=\"button\" class=\"btn btn-primary\" onclick=\"updateenroll('"+value+"')\" value=\"允许\"><input type=\"button\" class=\"btn btn-primary\" onclick=\"updateenroll2('"+value+"')\" value=\"不允许\">";
                        }
                    }
                ]
            })
        })
    </script>
</head>

<body>
<c:import url="../utlis/background.jsp"/>
<c:import url="../utlis/broadside.jsp"/>

<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <center><h3 style="margin-bottom: 40px">招生管理</h3></center>
    <div style="width: 1000px;height: 100px;">
    <div style="width: 300px;float: left;margin-left: 50px">
    <span style="float: left; font-size: 17px; line-height: 34px; margin-left: 40px; ">高校编码：</span>
        <input class="form-control date_1" id="date_1"  style="width: 150px; float: left;" onchange="shuaXin()">
    </div>

    <div style="width: 300px;float: left;margin-left: 50px">
    <span style="float: left; font-size: 17px; line-height: 34px; margin-left: 50px;">高校名称：</span>
    <input class="form-control date_1" id="date_2"  style="width: 150px;" onchange="shuaXin()">
    </div>
    <div style="width: 200px;float: left;margin-left: 50px">
        <button id="chaxun" onclick="cha1()" type="button" class="btn btn-primary">查询</button>
    </div>
    </div>

    <div style="margin-left: 100px;float: left;">
        <a href="javascript:ovid()" id="daochu" class="btn btn-primary" style="clear: both"><导出></导出></a>
    </div>

    <div class="sort_list" style="margin: 40px; margin-top: 10px; box-shadow: 0 0 4px black; height: 400px; padding: 10px;margin-top: 50px">
        <table id="tab1"></table>
    </div>
</div>
</body>








</html>
<script>

    /*刷新页面*/
    function shuaXin() {
        $('#tab1').bootstrapTable('refresh');
    }


    /*******添加高校*********/



    /* 是否允许招生 允许*/
    function updateenroll(id) {
        var msg = "您真的确定要更改吗吗？\n\n请确认！";
        if (confirm(msg)==true){
            return deleteenroll1(id);
        }else{
            return false;
        }
    }
    function deleteenroll1(id) {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/wZcenroll/updatewZcenroll",
            data:{"id":id},
            success:function () {
                alert("更改成功")
                shuaXin();
            },
            error: function () {
                alert("失败了");
            }
        })
    }


    /* 是否允许招生 不允许*/
    function updateenroll2(id) {
        var msg = "您真的确定要更改吗吗？\n\n请确认！";
        if (confirm(msg)==true){
            return updateenroll22(id);
        }else{
            return false;
        }
    }
    function updateenroll22(id) {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/wZcenroll/updatewZcenroll2",
            data:{"id":id},
            success:function () {
                alert("更改成功")
                shuaXin();
            },
            error: function () {
                alert("失败了");
            }
        })
    }
</script>