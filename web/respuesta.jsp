<%--
  Created by IntelliJ IDEA.
  User: OOOO
  Date: 13/08/2018
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Suma</title>
</head>
<body>
    <h1>Suma</h1>
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
            <td>Suma: </td>
            <td><%= request.getAttribute("suma")%></td>
        </tr>
        </tbody>
    </table>

</body>
</html>
