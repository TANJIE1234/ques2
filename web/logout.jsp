<%--
  Created by IntelliJ IDEA.
  User: tanjie
  Date: 18-3-25
  Time: 上午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
session.invalidate();
%>
</body>
</html>
