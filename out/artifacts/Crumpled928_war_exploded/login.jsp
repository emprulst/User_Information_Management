<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/9/28
  Time: 20:0720
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>19032101 华金琳</title>

    <style>
      div1
      {
        text-align: center;
        color: white;
        font-size: 170%;
      }

      body
      {
        background-image: url("lamb.JPG");
        background-size: 100% auto;
        text-align: center;
        color: white;
      }

      div2
      {
        font-size: 150%;
      }
    </style>
  </head>




  <body>

<div1>
  <h1>用户登录</h1>
</div1>


  <div2>
    <form name="input" action="userManage.jsp" method="post">
      username:  <input type="text" name="userName">
      <br>
      <br>
      password:  <input type="text" name="pw">
      <br>
      <br>
      <input type="submit" value="登录">
  </form>
  </div2>


  </body>
</html>
