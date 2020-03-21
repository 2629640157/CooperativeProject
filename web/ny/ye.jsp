<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="css/INDEX.css" rel="stylesheet" type="text/css">
<link href="css/button.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
<head>
<title>Untitled Document</title>
<script type="text/javascript" src="js/public.js"></script>
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
    <td>&nbsp;&nbsp;��&nbsp;����λ�ã��ҵ�����--&gt;ϵͳ����--&gt;��ֵ����</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
      <td width="67%" align="right" class="text" nowrap>&nbsp;&nbsp; </td>
    </tr>
  </table>
  <br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="3%">���</td>
      <td width="19%" align="center" nowrap id=".name" >��˾����</td>
      <td width="8%" align="center" nowrap id=".name" >�ʻ���</td>
      <td width="9%" align="center" nowrap id=".name" >ˢ������</td>
      <td width="7%" align="center" nowrap id=".name" >�շѱ�׼<strong>(Ԫ/��)</strong></td>
      <td width="12%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true"><strong>�ϼ����Ѷ�(Ԫ)</strong></div></td>
      <td width="14%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>�ʻ����</strong><strong>(Ԫ)</strong></div></td>
      <td width="10%" align="center" nowrap id=".register" ><div align="center" orderBy="true"><strong>������</strong></div></td>
      <td width="9%" align="center" nowrap id=".register" ><strong>��ע</strong></td>
      <td width="9%" align="center" nowrap id=".submit_date" ><strong>����</strong></td>
    </tr>
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="3%">1 </td>
      <td align="center" nowrap>ǧ��������˾</td>
      <td align="center" nowrap>liuzhu</td>
      <td align="center" nowrap>390</td>
      <td align="center" nowrap>3</td>
      <td height="14" align="center" nowrap>1170</td>
      <td align="center" nowrap>498</td>
      <td align="center" nowrap>ϵͳ����Ա</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap><a href="czgl_xz.htm">��ֵ</a></td>
    </tr>
  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center">&nbsp;</td>
              <td nowrap width="55%" align="right">&nbsp;</td>
            </tr>
          </table>

      </td>
    </tr>
  </table>

</body>
</html>
