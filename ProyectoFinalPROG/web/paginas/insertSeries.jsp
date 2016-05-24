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
  </head>
  <body>
    <nav>
      <div style="float:left; width: 10%; color: white; font-weight: 700; margin: 0.5em 0 0.5em 2em;">
        <a class="btn btn-primary" href="campoTrabajo.jsp" role="button">Mis Series</a>
      </div>
      <div style="float:left; width: 10%; color: white; font-weight: 700; margin: 0.5em 2em 0.5em 0.5em;">
        <a class="btn btn-primary" href="#" role="button">Series</a>
      </div>
      <a id="logout" class="btn btn-danger" href="../index.html" role="button">Cerrar sesión</a>
    </nav>
    <div class="contenido">
    <h3 style="margin: 3em 5em 1em 5em">SERIES CONOCIDAS</h3> 
    <br>
    <table class="table table-striped, table table-hover">
      <tr>
        <th>
          <form action="insertSeries.jsp" method="post">
            <button type="submit" class="btn btn-primary" name="columna" 
            value="TITULO">TITULO <span 
            class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true"></button>
          </form>
        </th>
        <th>
          <form action="insertSeries.jsp" method="post">
            <button type="submit" class="btn btn-primary" name="columna" 
            value="AUTOR">AUTOR <span 
            class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true" name="columna" 
            value="AUTOR"></button>
          </form>
        </th>        
        <th>
          <form action="insertSeries.jsp" method="post">
            <button type="submit" class="btn btn-primary" name="columna" 
            value="ANO_ESTRENO">AÑO DE ESTRENO <span 
            class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true"></button>
          </form>
        </th>
        <th>
          <form action="insertSeries.jsp" method="post">
            <button type="submit" class="btn btn-primary" name="columna" 
            value="NO_CAPITULOS">Nº CAPITULOS <span 
            class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true"></button>
          </form>
        </th>
        <th>
          <form action="insertSeries.jsp" method="post">
            <button style="width: 6" type="submit" class="btn btn-primary" name="columna" 
            value="VALORACION">VALORACION <span 
            class="glyphicon glyphicon-sort-by-attributes-alt" aria-hidden="true"></button>
          </form>
        </th>
        <th>
        </th>
    <%
      
      ResultSet listaSeries = null;
      
      String consulta = "";
      
      if (request.getParameter("columna") == null) {
        consulta = "SELECT * FROM Series";
      } else {
        consulta = "SELECT * FROM Series ORDER BY " + request.getParameter("columna");
      }
      
      listaSeries = s.executeQuery (consulta);   
      
      String valoracion = "";
      
      while (listaSeries.next()) {
        
        out.println("<tr><td>");
        out.println(listaSeries.getString("TITULO") + "</td>");
        out.println("<td>" + listaSeries.getString("AUTOR") + "</td>");
        out.println("<td style=\"text-align: center;\">" + listaSeries.getString("ANO_ESTRENO") + "</td>");
        out.println("<td style=\"text-align: center;\">" + listaSeries.getString("NO_CAPITULOS") + "</td>");
        
        if (listaSeries.getString("VALORACION") == null) {
          valoracion = "-";
        } else {
          valoracion = listaSeries.getString("VALORACION");
        }
        
        out.println("<td style=\"text-align: center;\">" + valoracion + "</td>");
        out.println("<td style=\"text-align: center;\">"
          + "<form action=\"insertSeries_1.jsp\" method=\"post\"><button name=\"ver\" "
                + "value=\"" + listaSeries.getString("ID_SERIE") + "\"><span class=\"glyphicon glyphicon-eye-open\"" + "aria-hidden=\"true\"></button></form>");
            
          
        
        
      }

     %>
     </table>
    </div>
    <footer>
      <div id="buscador">
        <form action="insertSeriesBuscador.jsp" method="post">
        <label class="control-label" for="buscador">Busca el nombre de la serie:</label>
        <div class="input-group">
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
          </span>
          
          <%
          out.println("<input type=\"text\" class=\"form-control\" id=\"buscador\" name=\"buscador\""
                  + " placeholder=\"Buscar...\">");
            %>
          </form>
        </div>
      </div>
    </footer>
  </body>
</html>