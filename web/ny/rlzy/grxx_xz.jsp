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
  <script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
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
<form action="${pageContext.request.contextPath}/ny/rlzy/workerAdSvl?reqType=insert" method="post" enctype="multipart/form-data">

  <table width="96%" height="512" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
      <td width="106" height="23" align="right" bgcolor="#FFFFFF">员工编号：</td>
      <td width="280" bgcolor="#FFFFFF"><input name="wid" type="text" id="wid"  size="30" class="pi" ></td>
      <td width="116" align="right" bgcolor="#FFFFFF">所属公司：</td>
      <td width="296" bgcolor="#FFFFFF">
        <select name="cid" id="select" class="pi">
        <option value="1" selected>淘宝</option>
        <option value="2">京东</option>
        <option value="3">阿里</option>
        <option value="4">腾讯</option>
        <option value="5">百度</option>
      </select></td>
      <td width="135" rowspan="6" align="center" valign="middle" bgcolor="#FFFFFF"></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">姓名：</td>
      <td bgcolor="#FFFFFF"><input name="wname" type="text" id="wname"  size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">性别：</td>
      <td bgcolor="#FFFFFF"><input type="radio" name="wsex" id="man" value="男">
        男
        <input type="radio" name="wsex" id="woman" value="女">
        女</td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">身份证号码：</td>
      <td bgcolor="#FFFFFF"><input name="idcard" type="text" id="idcard"  size="30" class="pi"></td>
      <td height="23" align="right" bgcolor="#FFFFFF">出生年月：</td>
      <td bgcolor="#FFFFFF"><input name="birth" id="birth" size="10" class="pi"  onfocus="WdatePicker()"  data-validate="required:请填写出生年月"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">年龄：</td>
      <td bgcolor="#FFFFFF"><input name="wage" type="text" id="wage" size="30" class="pi"></td>
      <td height="23" align="right" bgcolor="#FFFFFF">身高：</td>
      <td bgcolor="#FFFFFF"><input name="hige" type="text" id="hige"  size="30" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">手机：</td>
      <td bgcolor="#FFFFFF"><input name="sellphone" type="text" id="cellphone"  size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">电话：</td>
      <td bgcolor="#FFFFFF"><input name="phone" type="text" id="phone"size="30" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">工种</td>
      <td><input type="radio" name="type" id="qingjiegong" value="清洁工" class="pi">
      清洁工
      <input type="radio" name="type" id="baomu" value="保姆" class="pi">
      保姆
      <input type="radio" name="type" id="yuesao" value="月嫂" class="pi">
      月嫂</td>
      <td align="right" bgcolor="#FFFFFF">从业时间：</td>
      <td bgcolor="#FFFFFF"><input name="worktime" onfocus="WdatePicker()"  id="textarea7"  size="30" class="pi" ></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">缺陷：</td>
      <td bgcolor="#FFFFFF"><input name="defect" type="text" id="textarea10"  size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">教育程度：</td>
      <td colspan="2" bgcolor="#FFFFFF"><input type="radio" name="education" id="bigschool" value="大专" />
        大专&nbsp;
        <input type="radio" name="education" id="highschool" value="高中"/>
        高中&nbsp;
        <input type="radio" name="education" id="middleschool" value="初中" />
        初中&nbsp;
        <input type="radio" name="education" id="smallschool" value="小学" />
        小学&nbsp; </td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">户籍地址：</td>
      <td colspan="4" bgcolor="#FFFFFF">
        <input name="jhddress" type="text" id="" size="65" class="pi">
        <span class="text">
        <input type="submit" name="searchbtn" value="选  择" class="button_new">
        </span></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">现住地址：</td>
      <td colspan="4" bgcolor="#FFFFFF"><input name="address" type="text" id="textarea13"  size="65" class="pi">
        <span class="text">
        <input type="submit" name="searchbtn2" value="选  择" class="button_new">
      </span></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">银行卡号：</td>
      <td bgcolor="#FFFFFF"><input name="card" type="text" id="card"  size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">保险单号：</td>
      <td bgcolor="#FFFFFF"><input name="bxnumber" type="text" id="bxnumber"  size="30" class="pi"></td>
      <td bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">爱好：</td>
      <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="hobby" value="唱歌" id="sing" />
        唱歌&nbsp;
        <input type="checkbox" name="hobby" value="跳舞" id="dance" />
        舞蹈&nbsp;
        <input type="checkbox" name="hobby"value="乐器" id="music" />
        乐器&nbsp;
        <input type="checkbox" name="hobby" value="体育" id="sports" />
        体育&nbsp;
        <input type="checkbox" name="hobby" value="书法" id="write" />
        书法&nbsp; </td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">语言：</td>
      <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="language" id="planguage" value="普通话" />
        普通话&nbsp;
        <input type="checkbox" name="language"value="广州话"  id="glanguage" />
        广州话&nbsp;
        <input type="checkbox" name="language"value="英语"  id="english" />
        英语
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类型

      </td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">状态：</td>
      <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="status" id="zaigang" value="在岗" />
        在岗&nbsp;&nbsp;
        <input type="radio" name="status" id="daigang" value="待岗"/>
        待岗&nbsp;&nbsp;
        <input type="radio" name="status" id="qita" value="其他" />
        其他
      </td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况：</td>
      <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="marry" id="amarry" value="已婚" />
        已婚
        &nbsp;
        <input type="radio" name="marry" id="nomarry" value="未婚"/>
        未婚&nbsp;&nbsp;
        <input type="radio" name="marry" id="lvmarry" value="离异" />
        离异
        &nbsp;
        <input type="radio" name="marry" id="lfmarry" value="丧偶" />
        丧偶
        &nbsp;&nbsp;
        <input type="radio" name="marry" id="qmarry" value="其他"/>
        其它：&nbsp;
        </td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">证照状况：</td>
      <td colspan="4" bgcolor="#FFFFFF"><input type="checkbox" name="zhengzhao" value="计生证" id="jisheng" />
        计生证&nbsp;
        <input type="checkbox" name="zhengzhao" id="jiankang"value="健康证" />
        健康证&nbsp;&nbsp;
        <input type="checkbox" name="zhengzhao" id="zanzhu"value="暂住证" />
        暂住证&nbsp;&nbsp;&nbsp;
        <input type="checkbox" name="zhengzhao" id="shanggang"value="上岗证" />
        上岗证 </td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">体检情况：</td>
      <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
        <tr>
          <td width="68%" height="28" bgcolor="#FFFFFF"><input type="checkbox" name="tijian" id="gangong"  />
            肝功&nbsp;
            <input type="checkbox" name="tijian" value="胸透" id="xiongtou" />
            胸透&nbsp;&nbsp;
            <input type="checkbox" name="tijian" id="pifu"value="皮肤"  />
            皮肤
            <input type="checkbox" name="tijian" id="fuke"value="妇科" />
            妇科
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
          <td width="11%" align="right" bgcolor="#FFFFFF">体检时间：</td>
          <td width="21%" bgcolor="#FFFFFF"><input name="tjtime" onfocus="WdatePicker()"  id="tjtime"size="16" class="pi" ></td>
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
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="frelation" type="text" id="frelation"  size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="fname" type="text" id="fname" size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="fage" type="text" id="textarea23"  size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="fphone" type="text" id="fphone"  size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="fworkplace" type="text" id="fworkplace"  size="18" class="pi"></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">个人技能：</td>
      <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
        <tr>
          <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="skill" id="lookbaby" value="照顾婴儿"  />
            照顾婴儿        &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="takebaby"value="带小孩"/>
            带小孩          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="lookoldman"value="照顾老人" />
            照顾老人          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="zhufan"value="煮饭" />
            煮饭          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="yuecai"value="粤菜"/>
            粤菜          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="kejiacai"value="客家菜"/>
            客家菜          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="baotang"value="煲汤"/>
            煲汤</td>
        </tr>
        <tr>
          <td height="28" bgcolor="#FFFFFF"><input type="checkbox" name="skill"value="扫地" id="saodi"/>
            扫地        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="tuodi"value="拖地" />
            拖地          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="cachuang"value="擦窗"/>
            擦窗
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="xiyi" value="洗衣"/>
            洗衣          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="dala"value="打蜡"/>
            打蜡          &nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="skill" id="tongqu"value="通渠" />
            通渠&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
           </td>
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
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="eworkplace" type="text" id="eworkplace"  size="40" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="ekinds" type="text" id="ekinds"  size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="eduty" type="text" id="eduty"  size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="eworktime" onfocus="WdatePicker()" id="eworktime"  size="18" class="pi" ></td>
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
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="torganization" type="text" id="torganization"  size="40" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="tcontent" type="text" id="tcontent"  size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="tstatus" type="text" id="tstatus" size="18" class="pi"></td>
          <td height="28" align="center" bgcolor="#FFFFFF"><input name="ttime"onfocus="WdatePicker()"  id="ttime" size="18" class="pi" ></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">自我介绍：</td>
      <td colspan="4" bgcolor="#FFFFFF"><textarea name="jieshao" id="jieshao" cols="60" rows="5"></textarea></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">人人要求：</td>
      <td colspan="4" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
        <tr>
          <td width="10%" height="28" align="right" bgcolor="#FFFFFF">时间要求：</td>
          <td width="37%" height="28" bgcolor="#FFFFFF"><input name="timerequire" onfocus="WdatePicker()"  id="timerequire"  size="30" class="pi"></td>
          <td width="10%" height="28" align="right" bgcolor="#FFFFFF">住宿：</td>
          <td width="43%" height="28" bgcolor="#FFFFFF"><input name="live" type="text" id="live"  size="40" class="pi"></td>
        </tr>
        <tr>
          <td height="26" align="right" bgcolor="#FFFFFF">工资要求：</td>
          <td height="26" bgcolor="#FFFFFF"><input name="salaryrequire" type="text" id="salaryrequire" size="30" class="pi"></td>
          <td height="26" align="right" bgcolor="#FFFFFF">餐饮或其它：</td>
          <td height="26" bgcolor="#FFFFFF"><input name="eat" type="text" id="eat"size="40" class="pi"></td>
        </tr>
        <tr>
          <td height="26" align="right" bgcolor="#FFFFFF">开始时间：</td>
          <td height="26" bgcolor="#FFFFFF"><input name="starttime" onfocus="WdatePicker()" id="starttime" size="40" class="pi"></td>
          <td height="18" align="right" bgcolor="#FFFFFF">上传照片：</td>
          <td height="18" bgcolor="#FFFFFF"><input name="photo" type="file" id="photo" size="30" class="pi"></td>
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
    <td width="67%" align="center" class="text" nowrap><input type="submit" name="searchbtn3" value="保  存" class="button_new" >
      <input type="button" name="searchbtn3" value="返  回" class="button_new"onClick="javascript:location.href='workerAdSvl?reqType=queryworker'" >
      <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>

</table>
</form>
</body>
</html>