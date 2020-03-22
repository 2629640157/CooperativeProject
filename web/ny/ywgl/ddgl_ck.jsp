<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
    <!--
    .STYLE2 {
        font-size: 16px
    }

    .STYLE3 {
        color: #FF0000
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
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;业务管理--&gt;订单管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<table width="96%" height="80" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="40" align="center" nowrap class="MENU_line1">家政服务消费者订单</td>
    </tr>
    <tr>
        <td align="right" nowrap class="MENU_line1 STYLE2">订单编号：GZ20006300223</td>
    </tr>
</table>
<br>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
        <td width="10%" align="right" bgcolor="#FFFFFF">姓名：</td>
        <td width="13%" bgcolor="#FFFFFF">${deal.employer.ename}</td>
        <td width="12%" align="right" bgcolor="#FFFFFF">性别：</td>
        <td width="17%" bgcolor="#FFFFFF">${deal.employer.esex}</td>
        <td width="10%" align="right" bgcolor="#FFFFFF">年龄：</td>
        <td width="13%" bgcolor="#FFFFFF">${deal.employer.eage}</td>
        <td width="10%" align="right" bgcolor="#FFFFFF">民族：</td>
        <td width="15%" bgcolor="#FFFFFF">${deal.employer.nation}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">籍贯：</td>
        <td bgcolor="#FFFFFF">${deal.employer.nationplace}</td>
        <td align="right" bgcolor="#FFFFFF">学历：</td>
        <td bgcolor="#FFFFFF">${deal.employer.education}</td>
        <td align="right" bgcolor="#FFFFFF">身份证号码：</td>
        <td colspan="3" bgcolor="#FFFFFF">${deal.employer.idcard}</td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">户口所在地：</td>
        <td colspan="7" bgcolor="#FFFFFF">${deal.employer.hkaddress}</td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">手机：</td>
        <td align="left" bgcolor="#FFFFFF">${deal.employer.cellphone}</td>
        <td align="right" nowrap bgcolor="#FFFFFF">住宅：</td>
        <td align="left" bgcolor="#FFFFFF">${deal.employer.address}</td>
        <td align="right" bgcolor="#FFFFFF">职业：</td>
        <td colspan="3" bgcolor="#FFFFFF">${deal.employer.duty}</td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">工作单位：</td>
        <td colspan="7" bgcolor="#FFFFFF">${deal.employer.workplace}</td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">接受工资：</td>
        <td colspan="2" align="left" bgcolor="#FFFFFF">从&nbsp;&nbsp;
            ${deal.employer.min_salary} &nbsp;&nbsp;
            到&nbsp;&nbsp;${deal.employer.max_salary}
           </td>
        <td align="left" bgcolor="#FFFFFF">&nbsp;</td>
        <td align="right" bgcolor="#FFFFFF">介绍费：</td>
        <td colspan="3" bgcolor="#FFFFFF">${deal.introducefee}</td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">雇用：</td>
        <td colspan="7" bgcolor="#FFFFFF">${deal.kinds}</td>
    </tr>
    <tr>
        <td colspan="2" align="right" bgcolor="#FFFFFF">服务处所（地址）：</td>
        <td colspan="6" bgcolor="#FFFFFF">${deal.employer.serviceaddress}</td>
    </tr>
    <tr>
        <td rowspan="6" align="center" bgcolor="#FFFFFF">家<br>
            庭<br>
            资<br>
            料
        </td>
        <td align="right" bgcolor="#FFFFFF">居住地址：</td>
        <td colspan="6" align="left" bgcolor="#FFFFFF">${deal.employer.familyaddress}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">家庭人数：</td>
        <td colspan="6" bgcolor="#FFFFFF">${deal.employer.familynumber}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">服务内容：</td>
        <td colspan="6" bgcolor="#FFFFFF">${deal.employer.content}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">房屋面积：</td>
        <td colspan="6" bgcolor="#FFFFFF">${deal.employer.area}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">饮食习惯：</td>
        <td colspan="6" bgcolor="#FFFFFF">${deal.employer.habit}</td>
    </tr>
    <tr>
        <td align="right" bgcolor="#FFFFFF">其他：</td>
        <td colspan="6" bgcolor="#FFFFFF">${deal.employer.other}</td>
    </tr>
    <tr>
        <td align="center" nowrap bgcolor="#FFFFFF">要求服务等级：</td>
        <td colspan="7" align="left" bgcolor="#FFFFFF">${deal.employer.require}</td>
    </tr>
    <tr>
        <td align="right" nowrap bgcolor="#FFFFFF">经办人：</td>
        <td align="left" bgcolor="#FFFFFF">${deal.employer.agent}</td>
        <td align="right" bgcolor="#FFFFFF">登记日期：</td>
        <td align="left" bgcolor="#FFFFFF">${deal.starttime}</td>
        <td align="right" bgcolor="#FFFFFF">订单有效期：</td>
        <td align="left" bgcolor="#FFFFFF">${deal.usefultime}</td>
        <td align="right" bgcolor="#FFFFFF">状态：</td>
        <td align="left" bgcolor="#FFFFFF">${deal.status}<span class="text">
    </span></td>
    </tr>
</table>
<table width="96%" height="63" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="63" align="center" nowrap class="text">
            <input type="submit" name="searchbtn3"value="返  回" class="button_new" onClick="javascript:location.href='${pageContext.request.contextPath}/ny/ywgl/deal?type=queryWorkers&pageNow=${pageNow}'">
            <input type="hidden" name="pageNow" value="${pageNow}">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</body>
</html>
