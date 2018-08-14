<%--
  Created by IntelliJ IDEA.
  User: OOOO
  Date: 13/08/2018
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Resta</h1>
<table>
    <thead>
    <th> Dato </th>
    <th> Valor </th>
    </thead>
    <tbody>
    <tr>
        <td>Numero1: </td>
        <td><%= request.getAttribute("n1")%></td>
    </tr>
    <tr>
        <td>Numero2: </td>
        <td><%= request.getAttribute("n2")%></td>
    </tr>
    <tr>
        <td>Resta: </td>
        <td><%= request.getAttribute("resta")%></td>
    </tr>
    </tbody>
</table>

</body>
</html>
