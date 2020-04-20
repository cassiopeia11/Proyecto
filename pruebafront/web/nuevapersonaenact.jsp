<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="registro.css">
    <title>Rigistro de voluntarios</title>
</head>
<body>




    <form style="color:black" action="UserServletPasitos" method="get">
        <h1>Registro de voluntarios</h1>
        <p>Llenar el formulario con la información requerida</p>
        <br>
        <div class="container">
            
            Nombre: <input type="text" name="nombre" required/>
            <br><br>
            Apellido: <input type="text" name="apellido" required/>
            <br><br>
            Email: <input type="text" name="email" required="" />
            <br><br>
           
            <input type="hidden" name="formid" value="2" />
            <button type="submit" class="registerbtn">Registrar</button>

        </div>
   </form>

</body>
</html>
