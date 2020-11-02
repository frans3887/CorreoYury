<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        
        <ul>
            <li><a href="CRUD_Admin.jsp">Crear usuario</a></li>
            <li><a href="CerrarSesion.jsp">Salir</a></li>
        </ul>
    </body>
</html>