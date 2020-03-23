<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
  <!--
  .STYLE1 {	font-size: 24px;
    font-weight: bold;
  }
  -->
</style>
<head>
  <title>Untitled Document</title>
  <script type="text/javascript" src="../tdp/js/validator.js"></script>
  <script type="text/javascript" src="../tdp/js/public.js"></script>
  <script type="text/javascript" src="../javascript/handleArchive.js"></script>
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
  </script>
</head>

<body>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;人力资源--&gt;工人管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" height="40" align="center" nowrap class="MENU_line1">工人资料登记表</td>
  </tr>
</table>
<br>
<table width="96%" height="512" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
  <tr>
    <td width="118" height="23" align="right" bgcolor="#FFFFFF">员工编号：</td>
    <td width="284" bgcolor="#FFFFFF">${worker.wid}</td>
    <td width="104" align="right" bgcolor="#FFFFFF">所属公司：</td>
    <td width="289" bgcolor="#FFFFFF">${worker.company.cname}</td>
    <td width="138" rowspan="6" align="center" valign="middle" bgcolor="#FFFFFF"><img src="workerSvl?reqType=getWorkerPhoto&photo=${worker.photo}" style="width: 240px; height: 240px"></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">姓名：</td>
    <td bgcolor="#FFFFFF">${worker.wname}</td>
    <td align="right" bgcolor="#FFFFFF">性别：</td>
    <td bgcolor="#FFFFFF">${worker.wsex}         </td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">身份证号码：</td>
    <td bgcolor="#FFFFFF">${worker.idcard}</td>
    <td height="23" align="right" bgcolor="#FFFFFF">出生年月：</td>
    <td bgcolor="#FFFFFF">${worker.birth}&nbsp;</td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF">年龄：</td>
    <td bgcolor="#FFFFFF">${worker.wage}</td>
    <td height="23" align="right" bgcolor="#FFFFFF">身高：</td>
    <td bgcolor="#FFFFFF">${worker.hige}&nbsp;</td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF">手机：</td>
    <td bgcolor="#FFFFFF">${worker.sellphone}</td>
    <td align="right" bgcolor="#FFFFFF">电话：</td>
    <td bgcolor="#FFFFFF">${worker.phone}</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">工种：</td>
    <td bgcolor="#FFFFFF">${worker.kinds}&nbsp;</td>
    <td align="right" bgcolor="#FFFFFF">从业时间：</td>
    <td bgcolor="#FFFFFF">${worker.worktime}</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">缺陷：</td>
    <td bgcolor="#FFFFFF">${worker.defect}</td>
    <td align="right" bgcolor="#FFFFFF">教育程度：</td>
    <td bgcolor="#FFFFFF">${worker.education}&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">户籍地址：</td>
    <td colspan="4" bgcolor="#FFFFFF">${worker.jhddress}</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">现住地址：</td>
    <td colspan="4" bgcolor="#FFFFFF">${worker.address}</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">银行卡号：</td>
    <td bgcolor="#FFFFFF">${worker.card}</td>
    <td align="right" bgcolor="#FFFFFF">保险单号：</td>
    <td colspan="2" bgcolor="#FFFFFF">${worker.bxnumber}</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">爱好：</td>
    <td colspan="4" bgcolor="#FFFFFF">${worker.hobby}&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">语言：</td>
    <td colspan="4" bgcolor="#FFFFFF">${worker.language}&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">状态：</td>
    <td colspan="4" bgcolor="#FFFFFF">
      ${worker.status}     </td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况：</td>
    <td colspan="4" bgcolor="#FFFFFF">      ${worker.hystatus}    </td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">证照状况：</td>
    <td colspan="4" bgcolor="#FFFFFF">     ${worker.zjstatus}&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">体检情况：</td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td width="68%" height="28" bgcolor="#FFFFFF">${worker.tjstatus}&nbsp;</td>
        <td width="11%" align="right" bgcolor="#FFFFFF">体检时间：</td>
        <td width="21%" bgcolor="#FFFFFF">${worker.tjtime}&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" nowrap bgcolor="#FFFFFF">家庭成员：
      <input type="button" name="button3" id="button3" value="+" />  </td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td height="28" bgcolor="#FFFFFF"><div align="center">关系</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">姓名</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">年龄</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">电话</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">工作单位(学校)</div></td>
      </tr>
      <tr>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.family.relation}</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.family.fname}</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.family.fage}</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.family.phone}</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.family.workplace}&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">个人技能：</td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td height="28" bgcolor="#FFFFFF"> ${worker.grskills}            &nbsp;</td>
      </tr>
      <tr>
        <td height="28" bgcolor="#FFFFFF">                 &nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">主要工作经历：
      <input type="button" name="button4" id="button4" value="+" />      </td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td width="45%" height="28" bgcolor="#FFFFFF"><div align="center">单位</div></td>
        <td width="17%" height="28" bgcolor="#FFFFFF"><div align="center">工种</div></td>
        <td width="17%" height="28" bgcolor="#FFFFFF"><div align="center">职务</div></td>
        <td width="21%" height="28" bgcolor="#FFFFFF"><div align="center">工作时间</div></td>
      </tr>
      <tr>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.experience.workplace}&nbsp;</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.experience.kinds}&nbsp;</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.experience.duty}&nbsp;</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.experience.worktime}&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">岗位培训记录：
      <input type="button" name="button5" id="button5" value="+" />      </td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td width="42%" height="28" bgcolor="#FFFFFF"><div align="center">培训机构</div></td>
        <td width="25%" height="28" bgcolor="#FFFFFF"><div align="center">培训内容</div></td>
        <td width="15%" height="28" bgcolor="#FFFFFF"><div align="center">培训情况</div></td>
        <td width="18%" height="28" bgcolor="#FFFFFF"><div align="center">培训时间</div></td>
      </tr>
      <tr>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.train.organization}&nbsp;</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.train.content}&nbsp;</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.train.status}&nbsp;</td>
        <td height="28" align="center" bgcolor="#FFFFFF">${worker.train.time}&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">自我介绍：</td>
    <td colspan="4" bgcolor="#FFFFFF">${worker.jieshao}&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">人人要求：</td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td width="10%" height="28" align="right" bgcolor="#FFFFFF">时间要求：</td>
        <td width="37%" height="28" bgcolor="#FFFFFF">${worker.timerequire}&nbsp;</td>
        <td width="10%" height="28" align="right" bgcolor="#FFFFFF">住宿：</td>
        <td width="43%" height="28" bgcolor="#FFFFFF">${worker.live}&nbsp;</td>
      </tr>
      <tr>
        <td height="28" align="right" bgcolor="#FFFFFF">工资要求：</td>
        <td height="28" bgcolor="#FFFFFF">${worker.salaryrequire}&nbsp;</td>
        <td height="28" align="right" bgcolor="#FFFFFF">餐饮或其它：</td>
        <td height="28" bgcolor="#FFFFFF">${worker.eat}&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" align="center" class="text" nowrap><input type="submit" name="searchbtn3" value="返  回" class="button_new"onClick="javascript:location.href='workerSvl?reqType=queryworker'" >
      <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>
</table>
</body>
</html>