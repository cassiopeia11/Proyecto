<%-- 
    Document   : actividades
    Created on : Apr 20, 2020, 12:30:39 AM
    Author     : ferca
--%>

<%@page import="java.util.List"%>
<%@page import="com.pasitos.objects.UserObjPasitos"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.pasitos.objects.ActividadesObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <title>Actividades</title>
        <%
        UserObjPasitos CLoggedUser = 
                (UserObjPasitos)request.getSession().getAttribute("logged_user");
        %>
        <%
        List<ActividadesObj> actividadesList = 
                (List<ActividadesObj>) request.getSession().getAttribute("actividadesarray");
        %>
    </head>
    <body>
    <div id="menu-wrapper">
		<div id="menu">
			<ul>
				<li><a href="index.jsp" accesskey="1" title="">Inicio</a></li>
                                <li class="current_page_item"><a href="#" accesskey="2" title="">Actividades</a></li>
				<li><a href="miembros.jsp" accesskey="3" title="">Miembros</a></li>
				<li><a href="#" accesskey="4" title="">voluntarios</a></li>
				
				
			</ul>
		</div>
    </div>
    <div id="wrapper">
	<div id="featured-wrapper">
        <h3>Actividades</h3>
  <%
    
    String tipo; 
    if(CLoggedUser!=null)
    {
        
  %>
          <h1>Bienvenido <%= CLoggedUser.getUser() %> </h1>  
          <h2 align="left"> Actividades activas</h2>
                <table style="width:50%" border="1" align="middle">
                <tr>
                  <th>Id</th>
                  <th>Nombre</th>
                  <th>Apellidos</th>
                  <th>Correo</th>
                </tr>
                 <%
        
                if(actividadesList!=null)
                {   ActividadesObj temp;

                    Iterator<ActividadesObj> ite = actividadesList.iterator();
                    while(ite.hasNext()){
                        temp = ite.next();

                %>
                  <tr>
                    <td><%= temp.getId() %></td>
                    <td><%= temp.getNombre() %></td>
                    <td><%= temp.getApellidos() %></td>
                    <td><%= temp.getCorreo() %></td>

                  </tr>

                <%

                      }
                }
                else
                {

                %>
                  <tr>
                    empty
                  </tr>
                  <!--html-->
                <%
                }
                %>
                </table>
                <br><br>
            <%
            
            tipo = CLoggedUser.getType();
            if(tipo.equals("miembro"))
            {
            %>  
                <button class="button" align="left" onclick="javascript:window.location='nuevapersonaenact.jsp'"><span>Agregar</span>
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
