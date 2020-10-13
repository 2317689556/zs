<%--
  Created by IntelliJ IDEA.
  User: HQKJ
  Date: 2020/10/12
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>身份证信息管理</title>
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
    <h3 style="">身份证信息读取管理</h3>
    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>学习中心</label>
        <select style="width: 150px;height: 30px">
            <option>-请选择-</option>
            <option>选择一</option>
            <option>选择二</option>
        </select>
    </div>

    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>姓名</label>
        <input type="" name=" ">
    </div>
    <div style="float: left;margin-left: 20px;margin-top: 20px">
        <label>证件号</label>
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
            font-size: 16px;" onclick="addSchool()">+添加
            </button>
        </div>
        <div style="text-align: left">
            <button class="btn btn-primary" style="background-color: #4CAF50;
           border: none;
            color: white;
            padding: 15px 32px;
            text-align: right;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;" onclick="outIdentity()">导出到Excel
            </button>
        </div>
        <table id="identity_id">
        </table>
    </div>
</div>


</body>
<script>
    $(function () {
        $("#identity_id").bootstrapTable({
            url: "/student/showIdentity",
            pageNumber:1,
            pageSize:5,
            pageList:[5,10,15],
            pagination:true,
            sidePagination:'server',  //客户端分页'client'    服务端分页'server'
            //post提交，默认不写get
            mehtod:'post',
            //发送到服务器的数据编码类型，设置form表单传输编码
            contentType:"aplication/x-www-form-urlencoded;charset=UTF-8",
            striped:true,//斑马线
            cache:false,
            queryParams:function (param) {//请求参数
                return{
                    limit:param.limit,
                    offset:param.offset,
                    //id:$("#table_id").val(),
                }
            },
            responseHandler:function (res) {//处理服务器返回数据
                return{
                    "total":res.total,
                    "rows":res.list
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
                    field: 'slSchoolName',
                    title: '学习中心'
                }, {
                    field: 'stName',
                    title: '姓名'
                }, {
                    field: 'stIdcard',
                    title: '证件号'
                }, {
                    field: 'stBirthday',
                    title: '出生日期'
                }, {
                    field: 'stSex',
                    title: '性别',
                    formatter: function (value, row, index) {
                        if (value == 1) {
                            return "男";
                        } else {
                            return "女";
                        }
                    }
                },  {
                    field: 'stNation',
                    title: '民族'
                },  {
                    field: 'stOffice',
                    title: '发证机关'
                },  {
                    field: 'stEndTime',
                    title: '证件有效期'
                },  {
                    field: 'stAddress',
                    title: '住址'
                },  {
                    field: 'stPhone',
                    title: '手机号'
                }, {
                    title: '操作',
                    formatter: function (value, row, index) {
                        return "<button class='btn btn-primary'><a href='' style='color: white'>删除</a></button>"
                    }
                }
            ]
        });
    });
    
    function outIdentity() {
        $.ajax({
            url:'/student/outIdentity',
            type:'post',
            dataType:'json',
            success:function (data) {
                if (data){
                    alert("导出成功")
                }else {
                    alert("导出失败")
                }

            },
            error:function (data) {
                alert("Error")
            }
        })
    }
    
    
</script>

</html>
