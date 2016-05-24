<%@page import="java.util.ArrayList"%>
<%@include file="Cargadores.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Géyser - Tu Gestor de Series Online</title>
    <link rel="stylesheet" href="../css/estilo.css">
      
    <!-- Awesome Font -->
    <link rel="stylesheet" href="../css/fuentes/font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>            
    
    <style>
      div.login form button#enlace {
        font-size: 1.2em;
        width: 30%;
        margin: 2em 3em;
        padding: 0.5em;
        float: none;
      }
      div.login {
        width: 60%;
      }
    </style>
  </head>
  <body>    
    <div class="login">
      <form action="delete.jsp" method="post">
        <h2>¿Estás seguro de que deseas borrar el elemento seleccionado de la lista?</h2>
        
        <%
          String idSerie = request.getParameter("visto");
        out.println("<button id=\"enlace\" type=\"submit\" formaction=\"campoTrabajo.jsp\" class=\"btn btn-primary btn-lg\">"
                + "Cancelar</button>");
        out.println("<button id=\"enlace\" type=\"submit\" name=\"borrar\" value=\"" + idSerie
                + "\" class=\"btn btn-primary btn-lg\">Borrar</button>");
          %>
      </form>
    </div>      
  </body>
</html>
