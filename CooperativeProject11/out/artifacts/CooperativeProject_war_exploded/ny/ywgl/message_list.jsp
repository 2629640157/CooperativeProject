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
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap> &nbsp;&nbsp;&nbsp; 发送人：
            <select>
                <option>x1</option>
                <option>x2</option>
            </select> &nbsp;&nbsp;&nbsp;
            状态：
            <select>
                <option>已读</option>
                <option>未读</option>
            </select>
            <input type="button" name="searchbtn" value="查询" class="button_new">
            <input type="button" name="searchbtn2" value="新增" class="button_new"
                   onClick="javascript:location.href='message_add.html'">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="6%">序号</td>
        <td width="31%" align="center" nowrap id=".name">标题</td>
        <td width="38%" align="center" nowrap id=".name">发送人</td>
        <td width="38%" align="center" nowrap id=".name">状态̬</td>
        <td width="38%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true">发送时间</div>
        </td>
        <td width="21%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td nowrap align="center" width="6%">1</td>
        <td align="center" nowrap><a href="message_show.html">聚餐</a></td>
        <td align="center" nowrap>张晴2</td>
        <td align="center" nowrap> 未读</td>
        <td height="14" align="center" nowrap>2012-2-9</td>
        <td align="center" nowrap><a href="message_add.html">回复</a>&nbsp;</td>
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
                        <img src="../image/First_no.gif" alt="��һҳ" width="18" height="13" border="0">&nbsp&nbsp&nbsp
                        <img src="../image/Previous_no.gif" alt="��һҳ" width="14" height="13" border="0">&nbsp&nbsp&nbsp
                        <img src="../image/Next_no.gif" alt="��һҳ" width="14" height="13" border="0">&nbsp&nbsp&nbsp
                        <img src="../image/Last_no.gif" alt="���һҳ" width="18" height="13" border="0">&nbsp&nbsp&nbsp <a
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
