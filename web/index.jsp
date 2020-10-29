<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
        <body>
    <center><h1>Ingrese sus Datos</h1></center>
    <center>
         <div style="margin-top: 30px;">
                <form action="ControladorLogin" method="post">
                            <label for="user">Usuario: </label>
                            <input id="user" type="text" name="usuario" value="" required="">
                            <br><br>
                            <label for="password">Password: </label>
                            <input id="password" type="password" input name="clave" value="" required="">
                            <br><br>
                    <button type="submit" value="Aceptar" name="opcion" >Enviar
                    </button>
                    <button type="reset">Cancelar</button>
                </form>
        </div>
    </center>    
    </body>
</html>
