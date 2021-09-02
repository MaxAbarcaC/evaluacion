<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" 
    		 import = "conexion.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Conexion conx = new Conexion();
	Connection con = conx.getConexion();
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuario where username='" + userid + "' and password='" + pwd + "'");
    
    if(userid.isEmpty() && pwd.isEmpty()){
    	
    	request.setAttribute("mensaje", "<h3>Por favor, ingrese usuario y contraseña</h3>");
    	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
    	rd.forward(request, response);
    	
    }else if (rs.next()) {
    	
        session.setAttribute("userid", userid);
         response.sendRedirect("menu.jsp");
         
    } else {
    	
       response.sendRedirect("errorLogin.jsp");
    }
%>
</body>
</html>