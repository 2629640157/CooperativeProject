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
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;业务管理--&gt;客户管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>


<table width="96%" height="80" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="40" align="center" nowrap class="MENU_line1">家政服务消费者资料登记表</td>
    </tr>
    <tr>
        <td align="right" nowrap class="MENU_line1 STYLE2">档案编号：GZ20006300223</td>
    </tr>
</table>
<br>
<form action="${pageContext.request.contextPath}/ny/ywgl/employer" method="post">
    <input type="hidden" value="updateEmployer" name="type">
    <input type="hidden" value="${eid}" name="eid">
    <input type="hidden" value="${pageNow}" name="pageNow">
    <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
        <tr>
            <td width="10%" align="right" bgcolor="#FFFFFF">姓名：</td>
            <td width="15%" bgcolor="#FFFFFF"><input name="ename" type="text" id="textarea40"
                                                     value="${deal.employer.ename}" size="15" class="pi"></td>
            <td width="10%" align="right" bgcolor="#FFFFFF">性别：</td>
            <td width="17%" bgcolor="#FFFFFF"><c:choose>
                <c:when test="${deal.employer.esex=='男'}">
                    <input type="radio" name="esex" checked="checked" value="男">男
                    <input type="radio" name="esex" value="女">女
                </c:when>
                <c:otherwise>
                    <input type="radio" name="esex" value="男">男
                    <input type="radio" name="esex" checked="checked" value="女">女
                </c:otherwise>
            </c:choose></td>
            <td width="10%" align="right" bgcolor="#FFFFFF">年龄：</td>
            <td width="13%" bgcolor="#FFFFFF"><input name="eage" type="text" id="textarea" value="${deal.employer.eage}"
                                                     size="15" class="pi"></td>
            <td width="10%" align="right" bgcolor="#FFFFFF">民族：</td>
            <td width="15%" bgcolor="#FFFFFF"><input name="nation" type="text" id="textarea2"
                                                     value="${deal.employer.nation}" size="15" class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">籍贯：</td>
            <td bgcolor="#FFFFFF"><input name="nationplace" type="text" id="textarea5"
                                         value="${deal.employer.nationplace}" size="15" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">学历：</td>
            <td bgcolor="#FFFFFF"><input name="education" type="text" id="textarea4" value="${deal.employer.education}"
                                         size="15" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">身份证号码：</td>
            <td colspan="3" bgcolor="#FFFFFF"><input name="idcard" type="text" id="textarea3"
                                                     value="${deal.employer.idcard}" size="40" class="pi"></td>
        </tr>
        <tr>
            <td align="right" nowrap bgcolor="#FFFFFF">工作单位：</td>
            <td colspan="5" bgcolor="#FFFFFF"><input name="workplace" type="text" id="textarea6"
                                                     value="${deal.employer.workplace}" size="65" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">职业：</td>
            <td bgcolor="#FFFFFF"><input name="duty" type="text" id="textarea7" value="${deal.employer.duty}" size="15"
                                         class="pi"></td>
        </tr>
        <tr>
            <td align="right" nowrap bgcolor="#FFFFFF">合同号：</td>
            <td colspan="5" bgcolor="#FFFFFF"><input name="htnumber" type="text" id="textarea8"
                                                     value="${deal.employer.htnumber}" size="65" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">合同期限：</td>
            <td bgcolor="#FFFFFF"><input name="httime" type="text" id="textarea9" value="${deal.employer.httime}"
                                         size="15" class="pi"></td>
        </tr>
        <tr>
            <td align="right" nowrap bgcolor="#FFFFFF">联系电话：</td>
            <td align="center" bgcolor="#FFFFFF">手机</td>
            <td colspan="4" bgcolor="#FFFFFF"><input name="cellphone" type="text" id="textarea10"
                                                     value="${deal.employer.cellphone}" size="44" class="pi"></td>
            <td align="right" bgcolor="#FFFFFF">住宅：</td>
            <td bgcolor="#FFFFFF"><input name="address" type="text" id="textarea11" value="${deal.employer.address}"
                                         size="15" class="pi"></td>
        </tr>
        <tr>
            <td align="right" nowrap bgcolor="#FFFFFF">户口所在地：</td>
            <td colspan="7" bgcolor="#FFFFFF"><input name="hkaddress" type="text" id="textarea12"
                                                     value="${deal.employer.hkaddress}" size="65" class="pi"></td>
        </tr>
        <tr>
            <td colspan="2" align="right" bgcolor="#FFFFFF">服务处所（地址）：</td>
            <td colspan="6" bgcolor="#FFFFFF"><input name="serviceaddress" type="text" id="textarea13"
                                                     value="${deal.employer.serviceaddress}" size="44" class="pi"></td>
        </tr>
        <tr>
            <td rowspan="6" align="center" bgcolor="#FFFFFF">家<br>
                庭<br>
                资<br>
                料
            </td>
            <td align="right" bgcolor="#FFFFFF">居住地址：</td>
            <td colspan="6" align="left" bgcolor="#FFFFFF"><input name="familyaddress" type="text" id="textarea14"
                                                                  value="${deal.employer.familyaddress}" size="44"
                                                                  class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">家庭人数：</td>
            <td colspan="6" bgcolor="#FFFFFF"><input name="familynumber" type="text" id="textarea15"
                                                     value="${deal.employer.familynumber}" size="44" class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">服务内容：</td>
            <td colspan="6" bgcolor="#FFFFFF"><input name="content" type="text" id="textarea16"
                                                     value="${deal.employer.content}" size="44" class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">房屋面积：</td>
            <td colspan="6" bgcolor="#FFFFFF"><input name="area" type="text" id="textarea17"
                                                     value="${deal.employer.area}" size="44" class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">饮食习惯：</td>
            <td colspan="6" bgcolor="#FFFFFF"><input name="habit" type="text" id="textarea18"
                                                     value="${deal.employer.habit}" size="44" class="pi"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">其他：</td>
            <td colspan="6" bgcolor="#FFFFFF"><input name="other" type="text" id="textarea19"
                                                     value="${deal.employer.other}" size="44" class="pi"></td>
        </tr>
        <tr>
            <td align="center" nowrap bgcolor="#FFFFFF">要求服务等级：</td>
            <td colspan="7" align="left" bgcolor="#FFFFFF"><input name="require" type="text" id="textarea20"
                                                                  value="${deal.employer.require}" size="65" class="pi">
            </td>
        </tr>
        <tr>
            <td align="right" nowrap bgcolor="#FFFFFF">经办人：</td>
            <td colspan="7" align="left" bgcolor="#FFFFFF"><input name="agent" type="text" id="textarea21"
                                                                  value="${deal.employer.agent}" size="65" class="pi">
            </td>
        </tr>
        <tr>
            <td align="right" nowrap bgcolor="#FFFFFF">登记日期：</td>
            <td colspan="7" align="left" bgcolor="#FFFFFF"><input name="time" type="text" id="textarea22"
                                                                  value="${deal.starttime}" size="65" class="pi"></td>
        </tr>
    </table>
    <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="67%" align="center" class="text" nowrap><input type="submit" name="searchbtn3" value="保  存"
                                                                      class="button_new">
                <input type="submit" name="searchbtn3" value="返  回" class="button_new"
                       onClick="javascript:history.back();">
                <input type="hidden" name="mod" value="no">
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
</body>
</html>
