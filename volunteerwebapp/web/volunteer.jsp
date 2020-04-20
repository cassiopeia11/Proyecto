<%@page import="java.util.Iterator"%>
<%@page import="com.volunteerwebapp.obj.VolunteerObj"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volunteers</title>
    </head>
    
    <body>
        <h1>Welcome to Pasitos Volunteer Website</h1>
        <br><br>
        
        <a href="newVolunteer.jsp">Enroll in our voluntearing</a>
        <br><br>
        Check if you're already enrolled.
        
        <form action="VolunteerServlet" method="get">
                       
            Carnet: <input type="text" name="carnet"/>
            <br><br>
            
            <input type="submit" value="Search"/>
            <input type="hidden" name="formid" value="2"/>
                                             
        </form>
        
        
        
    </body>
</html>
