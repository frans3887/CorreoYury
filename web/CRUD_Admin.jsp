<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>      
        <%
        Usuario user=null;
        String estadoSesion="off";

        HttpSession sesion = request.getSession(true);

        user=(Usuario)sesion.getAttribute("usuario");
        estadoSesion=(String) sesion.getAttribute("estadoSesion");   

        if(estadoSesion == null )
        {
            response.sendRedirect("MensajeError.jsp?mensaje=Error, ingresar como administrador&retorno=index.jsp");
        }       
        else{
            //Usuario válido
            // ¿tiene nivel de acceso?
            switch(user.getTipoUsuario())
            {
                case 1:
                        break;
                    case 2:
                        response.sendRedirect("MensajeError.jsp?mensaje=Error, usted no es administrador&retorno=menuRRHH.jsp");
                        break;
                    case 3:
                        response.sendRedirect("MensajeError.jsp?mensaje=Error, usted no es administrador&retorno=menuTrabajador.jsp");
                        break;
                    default:
                        response.sendRedirect("CerrarSesion.jsp");
                        break;
            }
        }
        %>
    <center>
        <h1>CRUD de Usuarios</h1>
                <form action="Controlador" method="POST" onsubmit="return validacion();">
                    <label for="rut">Rut</label>
                    <input type="text" name="rut" id="rut" class="validate" required=""><br><br>
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" class="validate" required=""><br><br>
                    <label for="apellidoPaterno">Apellido Paterno</label>
                    <input type="text" name="apellidoPaterno" class="validate" required=""><br><br>
                    <label for="apellidoMaterno">Apellido Materno</label>
                    <input type="text" name="apellidoMaterno" class="validate" required=""><br><br>
                    <label for="password">Password</label>
                    <input type="password" name="password" class="validate" required=""><br><br>
                    <label for="tipoUsuario">Tipo de Usuario</label>
                    <select name="tipoUsuario">
                        <option disabled selected hidden>-seleccionar-</option>
                        <option value="administrador">Administrador</option>
                        <option value="rrhh">Recursos Humanos</option>
                    </select><br><br><br>
                    <button type="submit" name="opcion" value="Grabar">Crear</button>
                    <button type="reset">Cancelar</button>
                    <input type="submit" value="Regresar" onclick="window.location='menuAdmin.jsp';"/>
                </form>
    </center>
        <script>
            function validacion()
            {
                var rut = document.getElementById('rut');
                var expRut = /^\d{7,8}[-]\d$/;
                if(!rut.value.match(expRut))
                {
                    alert('El rut tiene formato nnnnnnnn-n');
                    rut.focus();
                    return false;
                }
            }
        </script>
    </body>
</html>