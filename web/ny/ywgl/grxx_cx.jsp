<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
    <!--
    .STYLE1 {
        font-size: 24px;
        font-weight: bold;
    }

    -->
</style>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../javascript/validator.js"></script>
    <script type="text/javascript" src="../js/public.js"></script>
    <script type="text/javascript" src="../javascript/handleArchive.js"></script>
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
        <td>&nbsp;&nbsp;※ &nbsp;您的位置：--&gt;我的桌面--&gt;业务管理--&gt;信息检索</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="40" align="center" nowrap class="MENU_line1">工人资料检索</td>
    </tr>
</table>
<br>
<form action="${pageContext.request.contextPath}/ny/worker" method="post">
    <input type="hidden" name="type" value="grxx_cx">
<table width="96%" height="270" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
       class="text_lb">
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">姓名</td>
        <td bgcolor="#FFFFFF"><input name="wname" type="text" id="textarea2" value="" size="30" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">性别</td>
        <td bgcolor="#FFFFFF"><input type="radio" name="wsex" id="radio" value="man">男
            <input type="radio" name="wsex" id="radio2" value="woman">女
        </td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">年龄</td>
        <td bgcolor="#FFFFFF">
            <select name="wageStart">
                <c:forEach begin="0" end="100" var="wageStart">
                <option>${wageStart}</option>
                </c:forEach>
            </select>&nbsp;&nbsp;&nbsp;到&nbsp;&nbsp;&nbsp;&nbsp;
            <select name="wageEnd">
                <c:forEach begin="0" end="100" var="wageEnd">
                    <option>${wageEnd}</option>
                </c:forEach>
            </select>
        </td>
        <td align="right" bgcolor="#FFFFFF">从业时间</td>
        <td bgcolor="#FFFFFF"><input name="worktime" type="text" id="textarea7"  size="30" class="pi"></td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">教育程度</td>
        <td bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio31" value="radio"/>大专&nbsp;
            <input type="radio" name="radio" id="radio32" value="radio"/>高中&nbsp;
            <input type="radio" name="radio" id="radio33" value="radio"/>初中&nbsp;
            <input type="radio" name="radio" id="radio34" value="radio"/>小学&nbsp;
        </td>
        <td height="23" align="right" bgcolor="#FFFFFF">爱好</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox" id="checkbox11"/>唱歌&nbsp;
            <input type="checkbox" name="checkbox" id="checkbox12"/>跳舞&nbsp;
            <input type="checkbox" name="checkbox" id="checkbox13"/>乐器 &nbsp;
            <input type="checkbox" name="checkbox" id="checkbox14"/>体育&nbsp;
            <input type="checkbox" name="checkbox" id="checkbox15"/>书法&nbsp;
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">语言</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox2" id="checkbox21"/>普通话&nbsp;
            <input type="checkbox" name="checkbox2" id="checkbox22"/>广东话&nbsp;
            <input type="checkbox" name="checkbox3" id="checkbox23"/>英语&nbsp; 其他语言&nbsp;
            <input name="textarea16" type="text" id="textarea16" value="" size="30" class="pi"></td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">状态</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio4" value="radio"/>在岗&nbsp;&nbsp;
            <input type="radio" name="radio" id="radio5" value="radio"/> 待岗&nbsp;&nbsp;
            <input type="radio" name="radio" id="radio6" value="radio"/>其他&nbsp;
            <input name="textarea17" type="text" id="textarea17" value="" size="30" class="pi"></td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio7" value="radio"/>已婚&nbsp;
            <input type="radio" name="radio" id="radio8" value="radio"/>未婚&nbsp;&nbsp;
            <input type="radio" name="radio" id="radio9" value="radio"/>离异&nbsp;
            <input type="radio" name="radio" id="radio10" value="radio"/>丧偶&nbsp;&nbsp;
            <input type="radio" name="radio" id="radio11" value="radio"/>其他：&nbsp;
            <input name="textarea18" type="text" id="textarea18" value="" size="30" class="pi"></td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">证件状况</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox4" id="checkbox41"/>计生证&nbsp;
            <input type="checkbox" name="checkbox4" id="checkbox42"/>健康证&nbsp;&nbsp;
            <input type="checkbox" name="checkbox4" id="checkbox43"/>暂住证&nbsp;&nbsp;
            <input type="checkbox" name="checkbox4" id="checkbox44"/>上岗证֤
        </td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">个人技能</td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
                <tr>
                    <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox6" id="checkbox71"/>照顾婴儿
                        &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox6" id="checkbox72"/>带小孩 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox6" id="checkbox73"/>照顾老人 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox7" id="checkbox74"/>煮饭 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox8" id="checkbox75"/>粤菜 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox9" id="checkbox76"/>客家菜 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox10" id="checkbox77"/>煲汤
                    </td>
                </tr>
                <tr>
                    <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox6" id="checkbox81"/>扫地 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox6" id="checkbox82"/>拖地 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox6" id="checkbox83"/>擦窗&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox7" id="checkbox84"/>洗衣 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox8" id="checkbox85"/>打蜡 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="checkbox9" id="checkbox86"/>通渠&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他
                        <input name="textarea26" type="text" id="textarea26" value="" size="30" class="pi"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" align="center" class="text" nowrap><input type="submit" name="searchbtn3" value="检索"
                                                                  class="button_new"
                                                                  onClick="javascript:location.href='grxx.htm'">
            <input type="submit" name="searchbtn3" value="返回" class="button_new"
                   onClick="javascript:location.href='grxx.htm'">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
</body>
</html>
