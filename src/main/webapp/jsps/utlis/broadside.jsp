<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div style="float: left; margin: 0 0 0 100px; opacity: 0.8;">
    <div class="content">
        <ul class="vertical-nav dark red" style="text-align: center;">
            <li class="active"><a href="/jsps/index.jsp"><i class="icon-home"></i>首页
                <span class="submenu-icon"></span></a>
            </li>
           <%-- <c:if test="${USER.uRole==1||USER.uRole==2}">--%>
                <li><a href="#"><i class="icon-question"></i>机构信息管理
                    <span class="submenu-icon"></span></a>
                        <%--权限1，2可查看--%>
                    <ul>
                            <li>
                                <a  href="/jsps/JG/school.jsp">学习中心管理</a>
                                <ul>
                                    <li>
                                        <a href="/jsps/JG/schoolUserManage.jsp">学习中心用户管理</a>
                                    </li>
                                </ul>
                            </li>
                    </ul>
                </li>
        <%-- </c:if>--%>
            <%--<c:if test="${USER.uRole==1||USER.uRole==2}">--%>
                <li><a href="#"><i class="icon-briefcase"></i>招生管理
                    <span class="submenu-icon"></span></a>--%>
                        <%--权限1，2可查看--%>
                      <ul>
                          <li>
                              <a>基础信息</a>
                              <ul>
                                  <li>
                                      <a class="menu3" href="/jsps/ZS/UCManagement.jsp">高校编码管理</a>
                                  </li>
                              </ul>
                          </li>

                          <li>
                              <a>招生计划</a>
                              <ul>
                                  <li>
                                      <a class="menu3" href="/jsps/ZS/recruitMajor.jsp">招生专业管理</a>
                                  </li>
                                  <li>
                                      <a class="menu3">招生时间管理</a>
                                  </li>
                                  <li>
                                      <a class="menu3">课程进修生授权</a>
                                  </li>
                              </ul>
                          </li>

                          <li>
                              <a>招生信息</a>
                              <ul>
                                  <li>
                                      <a href="/jsps/ZS/IDCardManage.jsp">身份证读取信息管理</a>
                                  </li>
                                  <li>
                                      <a class="menu3">身份证读取信息统计</a>
                                  </li>
                                  <li>
                                      <a class="menu3">报名信息录入</a>
                                  </li>
                                  <li>
                                      <a class="menu3">报名信息管理</a>
                                  </li>
                                  <li>
                                      <a class="menu3">打印学生信息登记表</a>
                                  </li>
                                  <li>
                                      <a class="menu3">报名信息查询</a>
                                  </li>
                                  <li>
                                      <a class="menu3">报名录取统计</a>
                                  </li>
                              </ul>
                          </li>

                      </ul>
                  </li>
            <%--</c:if>--%>




            <%--<c:if test="${USER.uRole==1||USER.uRole==2}">--%>

            <li><a href="#"><i class="icon-cogs"></i>录取管理
                <span class="submenu-icon"></span></a>
                <%--权限1，2可查看--%>
                <ul>
                    <li><a href="/jsps/purchaseRequest.jsp">报名信息审核</a>
                    </li>
                    <li><a href="/jsps/stockOut.jsp">新生录取管理</a>
                    </li>
                    <li><a href="/jsps/abnormal.jsp">录取信息查询</a>
                    </li>
                    <li><a href="/jsps/abnormal.jsp">录取通知书打印情况查询</a>
                    </li>
                    <li><a href="/jsps/abnormal.jsp">录取名册导出</a>
                    </li>
                    <li><a href="/jsps/abnormal.jsp">网站首页录取查询</a>
                    </li>
                </ul>
            </li>
        <%--</c:if>--%>





        <%--<c:if test="${USER.uRole==1}">
        <li><a href="#"><i class="icon-group"></i>账号管理<span class="submenu-icon"></span></a>
            <ul>
                    <li><a href="/jsps/user.jsp">用户管理</a></li>
            </ul>
        </li>
        </c:if>--%>

        <%--<li><a href="/jsps/venderList.jsp"><i class="icon-question"
                                              style="padding-left: 20px;width: 20px;padding-right: 35px;"></i>厂家、代理管理</a>
        </li>--%>
        <c:if test="${USER.uRole==2||USER.uRole==1}">
            <li><a href="/jsps/log.jsp"><i class="icon-bar-chart"></i>统计</a></li>
        </c:if>
        </ul>

    </div>
</div>