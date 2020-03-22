<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
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
        function goFirst() {
            window.location.href="${pageContext.request.contextPath}/ny/xtgl/company?type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}";
        }
        function goPrevious() {
            if (${page.pageNow gt 1}){
                window.location.href="${pageContext.request.contextPath}/ny/xtgl/company?type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}&pageNow=${page.pageNow-1}";
            } else {
                window.location.href="${pageContext.request.contextPath}/ny/xtgl/company??type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}";
            }
        }
        function goNext() {
            if (${page.pageNow lt page.totalPages}){
                window.location.href="${pageContext.request.contextPath}/ny/xtgl/company?type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}&pageNow=${page.pageNow+1}";
            } else {
                window.location.href="${pageContext.request.contextPath}/ny/xtgl/company?type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}&pageNow=${page.totalPages}";
            }
        }
        function goLast() {
            window.location.href="${pageContext.request.contextPath}/ny/xtgl/company?type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}&pageNow=${page.totalPages}";
        }
        function gotoPage() {
            var pageNow=  document.getElementById("pageNow").value;
            /*window.alert(pageNow)*/
            window.location.href="${pageContext.request.contextPath}/ny/xtgl/company?type=queryCustomer&cname=${cname}&name=${name}&start=${start}&end=${end}&pageNow="+pageNow;
        }
    </script>
</head>

<body>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;消费查询</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>

<form method="post" action="${pageContext.request.contextPath}/ny/xtgl/company">
    <input type="hidden" name="type" value="queryCustomer">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap>&nbsp;公司名称：
            <input type="text" name="cname" maxlength="20" size="12" value="" class="input">
            &nbsp;&nbsp;&nbsp;&nbsp;公司帐号：
            <input type="text" name="name" maxlength="20" size="12" value="" class="input">
            &nbsp;&nbsp;&nbsp;&nbsp;日期：
            <input type="text" name="start" maxlength="20" size="12"  class="input">
            到
            <input type="text" name="end" maxlength="20" size="12"  class="input"> &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="searchbtn" value="查  询" class="button_new">
            &nbsp;&nbsp; </td>
    </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="4%">序号</td>
        <td width="27%" align="center" nowrap id=".name" >公司名称</td>
        <td width="9%" align="center" nowrap>帐户名</td>
        <td width="9%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>刷卡时间</strong></div></td>
        <td width="7%" align="center" nowrap id=".register" ><div align="center" orderBy="true"><strong>本次扣费(元)</strong></div></td>
    </tr>
    <c:forEach items="${companyList}" var="company">
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td width="4%" height="14" align="center" nowrap>${company.cardRecord.record_id} </td>
        <td align="center" nowrap>${company.cname}</td>
        <td align="center" nowrap>${company.number.name}</td>
        <td align="center" nowrap>${company.cardRecord.date_time}</td>
        <td align="center" nowrap>${company.cardRecord.money}</td>
    </tr>
    </c:forEach>
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
        <td height="14" colspan="4" align="right" nowrap><strong>合计金额：</strong></td>
        <td align="center" nowrap>${totalExpense}</td>
    </tr>
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
