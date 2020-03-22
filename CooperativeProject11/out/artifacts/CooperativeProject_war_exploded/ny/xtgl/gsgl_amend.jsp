<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--修改company信息--%>
<form action="${pageContext.request.contextPath}/ny/xtgl/companyAdmin" method="post">
    <input type="hidden" name="reqType" value="xiugai">
    <tr>
        <td width="67%" align="left" class="text"  nowrap>
            &nbsp;编号：
            <input type="text" name="cid" maxlength="20"  size="12" value="${param.cid}" class="input"><br>
            &nbsp;帐号：
            <input type="text" name="caccount" maxlength="20"  size="12" value="${param.caccount}" class="input"><br>
            &nbsp;名称：
            <input type="text" name="canme" maxlength="20"  size="12" value="${param.canme}" class="input"><br>
            &nbsp; &nbsp; &nbsp; <a href="">更新</a>
            &nbsp; &nbsp; &nbsp; <a href="">重置信息</a>
        </td>
    </tr>
</form>

</body>
</html>
