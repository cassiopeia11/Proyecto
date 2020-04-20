<%@page import="com.volunteerwebapp.obj.VolunteerObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message for you</title>
    </head>
    
    
     <%
        VolunteerObj volunteerInfo = (VolunteerObj)request.getSession().getAttribute("volunteerinfo");
    %>
    
    
    <body>
        <h1>Check the table</h1>
    </body>
    
    <table style="width:50%" border="1">
            <tr>
                <th>Name</th>
                <th>Carnet</th>
                <th>Year</th>
                
            </tr>
            
            <%
                if(volunteerInfo!=null)
                {
                    
            %>
                    <tr>
                        <td><%= volunteerInfo.getName() %></td>
                        <td><%= volunteerInfo.getCarnet() %></td>
                        <td><%= volunteerInfo.getYear() %></td>
                    </tr>
            <%
                
                }
            %>
        </table>
        <br><br>
        <a href="volunteer.jsp">Volunteering</a>
</html>
