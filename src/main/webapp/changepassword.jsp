<%@page import="onlineshopping.model.Seller"%>
<%@ page contentType="text/html;charset=GB2312" %>
<%@page language="java" import="java.util.*" import="javax.servlet.http.*"%>
<HTML>
<title>密码修改页面</title>
<HEAD></HEAD>
<BODY style="background:url(image/布朗熊.jpg) ;background-size:cover; ">
<%
	Seller seller=(Seller)session.getAttribute("seller");
	if(null==seller){
		response.sendRedirect("sellerlogin.jsp");
	}else{
%>
<br>
<div align="center" >
<br>
<br>
<br>
<br>
<font size=4xp color=black><b>&nbsp;&nbsp;修改密码</b></font><br><br><br>
<FORM action="HandlePassword" Method="post">
<font color=black size=4xp>修改密码:&nbsp;</font><Input type=password name="password"><br><br>
<font color=black size=4xp>确认密码:&nbsp;</font><Input type=password name="again_password"><br><br>
<input type="submit" value="提交" style="background:url(imagepath) no-repeat"/>
<td><Input type=reset name="g" value="重置" style="background:url(imagepath) no-repeat"></td> </tr>
</form>
<%} %>
</BODY>
</HTML>

