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
    <script type="text/javascript" src="../jqurey/jquery-1.3.2.min.js"></script>
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
<form action="${pageContext.request.contextPath}/ny/ywgl/worker" method="post">
    <input type="hidden" name="type" value="grxx_cx">
<table width="96%" height="270" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
       class="text_lb" id="tr2">
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">姓名</td>
        <td bgcolor="#FFFFFF"><input name="wname" type="text" id="textarea2" value="" size="30" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">性别</td>
        <td bgcolor="#FFFFFF"><input type="radio" name="wsex" id="radio" value="男">男
            <input type="radio" name="wsex" id="radio2" value="女">女
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
    <tr id="tr1">
        <td height="23" align="right" bgcolor="#FFFFFF" >语言</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" class="language" name="language" id="checkbox21" value="普通话"/>普通话&nbsp;
            <input type="checkbox" class="language"  name="language" id="checkbox22" value="广东话"/>广东话&nbsp;
            <input type="checkbox" class="language" name="language" id="checkbox23"  value="英语"/>英语&nbsp;
            其他语言&nbsp;<input name="language" type="text" id="textarea16" value="" size="30" class="pi">

    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">状态</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="status" id="radio4"  value="在岗"/>在岗&nbsp;&nbsp;
            <input type="radio" name="status" id="radio5" value="待岗"> 待岗&nbsp;&nbsp;
            <input type="radio" name="status" id="radio6" value="其他"/>其他&nbsp;
            <input name="statustext" type="text" id="textarea17"  size="30" class="pi"></td>
    </tr>
    <tr>
        <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="hystatus" id="radio7" value="已婚"/>已婚&nbsp;
            <input type="radio" name="hystatus" id="radio8" value="未婚"/>未婚&nbsp;&nbsp;
            <input type="radio" name="hystatus" id="radio9" value="离异"/>离异&nbsp;
            <input type="radio" name="hystatus" id="radio10" value="丧偶"/>丧偶&nbsp;&nbsp;
            <input type="radio" name="hystatus" id="radio11" value="其他"/>其他：&nbsp;
            <input name="hystatustext" type="text" id="textarea18" value="" size="30" class="pi"></td>
    </tr>
    <tr >
        <td height="23" align="right" bgcolor="#FFFFFF">证件状况</td>
        <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" class="zjstatus" name="zjstatus" id="checkbox41" value="计生证"/>计生证&nbsp;
            <input type="checkbox" name="zjstatus" class="zjstatus" id="checkbox42" value="健康证"/>健康证&nbsp;&nbsp;
            <input type="checkbox" name="zjstatus" class="zjstatus" id="checkbox43" value="暂住证"/>暂住证&nbsp;&nbsp;
            <input type="checkbox" name="zjstatus" class="zjstatus" id="checkbox44" value="上岗证֤"/>上岗证֤

        </td>
    </tr>
    <tr id="tr3">
        <td height="23" align="right" bgcolor="#FFFFFF">个人技能</td>
        <td colspan="4" bgcolor="#FFFFFF">
            <table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
                <tr >
                    <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="grskills" id="checkbox71" class="grskills" value="照顾婴儿"/>照顾婴儿
                        &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox72" class="grskills" value="带小孩"/>带小孩 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox73" class="grskills" value="照顾老人"/>照顾老人 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox74" class="grskills" value="煮饭"/>煮饭 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox75" class="grskills" value="粤菜"/>粤菜 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox76" class="grskills" value="客家菜"/>客家菜 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox77" class="grskills" value="煲汤"/>煲汤
                    </td>
                </tr>
                <tr>
                    <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="grskills" id="checkbox81" class="grskills" value="照顾婴儿"/>扫地 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox82" class="grskills" value="拖地"/>拖地 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox83" class="grskills" value="擦窗"/>擦窗&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox84" class="grskills" value="洗衣"/>洗衣 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox85" class="grskills" value="打蜡"/>打蜡 &nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="grskills" id="checkbox86" class="grskills" value="通渠"/>通渠&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他
                        <input name="grskills" type="text" id="textarea26" value="" size="30" class="pi">

                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" align="center" class="text" nowrap>
            <input type="submit" name="searchbtn3" value="检索" class="button_new">
            <input type="button" name="searchbtn3" value="返回" class="button_new"
                   onClick="javascript:location.href='grxx.htm'">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
</body>
<script>

   /* $("#tr2").mouseleave(function () {
        //意思是选择被选中的checkbox
        var  check=new Array();
        $.each($('.language:checked'), function () {
            check.push($(this).val());
        });
        //window.alert("你选了：" + check);
        document.getElementById("div1").innerHTML=check;
        var zjstatusList=new Array();
        $.each($('.zjstatus:checked'), function () {
            zjstatusList.push($(this).val());
        });
        document.getElementById("div2").innerHTML=zjstatusList;

        //意思是选择被选中的checkbox
        var grskillsList=new Array();
        $.each($('.grskills:checked'), function () {
            grskillsList.push($(this).val());
        });
        document.getElementById("div3").innerHTML=grskillsList;
    });*/
    /*$("#tr3").mouseleave(function () {
        //意思是选择被选中的checkbox
        var zjstatusList=new Array();
        $.each($('.grskills:checked'), function () {
            zjstatusList.push($(this).val());
        });
        document.getElementById("div3").innerHTML=zjstatusList;
    });*/
</script>
</html>
