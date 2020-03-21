<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html><head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../js/public.js"></script>
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
        <td nowrap align="center" width="5%">序号</td>
        <td width="13%" align="center" nowrap id=".name" >公司名称</td>
        <td width="14%" align="center" nowrap id=".name" >消费类型</td>
        <td width="10%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true"><strong>消费金额</strong></div></td>
        <td width="11%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>消费时间</strong></div></td>
        <td width="12%" align="center" nowrap id=".register" ><div align="center" orderBy="true"></div></td>
        <td width="21%" align="center" nowrap id=".register" >&nbsp;</td>
    </tr>


    <c:forEach items="${cardRecordList}" var="cardrecord">
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td nowrap align="center" width="5%">${cardrecord.record_id}</td>
        <td align="center" nowrap>${cardrecord.record_company_name}</td>
        <td align="center" nowrap>${cardrecord.type}</td>
        <td height="14" align="center" nowrap>${cardrecord.money}</td>
        <td align="center" nowrap>${cardrecord.date_time}</td>

    </tr>
    </c:forEach>
</table>
</body>
</html>