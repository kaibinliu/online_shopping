<%@page import="onlineshopping.model.Seller"%>
<%@ page contentType="text/html;charset=GB2312" %>
<%@page language="java" import="java.util.*" import="javax.servlet.http.*"%>
<HTML>
<title>�����޸�ҳ��</title>
<HEAD></HEAD>
<BODY style="background:url(image/������.jpg) ;background-size:cover; ">
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
<font size=4xp color=black><b>&nbsp;&nbsp;�޸�����</b></font><br><br><br>
<FORM action="HandlePassword" Method="post">
<font color=black size=4xp>�޸�����:&nbsp;</font><Input type=password name="password"><br><br>
<font color=black size=4xp>ȷ������:&nbsp;</font><Input type=password name="again_password"><br><br>
<input type="submit" value="�ύ" style="background:url(imagepath) no-repeat"/>
<td><Input type=reset name="g" value="����" style="background:url(imagepath) no-repeat"></td> </tr>
</form>
<%} %>
</BODY>
</HTML>

