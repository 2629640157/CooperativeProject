<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Untitled Document</title>
    <script language="JavaScript">
        function doDBClick(url, operator, type) {
            if (operator == false) {
                document.forms[0].action = url + "&op=view";
                document.forms[0].submit();
            } else {
                document.forms[0].action = url;
                document.forms[0].submit();
            }
        }function goFirst() {
            window.location.href = "${pageContext.request.contextPath}/ny/ywgl/status?type=queryStatus&sender=${sender}&state=${state}";
        }

        function goPrevious() {
            if (${page.pageNow gt 1}) {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/status?type=queryStatus&sender=${sender}&state=${state}&pageNow=${page.pageNow-1}";
            } else {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/status?type=queryStatus&sender=${sender}&state=${state}";
            }
        }

        function goNext() {
            if (${page.pageNow lt page.totalPages}) {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/status?type=queryStatus&sender=${sender}&state=${state}&pageNow=${page.pageNow+1}";
            } else {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/inform?type=queryInform&start=${start}&end=${end}&pageNow=${page.totalPages}";
            }
        }

        function goLast() {
            window.location.href = "${pageContext.request.contextPath}/ny/ywgl/status?type=queryStatus&sender=${sender}&state=${state}&pageNow=${page.totalPages}";
        }
        function gotoPage() {
          var pageNow=  document.getElementById("pageNow").value;
          /*window.alert(pageNow)*/
        window.location.href = "${pageContext.request.contextPath}/ny/ywgl/status?type=queryStatus&sender=${sender}&state=${state}&pageNow="+pageNow;

        }
    </script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：--&gt;我的桌面--&gt;业务管理--&gt;内部短消息</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<form action="${pageContext.request.contextPath}/ny/ywgl/status" method="post">
    <input type="hidden" name="type" value="queryStatus">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap> &nbsp;&nbsp;&nbsp; 发送人：
            <select name="sender">
              <%--  <c:forEach items="${senderList}" var="sender">--%>
                <option value="1" >张三</option>
                <option  value="2">李四</option>
                <option value="3">王五</option>
               <%-- </c:forEach>--%>
            </select> &nbsp;&nbsp;&nbsp;
            状态：
            <select name="state">
                <option value="1">已读</option>
                <option value="0">未读</option>
            </select>
            <input type="submit" name="searchbtn" value="查询" class="button_new">
            <input type="button" name="searchbtn2" value="新增" class="button_new"
                   onClick="javascript:location.href='message_add.jsp'">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="6%">序号</td>
        <td width="31%" align="center" nowrap >标题</td>
        <td width="38%" align="center" nowrap >发送人</td>
        <td width="38%" align="center" nowrap >状态</td>
        <td width="38%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true">发送时间</div>
        </td>
        <td width="21%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
    <c:forEach var="status" items="${statusList}" >
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td nowrap align="center" width="6%">${status.id}</td>
        <td align="center" nowrap><a href="message_show.html">${status.message.subject}</a></td>
        <td align="center" nowrap>${status.sender}</td>
        <td align="center" nowrap> ${status.state}</td>
        <td height="14" align="center" nowrap>${status.message.date_time}</td>
        <td align="center" nowrap><a href="message_add.jsp">回复</a>&nbsp;</td>
    </tr>
    </c:forEach>
</table>
<table width="91%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td><input type="hidden" name="orderType" value="asc">
            <input type="hidden" name="orderFid" value=".submit_date">
            <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                <tr>
                    <td nowrap width="45%" align="center"> 当前第${page.pageNow}页 共${page.totalCount}记录 分${page.totalPages}页显示</td>
                    <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                        <input type="hidden" name="paginationAction" value="">
                        <img src="../image/First_no.gif" alt="首页" width="18" height="13" border="0" onclick="goFirst()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0"
                             onclick="goPrevious()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Next_no.gif" alt="下一页" width="14" height="13" border="0" onclick="goNext()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Last_no.gif" alt="尾页" width="18" height="13" border="0" onclick="goLast()">&nbsp;&nbsp;&nbsp;
                      <%--  <a href="javascript:this.document.AwaitForm.submit()" oncontextmenu="return false" onClick="if(this.document.AwaitForm.pageSelect.value==''){ alert('页码必须输入');return false;}
 else {this.document.AwaitForm.paginationAction.value='gotoPage';}">前往</a>--%>
                        <a href="javascript:gotoPage()">前往</a>
                        <input type=text size='4' onlytype='int' id="pageNow" onfocus='checkTextBoxInput()' name='pageSelect' value=''/>
                        页
                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>

</body>
</html>
