<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
    <!--
    .STYLE2 {
        font-size: 16px
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
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;业务管理--&gt;用工管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>


<table width="96%" height="80" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="40" align="center" nowrap class="MENU_line1">家政服务消费订单</td>
    </tr>
    <tr>
        <td align="right" nowrap class="MENU_line1 STYLE2">订单编号：GZ20006300223</td>
    </tr>
</table>
<p>雇主：<br>
</p>
<form action="${pageContext.request.contextPath}/ny/ywgl/deal?type=addWorker" method="post">
    <input type="hidden" name="pageNow" value="${pageNow}">
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
        <td width="10%" align="right" bgcolor="#FFFFFF">姓名：</td>
        <td width="13%" bgcolor="#FFFFFF"><input type="text" name="ename"></td>
        <td width="12%" align="right" bgcolor="#FFFFFF">性别：</td>
        <td width="17%" bgcolor="#FFFFFF">
            <input type="radio" name="esex" id="radio12" value="男">
            男
            <input type="radio" name="esex" id="radio13" value="女">
            女
        </td>
        <td width="10%" align="right" bgcolor="#FFFFFF">年龄：</td>
        <td width="13%" bgcolor="#FFFFFF"><input name="eage" type="text" value="" size="15" class="pi"></td>
        <td width="10%" align="right" bgcolor="#FFFFFF">民族：</td>
        <td width="15%" bgcolor="#FFFFFF"><input name="nation" type="text" id="textarea2" value="" size="15" class="pi">
        </td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">籍贯：</td>
        <td bgcolor="#FFFFFF"><input name="nativeplace" type="text" value="" size="15" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">学历：</td>
        <td bgcolor="#FFFFFF"><input name="education" type="text" value="" size="15" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">身份证号码：</td>
        <td colspan="3" bgcolor="#FFFFFF"><input name="eidcard" type="text"  value="" size="20" class="pi"></td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">户口所在地：</td>
        <td colspan="7" bgcolor="#FFFFFF"><input name="hkaddress" type="text" id="textarea12" value="" size="65"
                                                 class="pi"></td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">手机：</td>
        <td align="left" bgcolor="#FFFFFF"><input name="cellphone" type="text" value="" size="15" class="pi"></td>
        <td align="right" nowrap bgcolor="#FFFFFF">住宅：</td>
        <td align="left" bgcolor="#FFFFFF"><input name="address" type="text" id="textarea22" value="" size="15" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">职业：</td>
        <td colspan="3" bgcolor="#FFFFFF"><input name="duty" type="text"  value="" size="20" class="pi"></td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">工作单位：</td>
        <td colspan="7" bgcolor="#FFFFFF"><input name="workplace" type="text"  value="" size="65" class="pi"></td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">接受工资：</td>
        <td colspan="2" align="left" bgcolor="#FFFFFF">从
            <input name="min_salary" type="text" id="textarea11" value="" size="8" class="pi">
            到
            <input name="max_salary" type="text" id="textarea23" value="" size="8" class="pi"></td>
        <td align="left" bgcolor="#FFFFFF">&nbsp;</td>
        <td align="right" bgcolor="#FFFFFF">介绍费：</td>
        <td colspan="3" bgcolor="#FFFFFF"><input name="introducefee" type="text" id="textarea24" value="" size="20" class="pi"></td>
    </tr>


    <tr>
        <td colspan="2" align="right" bgcolor="#FFFFFF">服务处所（地址）：</td>
        <td colspan="6" bgcolor="#FFFFFF"><input name="serviceaddress" type="text" id="textarea13" value="" size="44"
                                                 class="pi"></td>
    </tr>
    <tr>
        <td rowspan="6" align="center" bgcolor="#FFFFFF">家<br>
            庭<br>
            资<br>
            料
        </td>
        <td align="right" bgcolor="#FFFFFF">居住地址：</td>
        <td colspan="6" align="left" bgcolor="#FFFFFF"><input name="familyaddress" type="text" id="textarea14" value="" size="44" class="pi"></td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">家庭人数：</td>
        <td colspan="6" bgcolor="#FFFFFF"><input name="familynumber" type="text" id="textarea15" value="" size="44" class="pi"></td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">服务内容：</td>
        <td colspan="6" bgcolor="#FFFFFF"><input name="content" type="text" id="textarea16" value="" size="44"
                                                 class="pi"></td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">房屋面积：</td>
        <td colspan="6" bgcolor="#FFFFFF"><input name="area" type="text" id="textarea17" value="" size="44" class="pi"></td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">饮食习惯：</td>
        <td colspan="6" bgcolor="#FFFFFF"><input name="habit" type="text" id="textarea18" value="" size="44"
                                                 class="pi"></td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">其他：</td>
        <td colspan="6" bgcolor="#FFFFFF"><input name="other" type="text" id="textarea19" value="" size="44" class="pi"></td>
    </tr>
    <tr>

        <td colspan="8" align="left" bgcolor="#FFFFFF" height="33"></td>
    </tr>
    <tr>
        <td colspan="8" align="left" nowrap bgcolor="#FFFFFF">工人：</td>

    </tr>
    <tr>
        <td colspan="8" align="left" bgcolor="#FFFFFF">
            <table height="236" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
                   class="text_lb">
                <tr>
                    <td width="88" height="23" align="right" bgcolor="#FFFFFF">员工编号：</td>
                    <td width="221" bgcolor="#FFFFFF"><input name="wid" type="text" id="textarea" value="" size="30" class="pi"></td>
                    <td width="75" align="right" bgcolor="#FFFFFF">所属公司：</td>
                    <td width="258" bgcolor="#FFFFFF"><input name="cid" type="text" id="textarea4" value="" size="30" class="pi"></td>
                    <td width="87" rowspan="8" align="center" valign="middle" bgcolor="#FFFFFF"></td>
                </tr>
                <tr>
                    <td height="23" align="right" bgcolor="#FFFFFF">姓名：</td>
                    <td bgcolor="#FFFFFF"><input type="text" value="" name="wname"></td>
                    <td align="right" bgcolor="#FFFFFF">性别：</td>
                    <td bgcolor="#FFFFFF"><input type="radio" name="wsex" id="radio" value="男">
                        男
                        <input type="radio" name="wsex" id="radio2" value="女">
                        女
                    </td>
                </tr>
                <tr>
                    <td height="23" align="right" bgcolor="#FFFFFF">身份证号码：</td>
                    <td bgcolor="#FFFFFF"><input name="widcard" type="text" id="textarea40" value="" size="30"
                                                 class="pi"></td>
                    <td height="23" align="right" bgcolor="#FFFFFF">出生年月：</td>
                    <td bgcolor="#FFFFFF"><input name="birth" type="text" id="textarea3" value="" size="30" class="pi"></td>
                </tr>
                <tr>
                    <td align="right" bgcolor="#FFFFFF">年龄：</td>
                    <td bgcolor="#FFFFFF"><input name="wage" type="text" id="textarea5" value="" size="30" class="pi"></td>
                    <td height="23" align="right" bgcolor="#FFFFFF">身高：</td>
                    <td bgcolor="#FFFFFF"><input name="hige" type="text" id="textarea8" value="" size="30" class="pi"></td>
                </tr>
                <tr>
                    <td height="31" align="right" bgcolor="#FFFFFF">手机：</td>
                    <td bgcolor="#FFFFFF"><input name="sellphone" type="text"  value="" size="30"
                                                 class="pi"></td>
                    <td align="right" bgcolor="#FFFFFF">电话：</td>
                    <td bgcolor="#FFFFFF"><input name="phone" type="text" id="textarea6" value="" size="30"
                                                 class="pi"></td>
                </tr>
                <tr>
                    <td height="23" align="right" bgcolor="#FFFFFF">工种：</td>
                    <td bgcolor="#FFFFFF"><input name="wkinds" type="text" id="" value="" size="30"
                                                 class="pi"></td>
                    <td align="right" bgcolor="#FFFFFF">从业时间：</td>
                    <td bgcolor="#FFFFFF"><input name="worktime" type="text" id="textarea7" value="" size="30"
                                                 class="pi"></td>
                </tr>

                <tr>
                    <td height="23" align="right" bgcolor="#FFFFFF">缺陷：</td>
                    <td bgcolor="#FFFFFF"><input name="defect" type="text" id="textarea10" value="" size="30" class="pi"></td>
                    <td align="right" bgcolor="#FFFFFF">教育程度：</td>
                    <td bgcolor="#FFFFFF"><input type="radio" name="weducation"  value="radio"/>
                        大专&nbsp;
                        <input type="radio" name="weducation"  value="radio"/>
                        高中&nbsp;
                        <input type="radio" name="weducation"  value="radio"/>
                        初中&nbsp;
                        <input type="radio" name="weducation"  value="radio"/>
                        小学&nbsp;
                    </td>
                </tr>

            </table>
        </td>
    </tr>
    <tr id="tr1" >
        <td align="right" nowrap bgcolor="#FFFFFF">雇用类型：</td>
        <td colspan="7" bgcolor="#FFFFFF"><input type="checkbox" name="dkinds" value="月嫂"/>
            月嫂
            &nbsp;
            <input type="checkbox" name="dkinds" value="保姆"/>
            保姆&nbsp;&nbsp;
            <input type="checkbox" name="dkinds" value="钟点"/>
            钟点&nbsp;&nbsp;
            <input type="checkbox" name="dkinsd"value="厨嫂" id="checkbox4"/>
            厨嫂
            <input type="checkbox" name="dkinds"value="清洁工" />
            清洁工
            &nbsp;
            <input type="checkbox" name="dkinds" value="护工"/>
            护工&nbsp;&nbsp;
            <input type="checkbox" name="dkinds" value="早教"/>
            早教
            &nbsp;&nbsp;
            <input type="checkbox" name="dkinds" value="家教"/>
            家教
            &nbsp;&nbsp;
            <input type="checkbox" name="dkinds" id="checkbox2" value="高级管家"/>
            高级管家<br>
            备注：
            <input name="dkindstext" type="text" id="textarea9" value="" size="40" class="pi">
            <select name="divdkinds" hidden>
                <option id="div2" selected></option>
            </select>
    </tr>
    <tr>
        <td align="right" colspan="8" height="33" nowrap bgcolor="#FFFFFF"></td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">经办人：</td>
        <td align="left" bgcolor="#FFFFFF"><input name="agent" type="text"  value="" size="14" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">工资:</td>
        <td align="left" bgcolor="#FFFFFF"><input name="salary" type="text" id="textarea21" value="" size="14" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">订单有效期:</td>
        <td align="left" bgcolor="#FFFFFF"><input name="usefultime" type="text" id="textarea27" value="" size="14" class="pi"></td>
        <td align="right" bgcolor="#FFFFFF">状态：</td>
        <td align="left" bgcolor="#FFFFFF"><span class="text">
        <select name="status" id="select" class="input">
          <option>请选择</option>
          <option selected>未雇佣</option>
          <option>雇佣</option>
      </select>
      </span></td>
    </tr>
</table>
<table width="96%" height="63" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="63" align="center" nowrap class="text">
            <input type="submit" name="searchbtn3" value="保  存" class="button_new"
                   onClick="javascript:alert('保存成功！');">
            <input type="button" name="searchbtn3" value="返  回" class="button_new"
                   onClick="javascript:history.back();">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
</body>
<script>
    var check ="";
    //$('input:checkbox:checked') 等同于 $('input[type=checkbox]:checked')
    $("#tr1").mouseleave(function () {
        //意思是选择被选中的checkbox
        check=new Array()
        $.each($('input:checkbox:checked'), function () {
            check.push($(this).val());

        });
        //window.alert("你选了：" + check);
        document.getElementById("div2").innerHTML=check;
    });
</script>
</html>
