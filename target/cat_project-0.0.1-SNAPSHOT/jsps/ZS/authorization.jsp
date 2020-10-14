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
                url: "/school/engageFandAll",
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
                        field: 'slNumber',
                        title: '学习中心编号'
                    },{
                        field: 'slSchoolName',
                        title: '学习中心全称'
                    },{
                        field: 'slState',
                        title: '授权状态',
                        formatter: function (value, row, index) {
                            if (value == 1) {
                                return "<span>已授权</span>";
                            } else if (value == -1) {
                                return "<span class='third-item'>未授权</span>";
                            }
                        }
                    },{
                        field: 'id',
                        title: '操作',
                        formatter: function (value, row, index) {
                            if(row.slState==1){
                                return "<input type=\"button\" class=\"btn btn-primary\" onclick=updatschoolww('"+value+"') value=\"不授权\">"
                            }else   {
                                return "<input type=\"button\" class=\"btn btn-primary\" onclick=updatschoolww('"+value+"')  value=\"授权\">"
                            }
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
    <center><h3 style="margin-bottom: 40px">课程进修生授权</h3></center>
    <div style="width: 1000px;height: 100px;">


        <div style="float: left;margin-left: 50px;margin-top: 20px">
            <label>入学批次</label>
            <input type="text" name="slSchoolName" id="slSchoolName">
        </div>

        <div style="float: left;margin-left: 20px;margin-top: 20px">
            <label>学习中心</label>
            <input type="text" name="stName" id="name">
        </div>
        <div style="float: left;margin-left: 20px;margin-top: 20px">
            <label>报名时间状态设置 </label>
            <input type="text" name="stIdcard">
        </div>

        <div style="float: left;margin-left: 20px;margin-top: 20px">
            <button class="btn btn-primary" onclick="mohuFind()">查询</button>
        </div>
    </div>

    <div style="margin-left: 100px;float: left;">
        <a href="javascript:ovid()" id="daochu" class="btn btn-primary" style="clear: both">导出</a>
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


    /* 是否授权*/
    function updatschoolww(id) {
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
            url:"${pageContext.request.contextPath}/school/updatewschool",
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