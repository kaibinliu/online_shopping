<%@ page contentType="text/html;charset=GB2312" %>
<%@page language="java" import="java.util.*" import="javax.servlet.http.*"%>
<html>
<title>密码修改成功页面</title>
  <head>
  <meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
  <!-- <meta http-equiv="refresh" content="5;url=login.jsp"> -->
  </head>
  
  <body >
  <%session.invalidate();%>
    <font color=green size=5xp>密码修改成功!</font>
    
    <script type="text/javascript">
    	var t=5;
    	setInterval('jump()',1000);
    	function jump(){
    		if(t==0){
    			location="jsp/seller/SellerLogin.jsp";
    		}
    		document.getElementById('show').innerHTML=""+t+"秒后跳转到登陆页面";
    		t--;
    		
    	}
    </script>
  <span id=show></span>
  </body>
</html>

