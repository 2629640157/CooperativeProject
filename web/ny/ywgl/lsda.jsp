<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
    <!--
    .STYLE1 {
        font-size: 36px;
        font-weight: bold;
    }

    -->
</style>
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
            window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}";
        }

        function goPrevious() {
            if (${page.pageNow gt 1}) {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}&pageNow=${page.pageNow-1}";
            } else {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}";
            }
        }

        function goNext() {
            if (${page.pageNow lt page.totalPages}) {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}&pageNow=${page.pageNow+1}";
            } else {
                window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}&pageNow=${page.totalPages}";
            }
        }

        function goLast() {
            window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}&pageNow=${page.totalPages}";
        }

        function gotoPage() {
            var pageNow = document.getElementById("pageNow").value;
            /*window.alert(pageNow)*/
            window.location.href = "${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${did}&pageNow=" + pageNow;
        }
    </script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;雇主信息</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>


<table width="96%" height="65" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" height="65" align="right" valign="top" nowrap class="text">&nbsp;&nbsp;
            <div align="center"><span class="STYLE1">客户 ${employer.ename} 档案</span></div>
            <div align="center" class="STYLE1"></div>
        </td>
    </tr>
</table>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#bdc7d3">
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td width="20%" height="14" align="right" nowrap><strong>客户号：${employer.eid}</strong></td>
        <td width="53%" height="14" align="right" nowrap><strong>建档时间：${employer.ename}</strong></td>
        <td width="27%" align="center" nowrap>&nbsp;</td>
    </tr>
</table>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td height="14" colspan="4" align="center" nowrap><strong>身份证号码 </strong></td>
        <td align="center" nowrap><strong>常住地址 </strong></td>
        <td colspan="2" align="center" nowrap>&nbsp;${employer.address}</td>
        <td align="center" nowrap><strong>手机 </strong></td>
        <td colspan="2" align="center" nowrap>&nbsp;${employer.cellphone}</td>
    </tr>
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td height="14" colspan="4" align="center" nowrap>${employer.idcard}</td>
        <td align="center" nowrap><strong>工人服务地址</strong></td>
        <td colspan="2" align="center" nowrap>&nbsp;${employer.serviceaddress}</td>
        <td align="center" nowrap><strong>电话</strong></td>
        <td colspan="2" align="center" nowrap>&nbsp;${employer.phone}</td>
    </tr>
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="3%">序号</td>
        <td width="12%" align="center" nowrap><strong>工人</strong></td>
        <td width="11%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true"><strong>性别</strong></div>
        </td>
        <td width="12%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true"><strong>介绍费</strong></div>
        </td>
        <td width="16%" align="center" nowrap id=".title">
            <div align="center" orderBy="true"><strong>登记时间</strong></div>
        </td>
        <td width="13%" align="center" nowrap>
            <div align="center" orderBy="true"><strong>上岗时间</strong></div>
        </td>
        <td width="9%" align="center" nowrap id=".register"><strong>工作内容</strong></td>
        <td width="14%" align="center" nowrap>工资</td>
        <td width="14%" align="center" nowrap><strong>离职时间</strong></td>
        <td width="10%" align="center" nowrap id=".submit_date"><strong>离职原因</strong></td>
    </tr>
    <c:forEach var="deal" items="${dealList}">
        <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
            onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
            <td nowrap align="center" width="3%">${deal.worker.wid} </td>
            <td align="center" nowrap>${deal.worker.wname}</td>
            <td height="14" align="center" nowrap>${deal.worker.wsex}</td>
            <td align="center" nowrap>${deal.introducefee}</td>
            <td align="center" nowrap>${deal.starttime}</td>
            <td align="center" nowrap>${deal.worker.worktime}</td>
            <td align="center" nowrap>${deal.kinds}</td>
            <td align="center" nowrap>${deal.salary}</td>
            <td align="center" nowrap>${deal.usefultime}&nbsp;</td>
            <td align="center" nowrap>&nbsp;</td>
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
                        <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0"
                             onclick="goPrevious()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Next_no.gif" alt="下一页" width="14" height="13" border="0" onclick="goNext()">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Last_no.gif" alt="尾页" width="18" height="13" border="0" onclick="goLast()">&nbsp;&nbsp;&nbsp;
                       <%-- <a href="javascript:this.document.AwaitForm.submit()" oncontextmenu="return false" onClick="if(this.document.AwaitForm.pageSelect.value==''){ alert('页码必须输入');return false;}
 else {this.document.AwaitForm.paginationAction.value='gotoPage';}">前往</a>--%>
                        <a href="javascript:gotoPage()">前往</a>
                        <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect'
                               id="pageNow"    value=''/>
                        页
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

</body>
</html>
