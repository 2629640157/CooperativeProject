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

<br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="4%"><input type="checkbox" name="checkbox" id="checkbox"></td>
      <td nowrap align="center" width="6%">编号</td>
      <td width="31%" align="center" nowrap id=".name" >帐号</td>
      <td width="38%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true">名称</div></td>
      <td width="21%" align="center" nowrap id=".submit_date" ><strong>操作</strong></td>
    </tr>

      <%--显示全查询结果--%>
<c:forEach items="${companyList}" var="company">
    <tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td nowrap align="center" width="4%"><input type="checkbox" name="checkbox3" id="checkbox3"></td>
      <td nowrap align="center" width="6%">${company.cid} </td>
      <td align="center" nowrap>${company.caccount} </td>
      <td height="14" align="center" nowrap>${company.canme} </td>
      <td align="center" nowrap><a href="gsgl_amend.jsp?cid=${company.cid}&caccount${company.caccount}&canme${company.canme}">修改</a>&nbsp;&nbsp;<a href="ddgl.jsp&pageNow=${pageNow}">选择人员</a>&nbsp;&nbsp;<a href="javascript:deletecompany(${company.cid},'${company.caccount}')">删除</a></td>
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
                    <span><a href="${pageContext.request.contextPath}/ny/xtgl/companyAdmin?pageNow=1&reqType=companyfenye">首页</a> </span>
                    <span><a href="${pageContext.request.contextPath}/ny/xtgl/companyAdmin?pageNow=${pageNow-1}&reqType=companyfenye">上一页</a></span>
                    <span><a href="${pageContext.request.contextPath}/ny/xtgl/companyAdmin?pageNow=${pageNow+1}&reqType=companyfenye">下一页</a></span>
                    <span><a href="${pageContext.request.contextPath}/ny/xtgl/companyAdmin?pageNow=${TotalPages}&reqType=companyfenye">尾页</a></span>
                    <span><button onclick="gotoPage()">go</button></span>
                    <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' id='pageSelect' value=''/>
                    页 </td>
            </tr>
          </table>

      </td>
    </tr>
  </table>
<hr>
<form action="${pageContext.request.contextPath}/ny/xtgl/companyAdmin" method="post">
    <input type="hidden" name="reqType" value="querycompanyname">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
  <tr>
    <td width="67%" align="left" class="text"  nowrap>
    &nbsp;编号：
    <input type="text" name="cid" maxlength="20"  size="12" value="" class="input"><br>
     &nbsp;帐号：
      <input type="text" name="caccount" maxlength="20"  size="12" value="" class="input"><br>
      &nbsp;名称：
      <input type="text" name="canme" maxlength="20"  size="12" value="" class="input"><br>
      &nbsp; &nbsp; &nbsp; <input type="submit" name="searchbtn" value="查  询" class="button_new">
      <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>



</table>
</form>


<form action="${pageContext.request.contextPath}/ny/xtgl/companyAdmin" method="post">
    <input type="hidden" name="reqType" value="addxinxi">
    <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
        <tr>
            <td width="67%" align="left" class="text"  nowrap>
                &nbsp;编号：
                <input type="text" name="cid" maxlength="20"  size="12" value="" class="input"><br>
                &nbsp;帐号：
                <input type="text" name="caccount" maxlength="20"  size="12" value="" class="input"><br>
                &nbsp;名称：
                <input type="text" name="canme" maxlength="20"  size="12" value="" class="input"><br>
                &nbsp; &nbsp; &nbsp; <input type="submit" name="searchbtn2" value="新  增" class="button_new"onClick="javascript:location.href='gsgl_xz.htm'" >
                <input type="hidden" name="mod" value="no">
                &nbsp;&nbsp; </td>
        </tr>
    </table>
</form>



</body>
<script>
    function gotoPage() {
        var pagecount=document.getElementById("pageSelect").value;
        window.location.href="${pageContext.request.contextPath}/ny/xtgl/companyAdmin?pageNow="+pagecount+"&reqType=companyfenye";
    }
    
    
    function deletecompany(cid,caccount) {
        if (window.confirm("真的要删除"+caccount+"吗？")){
        window.location.href="companyAdmin?cid="+ cid + "&reqType=delete";
        }
    }
    
    
</script>
</html>
