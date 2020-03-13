<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
<title>Untitled Document</title>
<script type="text/javascript" src="../js/public.js"></script>
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
    <td>&nbsp;&nbsp;��&nbsp;����λ�ã��ҵ�����--&gt;ҵ�����--&gt;�ù�����</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
      <td width="67%" align="right" class="text" nowrap>&nbsp;������
        <input type="text" name="searchName" maxlength="20" size="12" value="" class="input">
        &nbsp; �Ǽ����ڣ�
        <input type="text" name="searchName2" maxlength="20" size="12" value="" class="input">
        ��
        <input type="text" name="searchName4" maxlength="20" size="12" value="" class="input">
        &nbsp; ���ù��ˣ�
        <input type="text" name="searchName4" maxlength="20" size="12" value="" class="input">
&nbsp;״̬��
<select name="select" id="select" class="input">
  <option selected>��ѡ��</option>
  <option>δ�ɽ�</option>
  <option>�ѳɽ�</option>
  <option>�ڱ𴦳ɽ�</option>
  <option>��ȡ��</option>
</select>
        <input type="button" name="searchbtn" value="��  ѯ" class="button_new">
        <input type="button" name="searchbtn2" value="��  ��" class="button_new"onClick="javascript:location.href='ddgl_xz.htm'" >
        
      &nbsp;&nbsp; </td>
    </tr>
  </table>
<br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="4%">���</td>
      <td width="8%" align="center" nowrap id=".name" >����</td>
      <td width="6%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true">�ֻ�/��</div></td>
      <td width="16%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true">����</div></td>
      <td width="11%" align="center" nowrap id=".title" ><div align="center" orderBy="true">�ֻ�/��</div></td>
      <td width="7%" align="center" nowrap id=".register" ><div align="center" orderBy="true">����/��</div></td>
      <td width="31%" align="center" nowrap id=".register" ><strong>��������</strong></td>
      <td width="8%" align="center" nowrap id=".submit_date" ><strong>״̬</strong></td>
      <td width="9%" align="center" nowrap id=".submit_date" ><strong>����</strong></td>
    </tr>
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="4%">1 </td>
      <td align="center" nowrap>����</td>
      <td height="14" align="center" nowrap>13527612667/38468063</td>
      <td align="center" nowrap>��÷</td>
      <td align="center" nowrap>13527612667/38468063</td>
      <td align="center" nowrap>2200</td>
      <td align="center" nowrap>��ķ/�ӵ㹤</td>
      <td align="center" nowrap>δ�ɽ�</td>
      <td align="center" nowrap><a href="ddgl_ck.htm">�鿴</a> <a href="ddgl_xg.htm">�޸�</a></td>
    </tr>
    <tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td nowrap align="center" width="4%">2 </td>
      <td align="center" nowrap>&nbsp;</td>
      <td height="14" align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="left" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>�ѳɽ�</td>
      <td align="center" nowrap><a href="ddgl_ck.htm">�鿴</a> <a href="ddgl_xg.htm">�޸�</a></td>
    </tr>
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td nowrap align="center" width="4%">3 </td>
      <td align="center" nowrap>&nbsp;</td>
      <td height="14" align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="left" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap><a href="ddgl_ck.htm">�鿴</a> <a href="ddgl_xg.htm">�޸�</a></td>
    </tr>
    <tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td nowrap align="center" width="4%">4 </td>
      <td align="center" nowrap>&nbsp;</td>
      <td height="14" align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="left" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap><a href="ddgl_ck.htm">�鿴</a> <a href="ddgl_xg.htm">�޸�</a></td>
    </tr>
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td nowrap align="center" width="4%">5 </td>
      <td align="center" nowrap>&nbsp;</td>
      <td height="14" align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="left" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap>&nbsp;</td>
      <td align="center" nowrap><a href="ddgl_ck.htm">�鿴</a> <a href="ddgl_xg.htm">�޸�</a></td>
    </tr>
  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center"> ��ǰ��1ҳ ��5��¼ ��1ҳ��ʾ </td>
              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                  <input type="hidden" name="paginationAction" value="">
                  <img src="../image/First_no.gif" alt="��һҳ" width="18" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Previous_no.gif" alt="��һҳ" width="14" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Next_no.gif" alt="��һҳ" width="14" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Last_no.gif" alt="���һҳ" width="18" height="13" border="0">&nbsp&nbsp&nbsp <a href="javascript:this.document.AwaitForm.submit()" oncontextmenu="return false" onClick="if(this.document.AwaitForm.pageSelect.value==''){ alert('ҳ���������');return false;}
 else {this.document.AwaitForm.paginationAction.value='gotoPage';}">ǰ��</a>
                  <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect' value=''/>
                ҳ </td>
            </tr>
          </table>

      </td>
    </tr>
  </table>

</body>
</html>
