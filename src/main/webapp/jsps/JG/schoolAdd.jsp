<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>学习中心--新增学习中心</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/bootstrap/js/bootstrap-fileinput.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.languages.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-fileinput.css">
    <link rel="stylesheet" href="/cxCalendar/css/jquery.cxcalendar.css">
</head>
<body>


<c:import url="../utlis/background.jsp"/>
<c:import url="../utlis/broadside.jsp"/>
<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <h3 style="margin-bottom: 40px">新增学习中心</h3>

    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 650px;width: 1200px;overflow: scroll; padding: 10px;">
        <form method="get" action="/school/">
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">学习中心基本信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>
            <div style="margin-left: 170px; width: 140px;height: 25px">
                <div style="float: left;"><i style="color: red">*</i>&nbsp;省份&nbsp;&nbsp;&nbsp;
                    <select id="province">
                        <option>-请选择-</option>
                    </select>
                </div>
            </div>
            <div style="margin-left: 170px; margin-top:5px; width: 140px;height: 25px">
                <div style="float: left;"><i style="color: red">*</i>&nbsp;城市&nbsp;&nbsp;&nbsp;
                    <select id="city">
                        <option>-请选择-</option>
                    </select>
                </div>
            </div>
            <div style="margin-left: 114px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;学习中心全称</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstname" name="slSchoolName" style="width: 150px;height: 27px">
                    </div>
                </div>
            </div>

            <div class="form-group" style="margin-left: 114px; margin-top:10px; width: 1000px;height: 35px">
                    <div style="float: left;width: 95px;margin-top: 3px" >
                        <i style="color: red">*</i>&nbsp;学习中心编号
                    </div>
                    <div class="col-sm-10" style="float: left;width: 70px">
                        <input type="text" class="form-control" id="1" name="slNumber" style="width: 50px;height: 27px">
                    </div>
                    <div style="float: left;width: 250px;margin-top: 5px">
                         <i style="color: red;font-size: 10px">(编号为四位，不足四位的请补0，如0101)</i>
                    </div>
            </div>

           <%-- <div class="form-group" style="margin-left: 80px; margin-top:1px; width: 1000px;height: 35px">
                <div style="float: left;width: 130px;margin-top: 3px" >
                    <i style="color: red">*</i>&nbsp;校外学习中心代码
                </div>
                <div class="col-sm-10" style="float: left;width: 120px">
                    <input type="text" class="form-control" id="2" style="width: 100px;height: 27px">
                </div>
                <div style="float: left;width: 100px;margin-top: 5px">
                    <i style="color: red;font-size: 10px">代码为八位数</i>
                </div>
            </div>--%>

            <div style="margin-left: 80px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px;width: 130px"><i style="color: red">*</i>&nbsp;校外学习中心全称</div>
                    <div class="col-sm-10" style="float: left;width: 160px">
                        <input type="text" class="form-control" id="3" name="slOuterName" style="width: 150px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 80px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px;width: 130px"><i style="color: red">*</i>&nbsp;区域管理中心</div>
                    <div class="col-sm-10" style="float: left;width: 160px">
                        <select id="quyu" name="slDistrictId">
                            <option>-请选择-</option>
                        </select>
                    </div>
                </div>
            </div>

            <div style="margin-left:120px;margin-top:5px; width: 540px;height: 35px">
                <div style="float: left">
                    状态
                </div>
                <div style="float: left; width: 30%;" class="mui-radio">
                    <label>启用</label>
                    <input id="Gender_male" name="slState" value="1" class="gender" type="radio" checked="true"/>
                </div>
                <div style="float: left; width: 30%" class="mui-radio">
                    <label>停用</label>
                    <input id="Gender_female" name="slState" value="0" class="gender" type="radio">
                </div>
            </div>


            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">学习中心联系信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div style="margin-left: 139px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;联系地址</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="5" name="syAddress" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;负责人姓名</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="6" name="syName" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;负责人电话</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="7" name="syPhone" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;负责人邮箱</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="8" name="syEmail" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <%--<div style="margin-left: 134px; margin-top:5px; width: 700px;height: 35px">
            <div class="form-group">
                <div style="float: left;margin-top: 3px">联系人姓名</div>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="9" style="width: 200px;height: 27px">
                </div>
            </div>
             </div>

            <div style="margin-left: 134px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px">联系人电话</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="10" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 134px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px">联系人邮件</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="11" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>--%>


            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">依托单位信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div style="margin-left: 113px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;依托单位名称</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="12" name="ssName" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 90px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px;width: 100px"><i style="color: red">*</i>&nbsp;依托单位信息</div>

                    <div class="col-lg-6" style="float: left;width: 300px">
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ssNature" style="height: 27px;width: 200px;">
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-6 -->
                </div>
            </div>

            <div style="margin-left: 75px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 130px"><i style="color: red">*</i>&nbsp;依托单位法人代码</div>
                    <div class="col-sm-10" style="float: left;width: 150px">
                        <input type="text" class="form-control" id="14" name="ssCode" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">审批信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div style="margin-left: 105px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 100px"><i style="color: red">*</i>&nbsp;审批通过时间</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="date" class="form-control" id="15" name="slStartTime" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;批文号</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="16" name="slApproval" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <br><br>
            <div style="height: 10px;width: 220px;margin-left: 35px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">学习中心平台管理员信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <%--<div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;姓名</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="17" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>--%>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;用户名</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="18" name="syUsername" style="width: 200px;height: 27px">
                    </div>
                    <div style="float: left;width: 150px">
                        <button type="button" style="height: 30px" class="btn btn-info" onclick="XuXi()">用户名检测</button>
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;密码</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="19" name="syPassword" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;确认密码</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="20" onblur="bur()" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <br><hr><br><br>
            <div style="width: 1200px;">
                <div style="width: 50px;float: left;margin-left: 450px">
                    <button class="btn btn-success">返回</button>
                </div>

                <div style="width: 50px;margin-left: 100px;float: left">
                    <input type="submit" class="btn btn-danger" value="提交">
                </div>
            </div>
        </form>
            <%--<br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">报名点基本信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>


            <div style="margin-left: 126px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;报名点名称</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="21" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 127px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px">报名点地址</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="22" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 127px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px">联系人</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="23" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 127px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px">电子邮箱</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="24" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 122px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 85px">报名咨询电话</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="25" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 127px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px">备注</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="26" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left:120px;margin-top:5px; width: 540px;height: 35px">
                <div style="float: left">
                    状态
                </div>
                <div style="float: left; width: 30%;" class="mui-radio">
                    <label>启用</label>
                    <input id="27" name="gender" class="gender" type="radio" checked="true"/>
                </div>
                <div style="float: left; width: 30%" class="mui-radio">
                    <label>停用</label>
                    <input id="28" name="gender" class="gender" type="radio">
                </div>
            </div>

            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">报名点基本信息</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;姓名</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="29" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;用户名</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="30" name="" style="width: 200px;height: 27px">
                    </div>
                    <div style="float: left;width: 150px">
                        <button type="button" style="height: 30px" class="btn btn-info">用户名检测</button>
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;密码</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="31" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 125px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group" style="width: 600px;">
                    <div style="float: left;margin-top: 3px;width: 80px"><i style="color: red">*</i>&nbsp;确认密码</div>
                    <div class="col-sm-10" style="float: left;width: 200px">
                        <input type="text" class="form-control" id="32" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>--%>

            <br><br>
            <div style="height: 10px;width: 320px;margin-left: 400px;margin-top: 150px"><span class="glyphicon glyphicon-folder-open"></span><strong style="font-size: 18px;font-style: oblique">&nbsp;北京学习中心三证合一证明材料</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">统一社会信用代码证</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div class="container">
                <div class="page-header">
                    <%--<form>--%>
                        <div class="form-group" id="uploadForm" enctype='multipart/form-data'>
                            <div class="fileinput fileinput-new" data-provides="fileinput"  id="exampleInputUpload">
                                <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                    <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="/images/noimage.png" alt="" />
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                        <span class="btn btn-primary btn-file">
                            <span class="fileinput-new">选择文件</span>
                            <span class="fileinput-exists">换一张</span>
                            <input type="file" name="pic1" id="picID" accept="image/gif,image/jpeg,image/x-png">
                        </span>
                                    <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                </div>
                            </div>
                        </div>
                        <button type="button" id="uploadSubmit" class="btn btn-info">提交</button>
                    <%--</form>--%>
                </div>
            </div>

            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">办学许可证</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div class="container">
                <div class="page-header">
                    <%--<form>--%>
                        <div class="form-group" id="uploadForm2" enctype='multipart/form-data'>
                            <div class="fileinput fileinput-new" data-provides="fileinput"  id="exampleInputUpload2">
                                <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                    <img id='picImg2' style="width: 100%;height: auto;max-height: 140px;" src="/images/noimage.png" alt="" />
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                        <span class="btn btn-primary btn-file">
                            <span class="fileinput-new">选择文件</span>
                            <span class="fileinput-exists">换一张</span>
                            <input type="file" name="pic1" id="picID2" accept="image/gif,image/jpeg,image/x-png">
                        </span>
                                    <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                </div>
                            </div>
                        </div>
                        <button type="button" id="uploadSubmit2" class="btn btn-info">提交</button>
                    <%--</form>--%>
                </div>
            </div>

            <br><br>
            <div style="height: 10px;width: 220px"><span class="glyphicon glyphicon-pushpin"></span><strong style="font-size: 18px;font-style: oblique">法人身份证</strong></div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div class="container">
                <div class="page-header">
                    <%--<form>--%>
                        <div class="form-group" id="uploadForm3" enctype='multipart/form-data'>
                            <div class="fileinput fileinput-new" data-provides="fileinput"  id="exampleInputUpload3">
                                <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                    <img id='picImg3' style="width: 100%;height: auto;max-height: 140px;" src="/images/noimage.png" alt="" />
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                        <span class="btn btn-primary btn-file">
                            <span class="fileinput-new">选择文件</span>
                            <span class="fileinput-exists">换一张</span>
                            <input type="file" name="pic1" id="picID3" accept="image/gif,image/jpeg,image/x-png">
                        </span>
                                    <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                </div>
                            </div>
                        </div>
                        <button type="button" id="uploadSubmit3" class="btn btn-info">提交</button>
                    <%--</form>--%>
                </div>
            </div>




    </div>

</div>


</body>

<script type="text/javascript">
    
    
    
    function bur() {
       //alert("输入框失去了焦点");
        var a = $("#19").val();
        var b = $("#20").val();
        if(a!=b){
            alert("两次输入的密码不一致！")
        }

    }
    
    
    
    /*用户名检测*/
    function XuXi(){
        /*var syUsername=document.getElementsByName('syUsername');*/
        var syUsername = $('input[name="syUsername"]').val();
        $.ajax({
            url:"/syudy/nameFindByName?syUsername=" + syUsername,
            type: "post",
            success: function(data){
                if(data.msg=="suc"){
                    alert("用户名可以使用");
                }else if(data.msg=="error"){
                    alert("用户名重复");
                }
            }
        })
    }


    /*区域管理中心*/
    $(function () {
        $.post("/syudy/quyuAll",function (data) {
            var str="";
            $.each(data,function (i,n) {
                str += "<option value='"+n.id+"'name='slDistrictId'>"+n.asName+"<option>";
            })
            $("#quyu").html(str);
        },"json")

    })



    /*查询省份*/
    $(function(){
        $.post("/school/shengAll",function (data) {
            var str="";
            $.each(data,function (i,n) {
                str += "<option value='"+n.id+"'name='slAreaId'>"+n.areaName+"<option>";
            })
            $("#province").html(str);
        },"json")
    })

    /*查询城市*/

        $("#province").change(function () {
            var pid = $(this).val();
            if(!pid){
                return;
            }

            $.post("/school/shiAll",{"pid":pid},function (data) {
                var str="";
                $.each(data,function (i,n) {
                    str += "<option>"+n.areaName+"<option>";
                })
                $("#city").html(str);
            },"json")

        })

    $(function () {

        /*证件上传*/
        //比较简洁，细节可自行完善
        $('#uploadSubmit').click(function () {
            var data = new FormData($('#uploadForm')[0]);
            $.ajax({
                url: 'xxx/xxx',
                type: 'POST',
                data: data,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    console.log(data);
                    if(data.status){
                        console.log('upload success');
                    }else{
                        console.log(data.message);
                    }
                },
                error: function (data) {
                    console.log(data.status);
                }
            });
        });

    })
</script>
</html>
