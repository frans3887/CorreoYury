<%-- 
    Document   : menuRRHH
    Created on : 28-10-2020, 19:27:04
    Author     : admin
--%>

<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

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
                     response.sendRedirect("MensajeError.jsp?mensaje=Error, usuario no auatorizado&retorno=index.jsp");
                }       
               else{
                    //Usuario válido
                    // tiene nivel de acceso?
                     if(user.getTipoUsuario() !=3)  // 3 Personal RRHH
                     {                         
                         response.sendRedirect("CerrarSesion.jsp");
                     }
                
                }
            

         %>
        
        
        

        <!-- Dropdown Structure -->
        <ul id="dropdown1" class="dropdown-content">
            <li><a href="GrabarTrabajador.jsp">Añadir nuevo trabajador</a></li>
            <li class="divider"></li>
            <li><a href="CerrarSesion.jsp">Salir</a></li>
        </ul>
        <nav>
            <div class="nav-wrapper">
                <ul class="right hide-on-med-and-down">
                    <li><a href="#">Información</a></li>
                    <!-- Dropdown Trigger -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Reportes<i class="material-icons right">arrow_drop_down</i></a></li>
                </ul>
            </div>
        </nav>








        <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="js/materialize.min.js"></script>

        
        <!--
          <script>

            document.addEventListener('DOMContentLoaded', function () {
                // var elems = document.querySelectorAll('.sidenav');
                // var instances = M.Sidenav.init(elems);
                M.AutoInit();
            });
        </script>
        
       -->
      
        <script>
            $(document).ready(function () {
                //$('select').formSelect();  
                $(".dropdown-trigger").dropdown();
            });
        </script>
 
    </body>
</html>
