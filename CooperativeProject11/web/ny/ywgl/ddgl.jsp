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

<form action="" method="post">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap>&nbsp; 雇主：
            <input type="text" name="ename" maxlength="20" size="12" value="" class="input">
            &nbsp;  登记日期：
            <input type="text" name="startTime" maxlength="20" size="12" value="" class="input">
            到
            <input type="text" name="endTime" maxlength="20" size="12" value="" class="input">
            &nbsp; 雇用工人：
            <input type="text" name="wname" maxlength="20" size="12" value="" class="input">
            &nbsp;状态：
            <select name="status" id="select" class="input">
                <option selected>请选择</option>
                <option value="未成交">未成交</option>
                <option value="已成交">已成交</option>
                <option value="在别处成交">在别处成交</option>
                <option value="已取消">已取消</option>
            </select>
            <input type="submit" name="searchbtn" value="查询" class="button_new">
            <input type="button" name="searchbtn2" value="新增" class="button_new"
                   onClick="javascript:location.href='ddgl_xz.htm'">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="4%">序号</td>
        <td width="8%" align="center" nowrap id=".name">雇主</td>
        <td width="6%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true">手机/固</div>
        </td>
        <td width="16%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true">工人</div>
        </td>
        <td width="11%" align="center" nowrap id=".title">
            <div align="center" orderBy="true">手机/固</div>
        </td>
        <td width="7%" align="center" nowrap id=".register">
            <div align="center" orderBy="true">工资/月</div>
        </td>
        <td width="31%" align="center" nowrap id=".register"><strong>工作类型</strong></td>
        <td width="8%" align="center" nowrap id=".submit_date"><strong>状态̬</strong></td>
        <td width="9%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td nowrap align="center" width="4%">1</td>
        <td align="center" nowrap>����</td>
        <td height="14" align="center" nowrap>13527612667/38468063</td>
        <td align="center" nowrap>��÷</td>
        <td align="center" nowrap>13527612667/38468063</td>
        <td align="center" nowrap>2200</td>
        <td align="center" nowrap>��ķ/�ӵ㹤</td>
        <td align="center" nowrap>δ�ɽ�</td>
        <td align="center" nowrap><a href="ddgl_ck.htm">查看</a> <a href="ddgl_xg.htm">修改</a></td>
    </tr>

</table>
<table width="96%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td><input type="hidden" name="orderType" value="asc">
            <input type="hidden" name="orderFid" value=".submit_date">
            <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                <tr>
                    <td nowrap width="45%" align="center"> 当前第1页 共5记录 分1页显示</td>
                    <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                        <input type="hidden" name="paginationAction" value="">
                        <img src="../image/First_no.gif" alt="" width="18" height="13" border="0">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Previous_no.gif" alt="" width="14" height="13" border="0">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Next_no.gif" alt="" width="14" height="13" border="0">&nbsp;&nbsp;&nbsp;
                        <img src="../image/Last_no.gif" alt="" width="18" height="13" border="0">&nbsp;&nbsp;&nbsp; <a
                                href="javascript:this.document.AwaitForm.submit()" oncontextmenu="return false"
                                onClick="if(this.document.AwaitForm.pageSelect.value==''){ alert('ҳ���������');return false;}
 else {this.document.AwaitForm.paginationAction.value='gotoPage';}">前往</a>
                        <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect'
                               value=''/>
                        页
                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>

</body>
</html>
