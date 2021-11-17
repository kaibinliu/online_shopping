<%@page import="onlineshopping.model.goodsDao.Repo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="onlineshopping.model.Repository"%>
<%@page import="onlineshopping.model.Good1"%>
<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<title>Insert title here</title>
</head>
<body>
 <header style="width:8cm; height: 1cm; line-height: 1cm; text-align: center; margin-left: auto;margin-right: auto;   background-color: sandybrown;">
        商品列表
    </header>
<%
Repository repo=Repo.repo();
ArrayList<Good1> glist=repo.getRepo();
Iterator<Good1> giter =glist.iterator();
while(giter.hasNext()){
	Good1 g1=null;
	g1=giter.next();
%>		
       <table id="main" border="1" style="width: 8cm;  height: fit-content; margin-left: auto; margin-right: auto;">
        <td><img src=<%=g1.getGPicture() %> width="150" height="100"> </td>
        <td>
            <p> <%=g1.getGName() %></p> <br> 
                      详细信息:<p> <%=g1.getGDescribe() %></p>
            	价格:<%=g1.getGPrice() %>
            	<%if (g1.getGState().equals("已售出")) {%>
            <form action="userinformation.jsp" method="post">
                <input style="float: right;"type="submit" value="购买" disabled="disabled">
            </form>
            <%} else{ %>
            <form action="userinformation.jsp" method="post">
                <input style="float: right;"type="submit" value="购买"  >
                <input type="hidden" name="id" value=<%=g1.getGNo()%>>
            </form>
            <% }%>
        </td>
    </table>
<% }
   %>
</body>
</html>