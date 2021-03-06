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
           window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}";
        }
        function goPrevious() {
            if (${page.pageNow gt 1}){
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&pageNow=${page.pageNow-1}&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}";
            } else {
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}";
            }
        }
        function goNext() {
            if (${page.pageNow lt page.totalPages}){
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&pageNow=${page.pageNow+1}&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}";
            } else {
                window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&pageNow=${page.totalPages}&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}";
            }
        }
        function goLast() {
            window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&pageNow=${page.totalPages}&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}";
        }
        function gotoPage() {
            var pageNow=  document.getElementById("pageNow").value;
            /*window.alert(pageNow)*/
            window.location.href="${pageContext.request.contextPath}/ny/ywgl/deal?type=query&ename=${deal.employer.ename}&esex=${deal.employer.esex}&phone=${deal.employer.phone}&status=${deal.status}&kinds=${deal.kinds}&pageNow="+pageNow;
        }
    </script>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：--&gt;我的桌面--&gt;业务管理--&gt;雇主信息</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<form action="${pageContext.request.contextPath}/ny/ywgl/deal" method="post">
    <input type="hidden" name="type" value="query">
    <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
        <tr>
            <td width="67%" align="right" class="text" nowrap>&nbsp; 姓名：
                <input type="text" name="ename" maxlength="20" size="12" value="${deal.employer.ename}" class="input">
                &nbsp;&nbsp;性别：
                <c:choose>
                    <c:when test="${deal.employer.esex=='女'}">
                        <input type="radio" name="esex"  value="男">男
                        <input type="radio" name="esex" value="女" checked="checked">女
                    </c:when>
                    <c:when test="${deal.employer.esex=='男'}">
                        <input type="radio" name="esex" checked="checked" value="男">男
                        <input type="radio" name="esex" value="女">女
                    </c:when>
                    <c:otherwise>
                        <input type="radio" name="esex" value="男">男
                        <input type="radio" name="esex"  value="女">女
                    </c:otherwise>
                </c:choose>
               &nbsp;&nbsp; 电话：
                <input type="text" name="phone" maxlength="20" size="12" value="${deal.employer.phone}" class="input">
                状态：
                <select name="status" id="select" class="input" >
                    <option value="" selected>请选择</option>
                    <option value="未雇佣" <c:if test="${'未雇佣' eq deal.status}">selected</c:if>>未雇佣</option>
                    <option  value="雇佣" <c:if test="${'雇佣' eq deal.status}">selected</c:if>>雇佣</option>
                </select>
                雇用职位：
                <select name="kinds" id="select2" class="input" value="${deal.kinds}">
                    <option selected>请选择</option>
                    <option value="保姆" <c:if test="${'保姆' eq deal.kinds}">selected</c:if>> 保姆</option>
                    <option value="月嫂" <c:if test="${'月嫂' eq deal.kinds}">selected</c:if>>月嫂</option>
                    <option value="家教" <c:if test="${'家教' eq deal.kinds}">selected</c:if>>家教</option>
                    <option value="钟点工" <c:if test="${'钟点工' eq deal.kinds}">selected</c:if>> 钟点工</option>
                </select>
                <input type="submit" value="查询" class="button_new">
                <input type="button" name="searchbtn2" value="新增" class="button_new"
                       onclick="javascript:location.href='${pageContext.request.contextPath}/ny/ywgl/employer?type=toAdd&pageNow=${page.pageNow}'">
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="3%">序号</td>
        <td width="12%" align="center" nowrap ><strong>姓名</strong></td>
        <td width="11%" height="24" align="center" nowrap >
            <div align="center" orderBy="true"><strong>性别</strong></div>
        </td>
        <td width="12%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true"><strong>年龄</strong></div>
        </td>
        <td width="16%" align="center" nowrap id=".title">
            <div align="center" orderBy="true"><strong>雇用</strong></div>
        </td>
        <td width="13%" align="center" nowrap >
            <div align="center" orderBy="true"><strong>接受薪资</strong></div>
        </td>
        <td width="9%" align="center" nowrap ><strong>状态</strong></td>
        <td width="14%" align="center" nowrap ><strong>录入日期</strong></td>
        <td width="10%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
    <c:forEach var="deal" items="${dealList}">
        <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
            onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
            <td nowrap align="center" width="3%">${deal.did} </td>
            <td align="center" nowrap>${deal.employer.ename}</td>
            <td height="14" align="center" nowrap>${deal.employer.esex}</td>
            <td align="center" nowrap>${deal.employer.eage}</td>
            <td align="left" nowrap>${deal.kinds}</td>
            <td align="center" nowrap>${deal.employer.min_salary}-${deal.employer.max_salary}</td>
            <td align="center" nowrap>${deal.status}</td>
            <td align="center" nowrap>${deal.submitdate}&nbsp;</td>
            <td align="center" nowrap><a href="${pageContext.request.contextPath}/ny/ywgl/employer?type=queryOneClearly&did=${deal.did}&pageNow=${page.pageNow}">查看</a>
                <a href="${pageContext.request.contextPath}/ny/ywgl/employer?type=toUpdate&did=${deal.did}&pageNow=${page.pageNow}">修改</a>
                <a href="${pageContext.request.contextPath}/ny/ywgl/deal?type=queryHistory&did=${deal.did}">历史档案</a></td>
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
