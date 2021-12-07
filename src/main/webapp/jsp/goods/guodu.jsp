<%--
  Created by IntelliJ IDEA.
  User: HBP
  Date: 2021/12/6
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
String s=<%=request.getParameter("goodleibie") %>
<%  request.setAttribute("leibie",s);
response.sendRedirect();
%>

</body>
</html>
