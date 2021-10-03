<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2021/9/28
  Time: 20:4937
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>19032101 华金琳</title>



    <%
        String login_user_name = request.getParameter("userName");
        String login_user_pw = request.getParameter("pw");
    %>

    <%--下面放置一些css代码--%>
    <style>
        body
        {
            background-image: url("lamb2.JPG");
            background-size: 100% auto;
            color: black;
        }
        .top
        {
            font-size: 135%;
        }
        h1
        {
            text-align: center;
        }
        .h3
        {
            color: black;
            text-align: right;
        }


    </style>

</head>






<body>
<div1 class = "top">
    <h1>
        用户管理
    </h1>

    <div2 class = "h2">
        登录人: <%=login_user_name %>
    </div2>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div3 class = "h3" >
        <a href="login.jsp">退出登录</a>
    </div3>

</div1>


<%
    class User
    {
        String name;
        String password;
        String sex;
        String add;
        Integer age;
        Integer r;
    }

    Random r = new Random();
    List<User> userList = new ArrayList();

    for(int i = 0; i < 10; i++)
    {
        User temp_user = new User();
        temp_user.name = 19032101+i+" ";
        temp_user.sex = "女";
        temp_user.age = 18+r.nextInt(4);
        temp_user.password = "19032101";
        temp_user.add = "防灾北区";

        userList.add(temp_user);
    }
%>

<%--以下是js代码,用于删除用--%>
<script type="text/javascript">
    function del_user_line(id)
    {
        alert("确定要删除"+id+"吗？");
        var table_tr = document.getElementById(ElementID);

        table_tr.parentNode.remove(table_tr);

    }
</script>


<%--添加判断条件，识别用户名和密码是否正确--%>
<%
    if(login_user_name.equals("19032101") && login_user_pw.equals("19032101"))
    {
%>

<table class = "table" align="center" border="10" width="100%">
    <tr>
        <td>姓名</td>
        <%--<td>密码</td>--%>
        <td>性别</td>
        <td>年龄</td>
        <td>地址</td>
        <td>操作</td>
    </tr>

    <%
        for (int i = 0; i < userList.size(); i++)
        {
            User temp_user = new User();
            temp_user = userList.get(i);
    %>
    <tr>
        <td><%=temp_user.name %></td>
        <%--<td><%=temp_user.password %></td>--%>
        <td><%=temp_user.sex %></td>
        <td><%=temp_user.age %></td>
        <td><%=temp_user.add %></td>
        <td button onclick = "del_user_line('<%=temp_user.name %>')" >删除</td>
    </tr>

    <%
        }
    %>
</table>
<%
    }
%>




</body>
</html>
