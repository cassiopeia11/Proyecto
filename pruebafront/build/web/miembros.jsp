<%-- 
    Document   : miembros
    Created on : Apr 20, 2020, 12:46:37 AM
    Author     : ferca
--%>

<%@page import="com.pasitos.objects.UserObjPasitos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <title>Miembros</title>
        <%
        UserObjPasitos CLoggedUser = 
                (UserObjPasitos)request.getSession().getAttribute("logged_user");
        %>
    </head>
    <body>
        <div id="menu-wrapper">
		<div id="menu">
			<ul>
				<li><a href="index.jsp" accesskey="1" title="">Inicio</a></li>
                                <li><a href="actividades.jsp" accesskey="2" title="">Actividades</a></li>
				<li class="current_page_item"><a href="#" accesskey="3" title="">Miembros</a></li>
				<li><a href="#" accesskey="4" title="">voluntarios</a></li>
				
				
			</ul>
		</div>
    </div>
        <div id="wrapper">
	<div id="featured-wrapper">
        <h2>Miembros</h2>
  <%
    String tipo; 
    
    if(CLoggedUser!=null)
    {
        tipo = CLoggedUser.getType();
        if(tipo.equals("miembro"))
        {
            %>
              <h1>Bienvenido <%= CLoggedUser.getUser() %> </h1>
              <h2 align="left"> Registrar nuevo usuario </h2>
              <button  class="button" style="vertical-align:middle" onclick="javascript:window.location='registro.jsp'">register</button>
            <%
             
        }
        else
        {
            %>
              <h1>No tiene autorizado estar acá</h1>  
            <%
        }
    }
    else
    {
  %>  
    <h1>Necesita iniciar sesión</h1>

  <%
    }
  %>
        </div>
        </div>
        <div id="parteabajo" class="container">
	<p>Pagina web realizada para un proyecto</p>
    </div>
    </body>
</html>
