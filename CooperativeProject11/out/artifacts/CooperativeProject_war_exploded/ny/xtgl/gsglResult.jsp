<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Untitled Document</title>

    <script language="JavaScript">
        function doDBClick(url,operator,type) {
            if (operator == false) {
                document.forms[0].action = url + "&op=view";
                document.forms[0].submit();
            } else {
                document.forms[0].action = url;
                document.forms[0].submit();
            }
        }
    </script>
</head>

<body>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <%--<td nowrap align="center" width="4%">--%>
            <%--<input type="checkbox" name="checkbox" id="checkbox"></td>--%>
        <td nowrap align="center" width="6%">编号</td>
        <td width="31%" align="center" nowrap id=".name" >帐号</td>
        <td width="38%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true">名称</div></td>
    </tr>
    <c:forEach items="${companyList}" var="company">
        <tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
            <%--<td nowrap align="center" width="4%"><input type="checkbox" name="checkbox3" id="checkbox3"></td>--%>
            <td nowrap align="center" width="6%">${company.cid} </td>
            <td align="center" nowrap>${company.caccount} </td>
            <td height="14" align="center" nowrap>${company.canme} </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
