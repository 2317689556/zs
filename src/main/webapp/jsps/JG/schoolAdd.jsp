<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>学习中心--新增学习中心</title>
</head>
<body>

<c:import url="../utlis/background.jsp"/>
<c:import url="../utlis/broadside.jsp"/>
<div style="width: 1300px; height: 800px; border:1px solid rgba(0,0,0,0.6); float: left; margin: 50px 0px 0px 60px; box-shadow: 0 0 8px black;">
    <h3 style="margin-bottom: 40px">新增学习中心</h3>

    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 650px;width: 1200px;overflow: scroll; padding: 10px;">
        <form>
            <div style="height: 10px;width: 120px">学习中心基本信息</div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>
            <div style="margin-left: 170px; width: 140px;height: 25px">
                <div style="float: left;"><i style="color: red">*</i>&nbsp;省份&nbsp;&nbsp;&nbsp;
                    <select>
                        <option>-请选择-</option>
                        <option>河南省</option>
                        <option>河北省</option>
                        <option>广东省</option>
                    </select>
                </div>
            </div>
            <div style="margin-left: 170px; margin-top:5px; width: 140px;height: 25px">
                <div style="float: left;"><i style="color: red">*</i>&nbsp;城市&nbsp;&nbsp;&nbsp;
                    <select>
                        <option>-请选择-</option>
                        <option>汝南县</option>
                        <option>平舆县</option>
                        <option>新蔡县</option>
                    </select>
                </div>
            </div>
            <div style="margin-left: 114px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;学习中心全称</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="firstname" style="width: 150px;height: 27px">
                    </div>
                </div>
            </div>

            <div class="form-group" style="margin-left: 114px; margin-top:10px; width: 1000px;height: 35px">
                    <div style="float: left;width: 95px;margin-top: 3px" >
                        <i style="color: red">*</i>&nbsp;学习中心编号
                    </div>
                    <div class="col-sm-10" style="float: left;width: 70px">
                        <input type="text" class="form-control" id="" style="width: 50px;height: 27px">
                    </div>
                    <div style="float: left;width: 250px;margin-top: 5px">
                         <i style="color: red;font-size: 10px">(编号为四位，不足四位的请补0，如0101)</i>
                    </div>
            </div>

            <div class="form-group" style="margin-left: 80px; margin-top:1px; width: 1000px;height: 35px">
                <div style="float: left;width: 130px;margin-top: 3px" >
                    <i style="color: red">*</i>&nbsp;校外学习中心代码
                </div>
                <div class="col-sm-10" style="float: left;width: 120px">
                    <input type="text" class="form-control" id="2" style="width: 100px;height: 27px">
                </div>
                <div style="float: left;width: 100px;margin-top: 5px">
                    <i style="color: red;font-size: 10px">代码为八位数</i>
                </div>
            </div>

            <div style="margin-left: 80px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px;width: 130px"><i style="color: red">*</i>&nbsp;校外学习中心全称</div>
                    <div class="col-sm-10" style="float: left;width: 160px">
                        <input type="text" class="form-control" id="3" style="width: 150px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left:121px;margin-top:5px; width: 540px;height: 35px">
                <div style="float: left;">区域管理中心&nbsp;&nbsp;&nbsp;
                    <select style="width: 200px">
                        <option>-请选择-</option>
                        <option>选择一</option>
                        <option>选择二</option>
                    </select>
                </div>
            </div>

            <div style="margin-left:120px;margin-top:5px; width: 540px;height: 35px">
                <div style="float: left">
                    状态
                </div>
                <div style="float: left; width: 30%;" class="mui-radio">
                    <label>启用</label>
                    <input id="Gender_male" name="gender" class="gender" type="radio" checked="true"/>
                </div>
                <div style="float: left; width: 30%" class="mui-radio">
                    <label>停用</label>
                    <input id="Gender_female" name="gender" class="gender" type="radio">
                </div>
            </div>

            <br>
            <div style="height: 10px;width: 120px">学习中心联系信息</div>
            <div style="width: 1000px">
                <hr style="color: red">
            </div>

            <div style="margin-left: 139px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;联系地址</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="5" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 139px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;负责人姓名</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="6" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 139px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;负责人电话</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="7" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 139px; margin-top:5px; width: 700px;height: 35px">
                <div class="form-group">
                    <div style="float: left;margin-top: 3px"><i style="color: red">*</i>&nbsp;负责人邮箱</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="8" style="width: 200px;height: 27px">
                    </div>
                </div>
            </div>

            <div style="margin-left: 139px; margin-top:5px; width: 700px;height: 35px">
            <div class="form-group">
                <div style="float: left;margin-top: 3px">联系人姓名</div>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="9" style="width: 200px;height: 27px">
                </div>
            </div>
        </div>


        </form>
    </div>

</div>


</body>

<script>


</script>
</html>
