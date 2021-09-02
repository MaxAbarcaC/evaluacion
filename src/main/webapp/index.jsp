<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="form_911240" class="appnitro" method="post"
		action="ValidateUser.jsp">
		<div class="form_description">
			<h2>Inicio de Sesion</h2>
			<p></p>
		</div>
		<ul>

			<li id="li_1"><label class="description" for="element_1">Usuario
			</label>
				<div>
					<input id="username" name="username"
						type="text" />
				</div></li>
			<li id="li_2"><label class="description" for="element_2">Contraseña
			</label>
				<div>
					<input id="password" name="password"
						type="password" />
				</div></li>

			<li><input id="loginbtn" class="button_text"
				type="submit" name="submit" value="Ingresar" /></li>
			<li >
			<%
				out.print(request.getAttribute("mensaje"));
			%>
			</li>
		</ul>
	</form>
</body>
</html>