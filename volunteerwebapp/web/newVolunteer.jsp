<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Volunteer</title>
    </head>
    <body>
        <h1>New Volunteer</h1>
        <br><br>
        
        <form action="VolunteerServlet" method="get">
            Name: <input type="text" name="name" />
            <br><br>
            
            Carnet: <input type="text" name="carnet"/>
            <br><br>
            
            Year: <input type="text" name="year" />
            <br><br>
            
            Phone: <input type="text" name="phone" />
            <br><br>
            <input type="submit" value="Create"/>
            <input type="hidden" name="formid" value="1"/>
                                             
            
        </form>
        
    </body>
</html>
