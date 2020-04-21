<%-- 
    Document   : actividadesMain
    Created on : Mar 6, 2020, 6:47:06 PM
    Author     : balbi
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.actividadesformwebapp.objects.ActividadesObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actividades Main</title>
    </head>
    <%
        List<ActividadesObj> actividadesList = 
                (List<ActividadesObj>) request.getSession().getAttribute("actividadesarray");
    %>
    <body>
        <h1>Actividades Main</h1>
        <br>
        
        <a href="newactividades.jsp">new actividades</a>
        <br><br>
        
        <table style="width:50%" border="1">
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
            <td><a href="">update</a></td>
            <td><a href="">delete</a></td>
          </tr>
        <%
              //java
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
    </body>
</html>
