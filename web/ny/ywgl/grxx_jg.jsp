<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/22
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>查找结果</h3>
<table border="1">
    <tr>
        <td>wid</td>
        <td>cid</td>
        <td>wname</td>
        <td>idcard</td>
        <td>cellphone</td>
        <td>phone</td>
        <td>defect</td>
    </tr>
    <c:forEach items="${workerList}" var="worker">
        <tr>
            <td>${worker.wid}</td>
            <td>${worker.company.cid}</td>
            <td>${worker.wname}</td>
            <td>${worker.idcard}</td>
            <td>${worker.sellphone}</td>
            <td>${worker.phone}</td>
            <td>${worker.defect}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
