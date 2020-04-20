<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="registro.css">
    <title>Rigistro de voluntarios</title>
</head>
<body>




    <form style="color:black" action="RegistroServletPasitos" method="get">
        <h1>Registro de voluntarios</h1>
        <p>Llenar el formulario con la información requerida</p>
        <br>
        <div class="container">
            
            Nombre: <input type="text" name="nombre" required/>
            <br><br>
            Apellido: <input type="text" name="apellido" required/>
            <br><br>
            Usuario: <input type="text" name="user" required/>
            <br><br>
            Contraseña: <input type="text" name="password" required="" />
            <br><br>
            Confirmar contraseña: <input type="text" name="conpassword" required="" />
            Email: <input type="text" name="email" required="" />
            <br><br>
            Año:<br><input type="radio" id="primero" name="anno" value="primero">
                <label for="primero">Primero</label><br>
                <input type="radio" id="segundo" name="anno" value="segundo">
                <label for="segundo">Segundo</label><br>
                <input type="radio" id="tercero" name="anno" value="tercero">
                <label for="tercero">Tercero</label><br>
                <input type="radio" id="cuarto" name="anno" value="cuarto">
                <label for="cuarto">Cuarto</label><br>
                <input type="radio" id="quinto" name="anno" value="quinto">
                <label for="quinto">Quinto</label><br>
            <br><br>
            Carnet <input type="text" name="carnet" required="" />
            <br><br>
            Telefono: <input type="text" name="telefono" />
            <br><br>
            Tipo de usuario:
            <br><input type="radio" id="miembro" name="tipo" value="miembro">
                <label for="miembro">Miembro</label><br>
                <input type="radio" id="voluntario" name="tipo" value="voluntario">
                <label for="voluntario">Voluntario</label><br>
            <input type="hidden" name="formid" value="1" />
            <button type="submit" class="registerbtn">Registrar</button>

        </div>
   </form>

</body>
</html>
