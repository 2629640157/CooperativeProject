<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="gb2312">
<title></title>
<link href="css/INDEX.css" rel="stylesheet" type="text/css">

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
function chanageColor(t) {
    for (var i=0; i<t.rows.length; i++)
    for (var j=0; j<t.rows[i].cells.length; j++)
    t.rows[i].cells[j].className= t.rows[i].cells[j] == event.srcElement ? 'Menu_OutTd2' : 'Menu_OutTd';
}
MM_reloadPage(true);
//-->

</script>
<script language="javascript">
function menuControl(show)
{
window.event.cancelBubble=true;
var objID=event.srcElement.id;
var index=objID.indexOf("_");
var mainID=objID.substring(0,index);
var numID=objID.substring(index+1,objID.length);
if(mainID=="menubar")
{
if(show==1)
{
eval("showMenu("+"menu_"+numID+")");
}
else
{
eval("hideMenu("+"menu_"+numID+")");
}
}

}

var nbottom=0,speed=1;
function displayMenu(obj)
{
obj.style.clip="rect(0 100% "+nbottom+"% 0)";
nbottom+=speed;
if(nbottom<=100)
{
timerID=setTimeout("displayMenu("+obj.id+"),70");
}
else clearTimeout(timerID);
}
function showMenu(obj)
{
obj.style.display="block";
obj.style.clip="rect(0 0 0 0)";
nbottom=5;
displayMenu(obj);
setMenuPrepos(obj);
}
function hideMenu(obj)
{
nbottom=0;
unMenuPrepos();
obj.style.display="none";
}
function keepMenu(obj)
{
obj.style.display="block";
setMenuPrepos(obj);
}

function openMain() {
	document.getElementsByName("body")[0].click();
}

function chanageColor(t) {
alert("ok");
    for (var i=0; i<t.rows.length; i++)
    for (var j=0; j<t.rows[i].cells.length; j++)
    t.rows[i].cells[j].className= t.rows[i].cells[j] == event.srcElement ? 'Menu_OutTd2' : 'Menu_OutTd';
}

</script>
<script type="text/javascript" src="javascript/menu.js"></script>
</head>

<body >
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="2"> </td>
  </tr>
  <tr>
    <td height="1" bgcolor="#4D7A96"> </td>
  </tr>
</table>
</body>
</html>

