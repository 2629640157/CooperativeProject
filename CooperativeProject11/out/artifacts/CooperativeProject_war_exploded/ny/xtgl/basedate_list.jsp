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

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;公司管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
  <tr>
    <td width="67%" align="right" class="text" nowrap>     &nbsp;&nbsp;&nbsp;类型：
      <select name="">
        	<option value="1">教育程度</option>
            <option value="2">爱好</option>
            <option value="3">语言</option>
            <option value="4">证照状况</option>
            <option value="5">体检情况</option>
            <option value="6">个人技能</option>
            <option value="7">雇用类型</option>
      </select>
      <input type="button" name="searchbtn" value="查  询" class="button_new">
      <input type="button" name="searchbtn2" value="新  增" class="button_new"onClick="javascript:location.href='basedate_add.htm'" >
      <input type="button" name="searchbtn2" value="删  除" class="button_new"onClick="javascript:location.href=''" >
	  <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>
</table>
<br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="4%"><input type="checkbox" name="checkbox" id="checkbox"></td>
      <td nowrap align="center" width="6%">序号</td>
      <td width="31%" align="center" nowrap id=".name" >名称</td>
      <td width="38%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true">类型</div></td>
      <td width="21%" align="center" nowrap id=".submit_date" ><strong>操作</strong></td>
    </tr>


      <c:forEach items="${dateList}" var="date">
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="4%">
      <td nowrap align="center" width="6%">${date.date_id}</td>
      <td align="center" nowrap>${date.date_name}</td>
      <td height="14" align="center" nowrap>${date.date_class}</td>
        <td align="center" nowrap>修改，查看</td>
    </tr>
      </c:forEach>


  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">

              <tr>
                  <td nowrap width="45%" align="center"> 当前第<strong>${pageNow}</strong>页 共<strong>${TotalRecord}</strong>记录 分<strong>${TotalPages}</strong>页显示 </td>
                  <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                      <span><a href="${pageContext.request.contextPath}/ny/xtgl/shujuzidian?pageNow=1&reqType=queryshujuzidian">首页</a> </span>
                      <span><a href="${pageContext.request.contextPath}/ny/xtgl/shujuzidian?pageNow=${pageNow-1}&reqType=queryshujuzidian">上一页</a></span>
                      <span><a href="${pageContext.request.contextPath}/ny/xtgl/shujuzidian?pageNow=${pageNow+1}&reqType=queryshujuzidian">下一页</a></span>
                      <span><a href="${pageContext.request.contextPath}/ny/xtgl/shujuzidian?pageNow=${TotalPages}&reqType=queryshujuzidian">尾页</a></span>
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
        window.location.href="${pageContext.request.contextPath}/ny/xtgl/shujuzidian?pageNow="+pagecount+"&reqType=queryshujuzidian";
    }
</script>

</html>
