<%@ page import="javafx.scene.control.Alert" %><%--
  Created by IntelliJ IDEA.
  User: tanjie
  Date: 18-3-24
  Time: 下午10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    int count[] = (int[]) session.getAttribute("count");
    int people = (int) application.getAttribute("count");
  %>
  <table>
    <thead>
      <th>序号</th>
      <th>URI</th>
      <th>访问次数</th>
    </thead>
    <tbody>
    <tr>
      <th>1</th>
      <th><a href="/hellojavaweb/javaweb/numguess1/guess.jsp">/hellojavaweb/javaweb/numguess1/guess.jsp</a></th>
      <th><%=count[0]%></th>
    </tr>
    <tr>
      <th>2</th>
      <th><a href="/hellojavaweb">/hellojavaweb/</a></th>
      <th><%=count[1]%></th>
    </tr>
    <tr>
      <th>3</th>
      <th><a href="/hellojavaweb/bookAdmin">/hellojavaweb/bookAdmin</a></th>
      <th><%=count[2]%></th>
    </tr>
    <tr>
      <th>4</th>
      <th><a href="/hellojavaweb/javaweb/numguess1/new_game.jsp">/hellojavaweb/javaweb/numguess1/new_game.jsp</a></th>
      <th><%=count[3]%></th>
    </tr>
    <tr>
      <th>5</th>
      <th><a href="/hellojavaweb/bookAdmin2">/hellojavaweb/bookAdmin2</a></th>
      <th><%=count[4]%></th>
    </tr>
    <tr>
      <th>6</th>
      <th><a href="/hellojavaweb/simpleClickstream">/hellojavaweb/simpleClickstream</a></th>
      <th><%=count[5]%></th>
    </tr>
    <tr>
      <th>7</th>
      <th><a href="/hellojavaweb/images/do.gif">/hellojavaweb/images/dot.gif</a></th>
      <th><%=count[6]%></th>
    </tr>
    </tbody>
  </table>
  <br/>

  <h4>在线人数<%=people%>人<a href="logout.jsp">logout</a></h4>
  </body>
</html>
