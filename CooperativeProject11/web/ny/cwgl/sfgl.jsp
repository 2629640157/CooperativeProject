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
<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;财务管理--&gt;收费管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


<form action="${pageContext.request.contextPath}/ny/cwgl/chaxungoods" method="post">
  <input type="hidden" name="reqType" value="queryDateTime">
  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
      <td width="67%" align="right" class="text" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日期：
        <input type="text" name="submitdate" value="2020-1-1" maxlength="20" size="12" class="input">
        <%--到--%>
        <%--<input type="text" name="searchName4" maxlength="20" size="12"  class="input">--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="searchbtn" value="查 询" class="button_new">
      &nbsp;&nbsp; </td>
    </tr>
  </table>
</form>
  <br>
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

      <%--显示全查询结果--%>
      <c:forEach items="${dealList11}" var="deal">
          <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
              <td nowrap align="center" width="5%">${deal.did} </td>
              <td align="center" nowrap>${deal.employer.ename}</td>
              <td height="14" align="center" nowrap>${deal.introducefee}</td>
              <td align="center" nowrap>${deal.submitdate}</td>
              <td align="center" nowrap>${deal.worker.wname}</td>
              <td align="center" nowrap>${deal.company.canme}</td>
              <td align="center" nowrap><a href="yggl_xg.htm">查看订单</a></td>
          </tr>
      </c:forEach>


    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td colspan="3" align="right" nowrap><strong>合计总额：</strong></td>
      <td height="14" colspan="5" align="left" nowrap>500 <strong>元</strong></td>
    </tr>
  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center"> 当前第<strong>${pageNow}</strong>页 共<strong>${TotalRecord}</strong>记录 分<strong>${TotalPages}</strong>页显示 </td>
              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=1&reqType=queryAll">首页</a> </span>
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=${pageNow-1}&reqType=queryAll">上一页</a></span>
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=${pageNow+1}&reqType=queryAll">下一页</a></span>
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=${TotalPages}&reqType=queryAll">尾页</a></span>
                <span><button onclick="gotoPage()">go</button></span>
                  <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' id='pageSelect' value=''/>
                页 </td>
            </tr>
          </table>

      </td>
    </tr>
  </table>

</body>
<script>
  function gotoPage() {
      var pagecount=document.getElementById("pageSelect").value;
      window.location.href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow="+pagecount+"&reqType=queryAll";
  }
</script>
</html>
