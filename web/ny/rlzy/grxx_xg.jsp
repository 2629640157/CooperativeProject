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
<form action="workerSvl?reqType=update" method="post">
<table width="96%" height="512" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
  <tr>
    <td width="106" height="23" align="right" bgcolor="#FFFFFF">员工编号：</td>
    <td width="280" bgcolor="#FFFFFF"><input name="wid" type="text" id="wid" value="${wk.wid}" size="30" class="pi" readonly></td>
    <td width="116" align="right" bgcolor="#FFFFFF">所属公司：</td>
    <td width="296" bgcolor="#FFFFFF"><input name="cname" type="text" id="cname" value="${wk.company.cname}" size="30" class="pi"></td>
    <td width="135" rowspan="6" align="center" valign="middle" bgcolor="#FFFFFF"><img src="workerSvl?reqType=getWorkerPhoto&photo=${wk.photo}" style="height: 260px;width: 260px;"></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">姓名：</td>
    <td bgcolor="#FFFFFF"><input name="wname" type="text" id="wname" value="${wk.wname}" size="30" class="pi"></td>
    <td align="right" bgcolor="#FFFFFF">性别：</td>
    <td bgcolor="#FFFFFF"><input type="radio" name="wsex" id="man" value="男"${wk.wsex eq '男'?"checked":""}>
      男
      <input type="radio" name="wsex" id="woman" value="女"${wk.wsex eq '女'?"checked":""}>
      女</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">身份证号码：</td>
    <td bgcolor="#FFFFFF"><input name="idcard" type="text" id="idcard" value="${wk.idcard}" size="30" class="pi"></td>
    <td height="23" align="right" bgcolor="#FFFFFF">出生年月：</td>
    <td bgcolor="#FFFFFF"><input name="birth" type="text" id="birth" value="${wk.birth}" size="30" class="pi" readonly></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF">年龄：</td>
    <td bgcolor="#FFFFFF"><input name="wage" type="text" id="wage" value="${wk.wage}" size="30" class="pi"></td>
    <td height="23" align="right" bgcolor="#FFFFFF">身高：</td>
    <td bgcolor="#FFFFFF"><input name="hige" type="text" id="hige" value="${wk.hige}" size="30" class="pi"></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF">手机：</td>
    <td bgcolor="#FFFFFF"><input name="sellphone" type="text" id="cellphone" value="${wk.sellphone}" size="30" class="pi"></td>
    <td align="right" bgcolor="#FFFFFF">电话：</td>
    <td bgcolor="#FFFFFF"><input name="phone" type="text" id="phone" value="${wk.phone}" size="30" class="pi"></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF">从业时间：</td>
    <td bgcolor="#FFFFFF"><input name="worktime" type="text" id="textarea7" value="${wk.worktime}" size="30" class="pi" readonly></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">缺陷：</td>
    <td bgcolor="#FFFFFF"><input name="defect" type="text" id="textarea10" value="${wk.defect}" size="30" class="pi"></td>
    <td align="right" bgcolor="#FFFFFF">教育程度：</td>
    <td colspan="2" bgcolor="#FFFFFF"><input type="radio" name="education" id="bigschool" value="大专"${wk.education eq '大专'?"checked":""} />
      大专&nbsp;
      <input type="radio" name="education" id="highschool" value="高中"${wk.education eq '高中'?"checked":""} />
      高中&nbsp;
      <input type="radio" name="education" id="middleschool" value="初中"${wk.education eq '初中'?"checked":""} />
      初中&nbsp;
      <input type="radio" name="education" id="smallschool" value="小学"${wk.education eq '小学'?"checked":""} />
      小学&nbsp; </td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">户籍地址：</td>
    <td colspan="4" bgcolor="#FFFFFF">
      <input name="jhddress" type="text" id="" value="${wk.jhddress}" size="65" class="pi">
      <span class="text">
        <input type="submit" name="searchbtn" value="选  择" class="button_new">
        </span></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">现住地址：</td>
    <td colspan="4" bgcolor="#FFFFFF"><input name="address" type="text" id="textarea13" value="${wk.address}" size="65" class="pi">
      <span class="text">
        <input type="submit" name="searchbtn2" value="选  择" class="button_new">
      </span></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">银行卡号：</td>
    <td bgcolor="#FFFFFF"><input name="card" type="text" id="card" value="${wk.card}" size="30" class="pi"></td>
    <td align="right" bgcolor="#FFFFFF">保险单号：</td>
    <td bgcolor="#FFFFFF"><input name="bxnumber" type="text" id="bxnumber" value="${wk.bxnumber}" size="30" class="pi"></td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">爱好：</td>
    <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="hobby" value="唱歌" id="sing"${wk.hobby eq '唱歌'?"checked":""} />
      唱歌&nbsp;
      <input type="checkbox" name="hobby" value="跳舞" id="dance"${wk.hobby eq '舞蹈'?"checked":""} />
      舞蹈&nbsp;
      <input type="checkbox" name="hobby"value="乐器" id="music"${wk.hobby eq '乐器'?"checked":""} />
      乐器&nbsp;
      <input type="checkbox" name="hobby" value="体育" id="sports"${wk.hobby eq '体育'?"checked":""} />
      体育&nbsp;
      <input type="checkbox" name="hobby" value="书法" id="write"${wk.hobby eq '书法'?"checked":""} />
      书法&nbsp; </td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">语言：</td>
    <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="language" id="planguage" value="普通话" ${wk.language eq '普通话'?"checked":""}/>
      普通话&nbsp;
      <input type="checkbox" name="language"value="广州话"  id="glanguage"${wk.language eq '广州话'?"checked":""} />
      广州话&nbsp;
      <input type="checkbox" name="language"value="英语"  id="english"${wk.hobby eq '英语'?"checked":""} />
      英语
      其它语言：&nbsp;
      <input name="language" type="text" id="qlanguage"  size="30" class="pi"></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">状态：</td>
    <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="status" id="zaigang" value="在岗"${wk.status eq '在岗'?"checked":""} />
      在岗&nbsp;&nbsp;
      <input type="radio" name="status" id="daigang" value="待岗"${wk.status eq '待岗'?"checked":""} />
      待岗&nbsp;&nbsp;
      <input type="radio" name="status" id="qita" value="其他"${!wk.status eq '在岗' or '待岗'?"checked":""} />
      其它：&nbsp;
      <input name="status" type="text" id="textarea17" value="" size="30" class="pi"></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况：</td>
    <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="marry" id="amarry" value="已婚"${wk.hystatus eq '已婚'?"checked":""} />
      已婚
      &nbsp;
      <input type="radio" name="marry" id="nomarry" value="未婚"${wk.hystatus eq '未婚'?"checked":""} />
      未婚&nbsp;&nbsp;
      <input type="radio" name="marry" id="lvmarry" value="离异"${wk.hystatus eq '离异'?"checked":""} />
      离异
      &nbsp;
      <input type="radio" name="marry" id="lfmarry" value="丧偶" ${wk.hystatus eq '丧偶'?"checked":""}/>
      丧偶
      &nbsp;&nbsp;
      <input type="radio" name="marry" id="qmarry" value="其他"${wk.hystatus eq '其他'?"checked":""} />
      其它：&nbsp;
      <input name="marry" type="text" id="textarea18" value="" size="30" class="pi"></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">证照状况：</td>
    <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="zhengzhao" value="计生证" id="jisheng"${wk.zjstatus eq '计生证'?"checked":""} />
      计生证&nbsp;
      <input type="checkbox" name="zhengzhao" id="jiankang"value="健康证" ${wk.zjstatus eq '健康证'?"checked":""}/>
      健康证&nbsp;&nbsp;
      <input type="checkbox" name="zhengzhao" id="zanzhu"value="暂住证"${wk.zjstatus eq '暂住证·'?"checked":""} />
      暂住证&nbsp;&nbsp;&nbsp;
      <input type="checkbox" name="zhengzhao" id="shanggang"value="上岗证" ${wk.zjstatus eq '上岗证'?"checked":""}/>
      上岗证 </td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">体检情况：</td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td width="68%" height="28" bgcolor="#FFFFFF"><input type="checkbox" name="tijian" id="gangong"${wk.tjstatus eq '肝功'?"checked":""}  />
          肝功&nbsp;
          <input type="checkbox" name="tijian" value="胸透" id="xiongtou"${wk.tjstatus eq '胸透'?"checked":""}  />
          胸透&nbsp;&nbsp;
          <input type="checkbox" name="tijian" id="pifu"value="皮肤" ${wk.tjstatus eq '皮肤'?"checked":""} />
          皮肤
          <input type="checkbox" name="tijian" id="fuke"value="妇科" ${wk.tjstatus eq '妇科'?"checked":""} />
          妇科
          &nbsp;&nbsp;&nbsp;&nbsp;其它：&nbsp;
          <input name="tijian" type="text" id="tijianqita"  size="30" class="pi"></td>
        <td width="11%" align="right" bgcolor="#FFFFFF">体检时间：</td>
        <td width="21%" bgcolor="#FFFFFF"><input name="tjtime" type="text" id="tjtime" value="${wk.tjtime}" size="16" class="pi" readonly></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" nowrap bgcolor="#FFFFFF">家庭成员：
      <input type="button" name="button3" id="button3" value="+" />      </td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td height="28" bgcolor="#FFFFFF"><div align="center">关系</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">姓名</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">年龄</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">电话</div></td>
        <td height="28" bgcolor="#FFFFFF"><div align="center">工作单位(学校)</div></td>
      </tr>
      <tr>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="frelation" type="text" id="frelation" value="${wk.family.relation}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="fname" type="text" id="fname" value="${wk.family.fname}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="fage" type="text" id="textarea23" value="${wk.family.fage}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="fphone" type="text" id="fphone" value="${wk.family.phone}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="fworkplace" type="text" id="fworkplace" value="${wk.family.workplace}" size="18" class="pi" readonly></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">个人技能：</td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="skill" id="lookbaby" value="照顾婴儿" ${wk.grskills eq '照顾婴儿'?"checked":""} />
          照顾婴儿        &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="takebaby"value="带小孩"${wk.grskills eq '带小孩'?"checked":""} />
          带小孩          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="lookoldman"value="照顾老人" ${wk.grskills eq '照顾老人'?"checked":""}/>
          照顾老人          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="zhufan"value="煮饭"${wk.grskills eq '煮饭'?"checked":""} />
          煮饭          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="yuecai"value="粤菜"${wk.grskills eq '粤菜'?"checked":""}/>
          粤菜          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="kejiacai"value="客家菜" ${wk.grskills eq '客家菜'?"checked":""}/>
          客家菜          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="baotang"value="煲汤"${wk.grskills eq '煲汤'?"checked":""} />
          煲汤</td>
      </tr>
      <tr>
        <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="skill"value="扫地" id="saodi"${wk.grskills eq '扫地'?"checked":""} />
          扫地        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="tuodi"value="拖地" ${wk.grskills eq '拖地'?"checked":""}/>
          拖地          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="cachuang"value="擦窗"${wk.grskills eq '擦窗'?"checked":""} />
          擦窗
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="xiyi" value="洗衣"${wk.grskills eq '洗衣'?"checked":""}/>
          洗衣          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="dala"value="打蜡"${wk.grskills eq '打蜡'?"checked":""} />
          打蜡          &nbsp;&nbsp;&nbsp;
          <input type="checkbox" name="skill" id="tongqu"value="通渠" ${wk.grskills eq '通渠'?"checked":""}/>
          通渠&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;其它：
          <input name="skill" type="text" id="jnqita"  size="30" class="pi"></td>
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
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="eworkplace" type="text" id="eworkplace" value="${wk.experience.workplace}" size="40" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="ekinds" type="text" id="ekinds" value="${wk.experience.kinds}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="eduty" type="text" id="eduty" value="${wk.experience.duty}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="eworktime" type="text" id="eworktime" value="${wk.experience.worktime}" size="18" class="pi" readonly></td>
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
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="torganization" type="text" id="torganization" value="${wk.train.organization}" size="40" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="tcontent" type="text" id="tcontent" value="${wk.train.content}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="tstatus" type="text" id="tstatus" value="${wk.train.status}" size="18" class="pi"></td>
        <td height="28" align="center" bgcolor="#FFFFFF"><input name="ttime" type="text" id="ttime" value="${wk.train.time}" size="18" class="pi" readonly></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">自我介绍：</td>
    <td colspan="4" bgcolor="#FFFFFF"><textarea name="jieshao" id="jieshao" cols="60" rows="5">${wk.jieshao}</textarea></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">人人要求：</td>
    <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
      <tr>
        <td width="10%" height="28" align="right" bgcolor="#FFFFFF">时间要求：</td>
        <td width="37%" height="28" bgcolor="#FFFFFF"><input name="timerequire" type="text" id="timerequire" value="${wk.timerequire}" size="40" class="pi"></td>
        <td width="10%" height="28" align="right" bgcolor="#FFFFFF">住宿：</td>
        <td width="43%" height="28" bgcolor="#FFFFFF"><input name="live" type="text" id="live" value="${wk.live}" size="40" class="pi"></td>
      </tr>
      <tr>
        <td height="28" align="right" bgcolor="#FFFFFF">工资要求：</td>
        <td height="28" bgcolor="#FFFFFF"><input name="salaryrequire" type="text" id="salaryrequire" value="${wk.salaryrequire}" size="40" class="pi"></td>
        <td height="28" align="right" bgcolor="#FFFFFF">餐饮或其它：</td>
        <td height="28" bgcolor="#FFFFFF"><input name="eat" type="text" id="eat" value="${wk.eat}" size="40" class="pi"></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="96%" height="104" border="0" align="center" class="text_lb">
  <tr>
    <td width="126" height="23" align="right">个人声明：</td>
    <td width="1146">1、本资料由所属公司提供，本人保证所填资料属实。</td>
  </tr>
  <tr>
    <td height="23">&nbsp;</td>
    <td>2、本人保证从无任何刑事记录。</td>
  </tr>
  <tr>
    <td height="23">&nbsp;</td>
    <td>3、如有虚假或伪造资料，一切责任自负。</td>
  </tr>
  <tr>
    <td height="23">&nbsp;</td>
    <td>4、本人同意将资料公布在96909系统。</td>
  </tr>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" align="center" class="text" nowrap><input type="submit"  value="保  存" class="button_new" >
      <input type="button" name="searchbtn3" value="返  回" class="button_new"onClick="javascript:location.href='workerSvl?reqType=queryworker'" >
      <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>
</table>
</form>
</body>
</html>
