<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <script type="text/javascript" src="../javascript/validator.js"></script>
  <script type="text/javascript" src="../js/public.js"></script>
  <script type="text/javascript" src="../javascript/handleArchive.js"></script>
  <script type="text/javascript" src="../jqurey/jquery-1.3.2.min.js"></script>

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
      function rightOne() {

      }
      function leftOne() {

      }
      function rightAll() {

      } function leftAll() {

      }
  </script>
</head>

<body>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;业务管理--&gt;内部短消息</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>
<br>
<form action="${pageContext.request.contextPath}/ny/ywgl/status" method="post">
  <input type="hidden" value="addStatus" name="type">
<table width="96%" height="49" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">

  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">标题：</td>
    <td colspan="3" bgcolor="#FFFFFF"><input name="subject" type="text" id="textarea" value="" size="30" class="pi"></td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">内容：</td>
    <td colspan="3" bgcolor="#FFFFFF"><textarea name="content" id="textarea7" cols="45" rows="10"></textarea></td>
  </tr>
  <tr>
    <td width="73" height="23" align="right" bgcolor="#FFFFFF">所属公司：</td>
    <td width="158" bgcolor="#FFFFFF">
      <select name="accept">
        <option>千福家政公司</option>
        <option>红星家政公司</option>
      </select>

    </td>
    <td width="60" align="right" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="450" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td height="23" align="right" bgcolor="#FFFFFF">发送人：</td>
    <td  bgcolor="#FFFFFF">
      <select size="10"  style="width:120px" name="sender" id="sender">
        <option value="1"  selected >张三</option>
        <option  value="2" selected>李四</option>
      </select>

    </td>
    <td  bgcolor="#FFFFFF">
      <input type="button" value=">" style="width:50px" id="right">
      <br>
      <input type="button" value=">>" style="width:50px" id="allRight">
      <br>
      <input type="button" value="<" style="width:50px" id="left">
      <br>
      <input type="button" value="<<" style="width:50px" id="allLeft" >
    </td>
    <td  bgcolor="#FFFFFF">
      <select size="10"  style="width:120px" id="receive">
        <option value="3" selected>王五</option>
      </select>
    </td>
  </tr>
</table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" align="center" class="text" nowrap>
      <input type="submit" name="searchbtn3" value="保  存" class="button_new" onClick="javascript:alert('保存成功！');location.href='gsgl.htm';">
      <input type="button" name="searchbtn3" value="返  回" class="button_new"  onClick="javascript:history.back();" >
      <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>
</table>
</form>
</body>
<script>
  $("#left").click(function () {
     var $receive=$("#receive>option:selected");
     $("#sender").append($receive);
  });
  $("#right").click(function () {
      var $receive=$("#sender>option:selected");
      $("#receive").append($receive);
  });
  $("#allLeft").click(function () {
      var $receive=$("#receive>option");
      $("#sender").append($receive);
  });
  $("#allRight").click(function () {
      var $receive=$("#sender>option");
      $("#receive").append($receive);
  });
</script>
</html>
