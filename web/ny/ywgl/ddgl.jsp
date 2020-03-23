<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../js/public.js"></script>
    <script language="JavaScript">
        function doDBClick(url, operator, type) {
            if (operator == false) {
                document.forms[0].action = url + "&op=view";
                document.forms[0].submit();
            } else {
                document.forms[0].action = url;
                document.forms[0].submit();
            }
        }
        function goFirst() {
            window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}";
        }
        function goPrevious() {
            if (${page.pageNow gt 1}){
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&pageNow=${page.pageNow-1}&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}";
            } else {
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}";
            }
        }
        function goNext() {
            if (${page.pageNow lt page.totalPages}){
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&pageNow=${page.pageNow+1}&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}";
            } else {
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&pageNow=${page.totalPages}&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}";
            }
        }
        function goLast() {
            window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&pageNow=${page.totalPages}&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}";
        }
        function gotoPage() {
            var pageNow=  document.getElementById("pageNow").value;
            /*window.alert(pageNow)*/
            window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&ename=${deal.employer.ename}&start=${start}&end=${end}&wname=${deal.worker.wname}&status=${deal.status}&pageNow="+pageNow;
        }
    </script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※ &nbsp;您的位置：--&gt;我的桌面--&gt;业务管理--&gt;用工管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>

<form action="${pageContext.request.contextPath}/ny/ywgl/deal" method="post">
    <input type="hidden" name="type" value="queryWorkers">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap>&nbsp; 雇主：
            <input type="text" name="ename" maxlength="20" size="12" value="${ename}" class="input">
            &nbsp;  登记日期：
            <input type="text" name="start" maxlength="20" size="12" value="${start}" class="input">
            到
            <input type="text" name="end" maxlength="20" size="12" value="${end}" class="input">
            &nbsp; 雇用工人：
            <input type="text" name="wname" maxlength="20" size="12" value="${wname}" class="input">
            &nbsp;状态：
            <select name="status" id="select" class="input">
                <option selected>请选择</option>
                <option value="未雇佣" <c:if test="${'未雇佣' eq status}">selected</c:if>>未雇佣</option>
                <option  value="雇佣" <c:if test="${'雇佣' eq status}">selected</c:if>>雇佣</option>
            </select>
            <input type="submit" name="searchbtn" value="查询" class="button_new">
            <input type="button" name="searchbtn2" value="新增" class="button_new"
                   onClick="javascript:location.href='${pageContext.request.contextPath}/ny/ywgl/deal?type=toAddWorker&pageNow=${page.pageNow}'">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="4%">序号</td>
        <td width="8%" align="center" nowrap >雇主</td>
        <td width="14%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true">手机/固</div>
        </td>
        <td width="8%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true">工人</div>
        </td>
        <td width="14%" align="center" nowrap id=".title">
            <div align="center" orderBy="true">手机/固</div>
        </td>
        <td width="7%" align="center" nowrap >
            <div align="center" orderBy="true">工资/月</div>
        </td>
        <td width="30%" align="center" nowrap id=".register"><strong>工作类型</strong></td>
        <td width="6%" align="center" nowrap ><strong>状态</strong> </td>
        <td width="11%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
    <c:forEach var="deal" items="${dealList}">
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td nowrap align="center" width="4%">${deal.did}</td>
        <td align="center" nowrap>${deal.employer.ename}</td>
        <td height="14" align="center" nowrap>${deal.employer.phone}/${deal.employer.cellphone}</td>
        <td align="center" nowrap>${deal.worker.wname}</td>
        <td align="center" nowrap>${deal.worker.phone}/${deal.worker.sellphone}</td>
        <td align="center" nowrap>${deal.salary}</td>
        <td align="center" nowrap>${deal.kinds}</td>
        <td align="center" nowrap>${deal.status}</td>
        <td align="center" nowrap><a href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkersClear&pageNow=${page.pageNow}&did=${deal.did}">查看
        </a> <a href="${pageContext.request.contextPath}/ny/ywgl/deal?type=toUpdateWorker&pageNow=${page.pageNow}&did=${deal.did}">修改</a></td>
    </tr>
    </c:forEach>
</table>
<table width="96%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td><input type="hidden" name="orderType" value="asc">
            <input type="hidden" name="orderFid" value=".submit_date">
            <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                <tr>
                    <td nowrap width="45%" align="center"> 当前第${page.pageNow}页 共${page.totalCount}记录 分${page.totalPages}页显示</td>
                    <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                        <input type="hidden" name="paginationAction" value="">
                        <img src="../image/First_no.gif" alt="首页" width="18" height="13" border="0" onclick="goFirst()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0" onclick="goPrevious()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Next_no.gif" alt="下一页" width="14" height="13" border="0" onclick="goNext()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Last_no.gif" alt="尾页" width="18" height="13" border="0" onclick="goLast()">&nbsp;&nbsp;&nbsp;
                        <%--   <a href="javascript:this.document.AwaitForm.submit()" oncontextmenu="return false" onClick="if(this.document.AwaitForm.pageSelect.value==''){ alert('页码必须输入');return false;}
    else {this.document.AwaitForm.paginationAction.value='gotoPage';}">前往</a>--%>
                        <a href="javascript:gotoPage()">前往</a>
                        <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect'
                               id="pageNow"   value=''/>
                        页
                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>

</body>
</html>
