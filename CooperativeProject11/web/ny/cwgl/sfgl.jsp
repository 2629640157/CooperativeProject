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
    <td>&nbsp;&nbsp;��&nbsp;����λ�ã��ҵ�����--&gt;�������--&gt;�շѹ���</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


<form action="${pageContext.request.contextPath}/ny/cwgl/chaxungoods" method="post">
  <input type="hidden" name="reqType" value="queryDateTime">
  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
      <td width="67%" align="right" class="text" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ڣ�
        <input type="text" name="submitdate" value="2020-1-1" maxlength="20" size="12" class="input">
        <%--��--%>
        <%--<input type="text" name="searchName4" maxlength="20" size="12"  class="input">--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="searchbtn" value="�� ѯ" class="button_new">
      &nbsp;&nbsp; </td>
    </tr>
  </table>
</form>
  <br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="5%">���</td>
      <td width="14%" align="center" nowrap id=".name" >�ͻ�����</td>
      <td width="10%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true"><strong>���ܷ�</strong></div></td>
      <td width="11%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>�ɽ�����</strong></div></td>
      <td width="12%" align="center" nowrap id=".register" ><div align="center" orderBy="true"><strong>����</strong></div></td>
      <td width="21%" align="center" nowrap id=".register" ><strong>������˾</strong></td>
      <td width="14%" align="center" nowrap id=".submit_date" ><strong>����</strong></td>
    </tr>

      <%--��ʾȫ��ѯ���--%>
      <c:forEach items="${dealList11}" var="deal">
          <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
              <td nowrap align="center" width="5%">${deal.did} </td>
              <td align="center" nowrap>${deal.employer.ename}</td>
              <td height="14" align="center" nowrap>${deal.introducefee}</td>
              <td align="center" nowrap>${deal.submitdate}</td>
              <td align="center" nowrap>${deal.worker.wname}</td>
              <td align="center" nowrap>${deal.company.canme}</td>
              <td align="center" nowrap><a href="yggl_xg.htm">�鿴����</a></td>
          </tr>
      </c:forEach>


    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td colspan="3" align="right" nowrap><strong>�ϼ��ܶ</strong></td>
      <td height="14" colspan="5" align="left" nowrap>500 <strong>Ԫ</strong></td>
    </tr>
  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center"> ��ǰ��<strong>${pageNow}</strong>ҳ ��<strong>${TotalRecord}</strong>��¼ ��<strong>${TotalPages}</strong>ҳ��ʾ </td>
              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=1&reqType=queryAll">��ҳ</a> </span>
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=${pageNow-1}&reqType=queryAll">��һҳ</a></span>
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=${pageNow+1}&reqType=queryAll">��һҳ</a></span>
                <span><a href="${pageContext.request.contextPath}/ny/cwgl/chaxungoods?pageNow=${TotalPages}&reqType=queryAll">βҳ</a></span>
                <span><button onclick="gotoPage()">go</button></span>
                  <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' id='pageSelect' value=''/>
                ҳ </td>
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
