<%-- 
    Document   : MensajeError
    Created on : 26/10/2020, 08:12:03 PM
    Author     : Carlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR</title>
    </head>
    <body>
    <body>
        <%
              String mensaje, retorno;
              
              mensaje=request.getParameter("mensaje");
              retorno=request.getParameter("retorno");
         %>
        
        
    <center>
        <h1>Error!</h1>

        <h3> <%=mensaje%></h3>

        <br><br><br>
        <%if (retorno != ""){
        %>
        <a href="<%=retorno%>"><button>Volver</button></a>
        <%
        }
        else
        {
        %>
            <button type="button" name="back" onclick="history.back()">Volver</button>
        <%
        }
        %>
    </center>
    </body>
</html>
