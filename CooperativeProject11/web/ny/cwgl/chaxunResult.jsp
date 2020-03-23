<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
      <td width="14%" align="center" nowrap id=".name" >客户名称</td>
      <td width="10%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true"><strong>介绍费</strong></div></td>
      <td width="11%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>成交日期</strong></div></td>
      <td width="12%" align="center" nowrap id=".register" ><div align="center" orderBy="true"><strong>工人</strong></div></td>
      <td width="21%" align="center" nowrap id=".register" ><strong>所属公司</strong></td>
      <td width="14%" align="center" nowrap id=".submit_date" ><strong>操作</strong></td>
    </tr>


      <%--显示查询结果--%>
<c:forEach items="${dealList}" var="deal">
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="5%">${deal.did} </td>
      <td align="center" nowrap>${deal.employer.ename}</td>
      <td height="14" align="center" nowrap>${deal.introducefee}</td>
      <td align="center" nowrap>${deal.submitdate}</td>
      <td align="center" nowrap>${deal.worker.wname}</td>
      <td align="center" nowrap>${deal.company.canme}</td>
      <td align="center" nowrap><a href="bbcx.jsp">查看订单</a></td>
    </tr>
</c:forEach>
  </table>

</body>
</html>
