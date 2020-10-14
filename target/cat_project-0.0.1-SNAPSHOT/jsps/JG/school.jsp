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

<c:import url="../utlis/background.jsp"/>
<c:import url="../utlis/broadside.jsp"/>
<div style="width: 1300px; height: 1000px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <h3 style="">学习中心管理</h3>
    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>省份</label>
        <select style="width: 150px;height: 30px">
            <option>-请选择-</option>
            <option>选择一</option>
            <option>选择二</option>
        </select>
    </div>
    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>城市</label>
        <select style="width: 150px;height: 30px">
            <option>-请选择-</option>
            <option>选择一</option>
            <option>选择二</option>
        </select>
    </div>
    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>区域管理中心</label>
        <select style="width: 150px;height: 30px">
            <option>-请选择-</option>
            <option>选择一</option>
            <option>选择二</option>
        </select>
    </div>

    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>状态</label>
        <input type="" name=" ">
    </div>
    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>学习中心编号</label>
        <input type="" name=" ">
    </div>

    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <button class="btn btn-primary">查询</button>
    </div>


    <div style="margin: 40px; margin-top: 120px; box-shadow: 0 0 4px black; height: 620px; padding: 10px;">
        <div style="text-align: right">
            <button class="btn btn-primary" style="background-color: #4CAF50;
           border: none;
            color: white;
            padding: 15px 32px;
            text-align: right;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;" onclick="addSchool()">+新增学习中心
            </button>
        </div>
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
            pageNumber:1,
            pageSize:5,
            pageList:[5,10,15],
            pagination:true,
            sidePagination:'client',  //客户端分页'client'    服务端分页'server'
            //post提交，默认不写get
            mehtod:'post',
            //发送到服务器的数据编码类型，设置form表单传输编码
            contentType:"aplication/x-www-form-urlencoded;charset=UTF-8",
            striped:true,//斑马线

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
                        if (value == 1) {
                            return "启用";
                        } else {
                            return "禁用";
                        }
                    }
                }, {
                    title: '操作',
                    formatter: function (value, row, index) {
                        return "<button class='btn btn-primary'><a href='/jsps/JG/schoolUpdate.jsp' style='color: white'>编辑</a></button>" +
                            "<button class='btn btn-primary'><a onclick='delSchoolCenter("+row.id+")' style='color: white'>删除</a></button>" +
                            "<button class='btn btn-primary'><a href='/jsps/JG/schoolUserManage.jsp' style='color: white'>用户管理</a></button>" +
                            "<button class='btn btn-primary'><a href='/jsps/JG/surgicalDrape.jsp' style='color: white'>报名点管理</a></button>"
                    }
                }
            ]
        })
    }


    function addSchool() {
        location.href = "/jsps/JG/schoolAdd.jsp"
    }
    
    function delSchoolCenter(id) {
        var msg = "确定删除吗？";
        if (confirm(msg)==true){
            $.ajax({
                url:'/school/delSchoolCenter',
                type:'post',
                data:{"id":id},
                dataType:'json',
                success:function (data) {
                    if (data){
                        alert("删除成功")
                        window.location.reload();
                    }else {
                        alert("出错了")
                    }
                },
                error:function (data) {
                    alert("Error")
                }
            })
        }else{
            return false;
        }
    }


</script>
</html>
