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
                url: "/user/userFandAll",
                method: "get",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                sidePagination: "server",
                pageSize: 8,
                columns: [
                    {
                        field: 'id',
                        title: '序号',
                        formatter: function (value, row, index) {
                            return index + 1;
                        }
                    }, {
                        field: 'hlNumber',
                        title: '高校编码'
                    }, {
                        field: 'hlName',
                        title: '高校名称'
                    },{
                        field: 'id',
                        title: '操作',
                        formatter: function (value, row, index) {
                            return "<input type=\"button\" class=\"btn btn-primary\" onclick=\"deleteUser3('"+value+"')\" value=\"删除\"><input type=\"button\" class=\"btn btn-primary\" onclick=\"modifyUser1('"+value+"')\" value=\"修改\" style=\"margin-left: 1em\">";
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
<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black; text-align: left;">
    <center><h3 style="margin-bottom: 40px">招生管理</h3></center>
    <a href="javascript:ovid()" id="ads_add" class="btn btn-primary" style="margin: 0 0 0 40px">添加</a>
    <div class="sort_list" style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 620px; padding: 10px">
        <table id="tab1"></table>
    </div>
</div>
</body>


<!-- 添加的模态框（Modal） -->
<div class="modal fade" id="myModalAdd2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" action="##" id="adduser2">
                    <div class="form-group">
                        <div class="col-sm-7" id="div01">
                            <input type="hidden" id="addareaId" name='userId'/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">高校编码</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="addusername" name="username"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">高校名称</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="password" name="password"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10" style="text-align: right; margin-top: 30px;">
                            <button id="sendMail" onclick="addUser2()" type="button" class="btn btn-primary">提交</button>
                            <button type="reset" class="btn btn-primary" style="margin: 0 100px 0 1em">重置</button>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>

<!-- 修改的模态框（Modal） -->
<div class="modal fade" id="myModalUpdate3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="updateForm" action="##" id="updateUser4">
                    <div class="form-group">
                        <div class="col-sm-7" id="div02">
                            <input type="hidden" id="updateuserId" name='id'/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">高校编码</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="updateuserName" name="username"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">高校名称</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="updatepassword" name="password"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10">
                            <button id="sendMai2" type="button" onclick="updateUser3()" class="btn btn-primary">确定修改
                            </button>
                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                            <button type="reset" class="btn btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>



</html>
<script>

    /*刷新页面*/
    function shuaXin() {
        $('#tab1').bootstrapTable('refresh');
    }


    /*******添加高校*********/
    $('#ads_add').on('click', function () {
        $("#myModalAdd2").modal("show");
    });

    function addUser2() {

        var form = new FormData($("#adduser2")[0]);
        $.ajax({
            //几个参数需要注意一下
            type: "post",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "${pageContext.request.contextPath}/user/addUser",//url
            data: form,
            processData: false,
            contentType: false,
            success: function (data) {


                $("#myModalAdd2").modal("hide");
                alert("添加成功");
                window.location.reload();
            },
            error: function () {
                alert("请求失败！！！！");
            }
        })
    }
    /* 配合修改的单查*/
    function modifyUser1(id) {
        alert(id)
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/user/findUserById",
            data: {"id": id},
            dataType: "json",
            success: function (data) {
                $("#myModalUpdate3").modal("show");
                $("#updateuserId").val(data.id);
                $("#updateuserName").val(data.username);
                $("#updatepassword").val(data.password);
                $("option[value=" + data.gradeId + "]").attr("selected", true);
            },
            error: function (msg) {
                alert(11)
            }
        });
    }
    /* 修改 */
    function updateUser3() {
        debugger
        var form = new FormData($("#updateUser4")[0]);

        $.ajax({
            //几个参数需要注意一下
            type: "post",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "${pageContext.request.contextPath}/user/updateUser",//url
            data: form,
            processData: false,
            contentType: false,
            success: function (data) {

                $("#myModalUpdate3").modal("hide");
                alert("修改成功");
                /*window.location.reload();*/
                shuaXin();

            },
            error: function () {
                alert("请求失败！！！！");

            }

        })
    }

    /*删除高校*/
    function deleteUser3(id) {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            return deleteUser4(id);
        }else{
            return false;
        }
    }
    function deleteUser4(id) {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/user/deleteUser",
            data:{"id":id},
            success:function () {
                alert("删除成功")
                shuaXin();
            },
            error: function () {
                alert("失败了");
            }
        })
    }
</script>