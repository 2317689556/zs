<%--
  Created by IntelliJ IDEA.
  User: HQKJ
  Date: 2020/10/9
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>学习中心用户管理</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/cxCalendar/css/jquery.cxcalendar.css">
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.languages.js"></script>

</head>
<body>
<c:import url="../utlis/background.jsp"/>
<c:import url="../utlis/broadside.jsp"/>
<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <h3 style="margin-bottom: 40px">学习中心用户管理</h3>
    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 620px; padding: 10px;">
        <div style="text-align: right"><button class="btn btn-primary"  style="background-color: #4CAF50;
           border: none;
            color: white;
            padding: 15px 32px;
            text-align: right;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;" id="addSchoolUser">+新增用户</button></div>
        <table id="schooluser_tab">
        </table>
    </div>
</div>


<!-- 学习中心用户添加 -->
<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">学习中心用户添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" action="##" id="addSchoolUser1">
                    <div class="form-group">
                        <div class="col-sm-7" id="div01">
                            <input type="hidden" id="addareaId" name='userId'/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">姓名：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="syName" name="syName"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">用户名：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="syUsername" name="syUsername"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">密码：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="syPassword" name="syPassword"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">邮箱：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="syEmail" name="syEmail"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">电话：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="syPhone" name="syPhone"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10" style="text-align: right; margin-top: 30px;">
                            <button id="sendMail" onclick="addSchoolUser()" type="button" class="btn btn-primary">提交</button>
                            <button type="reset" class="btn btn-primary" style="margin: 0 100px 0 1em">重置</button>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>

<!-- 修改 -->
<div class="modal fade" id="editSchoolUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="editUserForm" action="##" id="editSchoolUser">
                    <div class="form-group">
                        <div class="col-sm-7" id="div02">
                            <input type="hidden" id="editId" name='id'/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">用户名：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="susername" name="syUsername" />
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">姓名：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="sName" name="syName" disabled/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">状态：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="sState" name="syState" disabled/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10">
                            <button type="button" onclick="UpdateSchoolUser()" class="btn btn-primary">确定修改
                            </button>
                            <button type="reset" class="btn btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- 重置密码 -->
<div class="modal fade" id="changePassModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="editUserForm" action="/school/changePassword" id="changePass">
                    <div class="form-group">
                        <div class="col-sm-7" id="div1">
                            <input type="hidden" id="changeId" name='id'/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">姓名：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="name" name="syName" disabled/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">用户名：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="username" name="syUsername" disabled/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">密码：</label>
                        <div class="col-sm-7">
                            <input type="password" class="form-control" id="passowrd" name="syPassword"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">确认密码：</label>
                        <div class="col-sm-7">
                            <input type="password" class="form-control" id="rePassowrd"/>
                        </div>
                        <div class="col-sm-2">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10">
                            <button type="button" onclick="sendForm()" class="btn btn-primary">确定修改
                            </button>
                            <button type="reset" class="btn btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    usertab()

    function usertab() {
        $("#schooluser_tab").bootstrapTable({
            url: "/school/showSchoolUser",
            pageNumber: 1,
            pageSize: 3,
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
                },{
                    field: 'syState',
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
                        return "<button class='btn btn-primary'><a style='color: white' onclick='editSchoolUser("+row.id+")'>编辑</a></button>"+
                            "<button class='btn btn-primary'><a style='color: white' onclick='deleteSchoolUser("+row.id+")'>删除</a></button>"+
                            "<button class='btn btn-primary'><a style='color: white' onclick='changePass("+row.id+")'>重置密码</a></button>"
                    }
                }
            ]
        })
    }
    


  /*添加学习中心用户*/
    $('#addSchoolUser').on('click', function () {
        $("#addUserModal").modal("show");
    });
    function addSchoolUser() {
        var data = new FormData($("#addSchoolUser1")[0]);
        $.ajax({
            type: "post",
            dataType: "json",
            url: "${pageContext.request.contextPath}/school/addSchoolUser",
            data: data,
            processData: false,
            contentType: false,
            success: function (data) {
                $("#addUserModal").modal("hide");
                alert("添加成功");
                window.location.reload();
            },
            error: function () {
                alert("请求失败！！！！");
            }
        })

    }

    //修改查询
    function editSchoolUser(id) {
        $.ajax({
            url:'/school/editSchoolUser',
            data:{id:id},
            dataType:'json',
            type:'post',
            success:function (data) {
                if (data){
                    $("#editSchoolUserModal").modal("show");
                    $("#editId").val(data.id);
                    $("#susername").val(data.syUsername);
                    $("#sName").val(data.syName);
                    $("#sState").val(data.syState);
                }else {
                    alert("出错了")
                }
            },
            error:function (data) {
                alert("Error")
            }
        })
    }
    //修改
    function UpdateSchoolUser() {
        var formData = new FormData($("#editSchoolUser")[0]);
        $.ajax({
            type:'post',
            url:'/school/UpdateSchoolUser',
            data:formData,
            dataType:'json',
            processData: false,
            contentType: false,
            success:function (data) {
                if (data){
                    $("#editSchoolUserModal").modal("hide");
                    alert("修改成功")
                    window.location.reload();
                }else {
                    alert("出错了")
                }
            },
            error:function (data) {
                alert("Error")
            }
        })
    }

    //删除用户
    function deleteSchoolUser(id) {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"/school/deleteSchoolUser",
            data:{"id":id},
            success:function () {
                alert("删除成功")
                window.location.reload();
            },
            error: function () {
                alert("失败了");
            }
        })

    }


    //重置密码查询
    function changePass(id) {
        $.ajax({
            url:'/school/editSchoolUser',
            data:{id:id},
            dataType:'json',
            type:'post',
            success:function (data) {
                if (data){
                    $("#changePassModal").modal("show");
                    $("#changeId").val(data.id);
                    $("#username").val(data.syUsername);
                    $("#name").val(data.syName);
                    $("#passowrd").val(data.syPassword);
                }else {
                    alert("出错了")
                }
            },
            error:function (data) {
                alert("Error")
            }
        })
    }

    $(function () {
        //密码操作
        $("#password").focus(function () {
            $(this).val("");
            $("#rePassword").val("");
        });
        $("#password").blur(function () {
            var password=$(this).val();
            if(!(/^\S{6,20}$/.test(password))){
                setError($(this),"密码由3-6位字母，数字和符号组合，区分大小写!");
            }else{
                setOk($(this));
            }
        });
        //确认密码
        $("#rePassword").blur(function () {
            var password=$("#password").val();
            var rePassword=$(this).val();
            if(null!=rePassword && rePassword==password){
                setOk($(this));
            }else{
                setError($(this),"确认密码和密码不一致，请重新输入！");
            }
        });
    })
    
    function sendForm() {
        $("#changePass").submit();
    }

    function setOk(obj){
        var _pdiv=obj.parents().parents(".form-group");
        if(_pdiv.hasClass("has-error")){
            _pdiv.removeClass("has-error");
        }
        _pdiv.addClass("has-success");
        obj.parents().nextAll("span.help-block").html("&nbsp;");
    }
    function setError(obj,str){
        var _pdiv=obj.parents().parents(".form-group");
        if(_pdiv.hasClass("has-success")){
            _pdiv.removeClass("has-success");
        }
        _pdiv.addClass("has-error");
        obj.parents().nextAll("span.help-block").html(str);
    }
</script>
</html>
