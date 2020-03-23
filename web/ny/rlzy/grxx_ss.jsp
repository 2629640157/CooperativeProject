<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<head>
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
    <script>
        function  getPage(pageNum,totalpage) {

            window.location.href = "workerSvl?reqType=queryworker&pageNum=" + pageNum;

        }
        function gotopage() {
            var pageNum=document.getElementById("inputpage").value;
            window.location.href="workerSvl?reqType=queryworker&pageNum="+pageNum;
        }
    </script>
</head>

<body>
<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;人力资源--&gt;工人信息检索</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>
<form action="${pageContext.request.contextPath}/ny/rlzy/workerSvl" method="post">
    <input type="hidden" name="reqType" value="mod">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
  <tr>
    <td width="67%" align="right" class="text" nowrap>&nbsp;姓名：
      <input type="text" name="searchName" maxlength="20" size="12" value="" class="input">
      &nbsp;&nbsp;性别：
      <input type="radio" name="radio" id="radio" value="男">
      男
      <input type="radio" name="radio" id="radio2" value="女">
      女 年龄：
      <input type="text" name="age" maxlength="20" size="12"  class="input">
      状态：
      <select name="status" id="select" class="input">
        <option selected>请选择</option>
          <option>在岗</option>
          <option>待岗</option>
        <option>其他</option>
      </select>
      适合职位：
      <select name="type" id="select2" class="input">
        <option selected>请选择</option>
        <option>保姆</option>
        <option>月嫂</option>
        <option>清洁工</option>
      </select>
      <input type="submit" name="searchbtn" value="检   索" class="button_new">
      &nbsp;&nbsp; </td>
  </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
  <tr align="center" class="tdtitle">
    <td nowrap align="center" width="3%">序号</td>
    <td width="12%" align="center" nowrap id="name" ><strong>姓名</strong></td>
    <td width="11%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true"><strong>性别</strong></div></td>
    <td width="12%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>年龄</strong></div></td>
    <td width="16%" align="center" nowrap id=".title" ><div align="center" orderBy="true"><strong>个人技能</strong></div></td>
    <td width="13%" align="center" nowrap id="register" ><div align="center" orderBy="true"><strong>个人要求</strong></div></td>
    <td width="9%" align="center" nowrap id=".register" ><strong>状态</strong></td>
    <td width="15%" align="center" nowrap id="submit_date" ><strong>录入日期</strong></td>
    <td width="15%" align="center" nowrap id=".submit_date" ><strong>所属公司</strong></td>
    <td width="9%" align="center" nowrap id=".submit_date1" ><strong>操作</strong></td>
  </tr>
  <c:forEach items="${pb.list}" var="worker">
  <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
    <td nowrap align="center" width="3%">${worker.wid} </td>
    <td align="center" nowrap>${worker.wname}</td>
    <td height="14" align="center" nowrap>${worker.wsex}</td>
    <td align="center" nowrap>${worker.wage}</td>
    <td align="left" nowrap>${worker.kinds}</td>
    <td align="center" nowrap>${worker.salaryrequire}</td>
    <td align="center" nowrap>${worker.status}</td>
    <td align="center" nowrap>${worker.starttime}&nbsp; </td>
    <td align="center" nowrap>&nbsp;&nbsp;&nbsp;${worker.company.cname} </td>
    <td align="center" nowrap><a href="${pageContext.request.contextPath}/ny/rlzy/workerSvl?reqType=look&wid=${worker.wid}">查看</a> <a href="${pageContext.request.contextPath}/ny/rlzy/workerSvl?reqType=queryById&wid=${worker.wid}">修改</a></td>
  </tr>
  </c:forEach>
  <tr>
    <td><input type="hidden" name="orderType" value="asc">
      <input type="hidden" name="orderFid" value=".submit_date">
      <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
        <tr>
          <td nowrap width="45%" align="center"> 当前第${pb.pageNum}页 共${pb.totalCount}记录 分${pb.totalPage}页显示 </td>
          <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
            <input type="hidden" name="paginationAction" value="">
            <img src="../image/First_no.gif" alt="第一页" width="18" height="13" border="0"  onclick="getPage(1)" >&nbsp&nbsp&nbsp
            <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0" onclick="getPage(${pb.pageNum-1})">&nbsp&nbsp&nbsp
            <img src="../image/Next_no.gif" alt="下一页" width="14" height="13" border="0" onclick="getPage(${pb.pageNum+1})">&nbsp&nbsp&nbsp
            <img src="../image/Last_no.gif" alt="最后一页" width="18" height="13" border="0" onclick="getPage(${pb.totalPage})">&nbsp&nbsp&nbsp
            <a href="javascript:void(0)" onclick=" gotopage()">前往</a>
            <input type=text size='4' onlytype='int' id="inputpage" name='pageSelect' value=''/>页</td>
        </tr>
      </table>

    </td>
  </tr>
</table>
</body>

</html>