<%--
  Created by IntelliJ IDEA.
  User: OOOO
  Date: 13/08/2018
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Sumar dos numeros</h1>
  <form method="post" action="/Sumar">
    <div>
      <label>Numero1: </label>
      <input type="text" name="n1">

    </div>
    <div>
      <label>Numero2: </label>
      <input type="text" name="n2">

    </div>
    <div>
      <input type="submit" value="sumar">
    </div>
    <input type="submit" value="restar">
  </form>


  </body>
</html>
