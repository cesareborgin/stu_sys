<%--
  Created by IntelliJ IDEA.
  User: CesareBorgia
  Date: 2020/4/4
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>学生信息管理后台</title>
    <link rel="shortcut icon" href="favicon.ico"/>
    <link rel="bookmark" href="favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/css/default.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src='${pageContext.request.contextPath}/easyui/js/outlook2.js'> </script>
    <script type="text/javascript">
        //主页侧边栏设计
        var _menus = {
            "menus":[
                <c:if test="${userType == 1}">
                {"menuid":"1","icon":"","menuname":"用户（管理员）",
                    "menus":[
                        {"menuid":"11","menuname":"用户列表","icon":"icon-user-teacher","url":"${pageContext.request.contextPath}/user/list"}
                    ]},
                </c:if>
                {"menuid":"2","icon":"","menuname":"学生信息管理",
                    "menus":[
                        {"menuid":"21","menuname":"学生列表","icon":"icon-user-student","url":"${pageContext.request.contextPath}/student/list"},
                    ]
                },
                {"menuid":"3","icon":"","menuname":"年级信息管理",
                    "menus":[
                        {"menuid":"31","menuname":"年级列表","icon":"icon-world","url":"${pageContext.request.contextPath}/grade/list"},
                    ]
                },
                {"menuid":"4","icon":"","menuname":"班级信息管理",
                    "menus":[
                        {"menuid":"41","menuname":"班级列表","icon":"icon-house","url":"${pageContext.request.contextPath}/clazz/list"},
                    ]
                },
            ]
        };
    </script>
</head>
<body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
    <noscript>
        <div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
              <img src="images/noscript.gif" alt='抱歉，请开启脚本支持！' />
        </div>
    </noscript>
    <div region="north" split="true" border="false" style="overflow: hidden; height: 30px;
        background:  #7f99be;
        line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
        <span style="float:right; padding-right:20px;" class="head"><span style="color:red; font-weight:bold;">${user.username}&nbsp;</span>您好&nbsp;&nbsp;&nbsp;<a href="login_out" id="loginOut">安全退出</a></span>
        <span style="padding-left:10px; font-size: 16px; ">学生信息管理系统</span>
    </div>
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer">Copyright &copy; STU By cesare</div>
    </div>
    <div region="west" hide="true" split="true" title="导航菜单" style="width:180px;" id="west">
        <div id="nav" class="easyui-accordion" fit="true" border="false">
            <!--  导航内容 -->
        </div>

    </div>    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
            <jsp:include page="welcome.jsp" />
        </div>
    </div>
</body>
</html>
