<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<html>
<head>
    <title>Jquery复选框练习</title>
    <!-- 引入jQuery，引入你自己的jQuery文件 -->
    <script type="text/javascript" src="ny/jqurey/jquery-1.3.2.min.js"></script>
</head>
<body>
<input type="checkbox" value="橘子" name="check">橘子1</input>
<input type="checkbox" value="香蕉" name="check">香蕉1</input>
<input type="checkbox" value="西瓜" name="check">西瓜1</input>
<input type="checkbox" value="芒果" name="check">芒果1</input>
<input type="checkbox" value="葡萄" name="check">葡萄1</input>

<input type="button" value="方法1" id="b1" onclick="go()">
<input type="button" value="方法2" id="b2">

<%--<div name="s"  hidden id="1">值：</div>--%>
<select>
    <option id="1" selected></option>
</select>
</body>

<script>
    //方法1
    var check ="";
    //$('input:checkbox:checked') 等同于 $('input[type=checkbox]:checked')
    $("#b1").click(function () {
        //意思是选择被选中的checkbox
        check=new Array()
        $.each($('input:checkbox:checked'), function () {
            check.push($(this).val());

        });
        window.alert("你选了：" + check);
      var text= document.getElementById("1").innerHTML=check;
    });
//方法3
/*    function go(){
        check=new Array();
      var s=  document().getElementsByTagName("input").value;
        /!*   s.forEach(
            check.push(this.value)
        )*!/
        window.alert("你选了：" + check);
    }*/

    //方法2
    $("#b2").click(function () {
        $.each($('input:checkbox'), function () {
            if (this.checked) {
                window.alert("你选了：" +
                    $('input[type=checkbox]:checked').length + "个，其中有：" + $(this).val());
            }
        });
    });
</script>
</html>
