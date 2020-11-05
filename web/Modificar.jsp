<%-- 
    Document   : Grabar
    Created on : 25/05/2020, 04:01:09 PM
    Author     : Carlo
--%>

<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar</title>
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
                     response.sendRedirect("MensajeError.jsp?mensaje=Error, usuario no auatorizado&retorno=index.jsp");
                }       
               else{
                    //Docente válido
                    // tiene nivel de acceso?
                    switch(user.getTipoUsuario())
                    {
                        case 1:
                                break;
                        case 2:
                                break;
                        default:
                                response.sendRedirect("CerrarSesion.jsp");
                                break;
                    }
                
                }
                %>
    <%
        Usuario usuario = UsuarioDAO.buscar((String)sesion.getAttribute("username"));
        String rut = usuario.getRut();
        String nombreCompleto = usuario.getNombre()+" "+usuario.getApellidoPaterno()+" "+usuario.getApellidoMaterno();
    %>
            <h1>MODIFICAR</h1>
            <form action="Controlador" method="POST">
                        <h2><%out.println(nombreCompleto);%></h2>
                        <label for="contacto">Contacto de Emergencia</label>
                        <input placeholder="<%=rut%>" type="text" name="contacto" class="validate">
                        <label for="password">Contraseña</label>
                        <input placeholder="Rut" type="password" name="password" class="validate">
                        <label for="passwordRep">Repetir Contraseña</label>
                        <input placeholder="Rut" type="password" name="passwordRep" class="validate">
                <button type="submit" name="opcion" value="Modificar">Modificar
                </button>
                <button type="reset">Cancelar</button>
                <button onclick="goBack()">Regresar</button>
            </form>

    <script>
        function goBack() 
        {
            window.history.back();
        }
    </script>
    
    </body>
</html>
