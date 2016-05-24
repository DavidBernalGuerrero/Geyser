package org.apache.jsp.paginas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class insertSeries_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/paginas/Cargadores.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

  Class.forName("com.mysql.jdbc.Driver");

  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Programacion",
      "root", "root");
  Statement s = conexion.createStatement();

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Géyser - Tu Gestor de Series Online</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/estilo.css\">\n");
      out.write("      \n");
      out.write("    <!-- Awesome Font -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"../css/fuentes/font-awesome/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <!-- Optional theme -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css\" integrity=\"sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <!-- Latest compiled and minified JavaScript -->\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>        \n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <nav>\n");
      out.write("      <a id=\"logout\" class=\"btn btn-danger\" href=\"../index.html\" role=\"button\">Cerrar sesión</a>\n");
      out.write("    </nav>\n");
      out.write("    <div class=\"contenido\">\n");
      out.write("    <h3 style=\"margin: 3em 5em 1em 5em\">SERIES CONOCIDAS</h3> \n");
      out.write("    <br>\n");
      out.write("    <table class=\"table table-striped, table table-hover\">\n");
      out.write("      <tr>\n");
      out.write("        <th>\n");
      out.write("          <form action=\"insertSeries.jsp\" metho=\"post\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\" name=\"columna\" \n");
      out.write("            value=\"TITULO\">TITULO <span \n");
      out.write("            class=\"glyphicon glyphicon-sort-by-attributes-alt\" aria-hidden=\"true\"></button>\n");
      out.write("          </form>\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("          <form action=\"insertSeries.jsp\" metho=\"post\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\" name=\"columna\" \n");
      out.write("            value=\"AUTOR\">AUTOR <span \n");
      out.write("            class=\"glyphicon glyphicon-sort-by-attributes-alt\" aria-hidden=\"true\" name=\"columna\" \n");
      out.write("            value=\"AUTOR\"></button>\n");
      out.write("          </form>\n");
      out.write("        </th>        \n");
      out.write("        <th>\n");
      out.write("          <form action=\"insertSeries.jsp\" metho=\"post\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\" name=\"columna\" \n");
      out.write("            value=\"ANO_ESTRENO\">AÑO DE ESTRENO <span \n");
      out.write("            class=\"glyphicon glyphicon-sort-by-attributes-alt\" aria-hidden=\"true\"></button>\n");
      out.write("          </form>\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("          <form action=\"insertSeries.jsp\" metho=\"post\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\" name=\"columna\" \n");
      out.write("            value=\"NO_CAPITULOS\">Nº CAPITULOS <span \n");
      out.write("            class=\"glyphicon glyphicon-sort-by-attributes-alt\" aria-hidden=\"true\"></button>\n");
      out.write("          </form>\n");
      out.write("        </th>\n");
      out.write("        <th>\n");
      out.write("          <form action=\"insertSeries.jsp\" metho=\"post\">\n");
      out.write("            <button style=\"width: 6\" type=\"submit\" class=\"btn btn-primary\" name=\"columna\" \n");
      out.write("            value=\"VALORACION\">VALORACION <span \n");
      out.write("            class=\"glyphicon glyphicon-sort-by-attributes-alt\" aria-hidden=\"true\"></button>\n");
      out.write("          </form>\n");
      out.write("        </th>\n");
      out.write("    ");

      
      ResultSet listaSeries = null;
      
      String consulta = "";
      
      if (request.getParameter("columna") == null) {
        consulta = "SELECT * FROM Series";
      } else {
        consulta = "SELECT * FROM Series ORDER BY " + request.getParameter("columna");
      }
      
      out.print(consulta);
      out.print(request.getParameter("columna"));
      listaSeries = s.executeQuery (consulta);   
      
      String valoracion = "";
      
      while (listaSeries.next()) {
        
        out.println("<tr><td>");
        out.println(listaSeries.getString("TITULO") + "</td>");
        out.println("<td>" + listaSeries.getString("AUTOR") + "</td>");
        out.println("<td style=\"text-align: center;\">" + listaSeries.getString("AÑO_ESTRENO") + "</td>");
        out.println("<td style=\"text-align: center;\">" + listaSeries.getString("Nº_CAPITULOS") + "</td>");
        if (listaSeries.getString("VALORACION") == null) {
          valoracion = "-";
        } else {
          valoracion = listaSeries.getString("VALORACION");
        }
        out.println("<td style=\"text-align: center;\">" + valoracion + "</td></tr>");
        
        
      }

     
      out.write("\n");
      out.write("     </table>\n");
      out.write("    <p>Forma parte de nuestra comunidad, introduce alguna serie que conozcas.<p>\n");
      out.write("    </div>\n");
      out.write("    <footer>\n");
      out.write("      <div id=\"buscador\">\n");
      out.write("        <label class=\"control-label\" for=\"buscador\">Busca el nombre de la serie:</label>\n");
      out.write("        <div class=\"input-group\">\n");
      out.write("          <span class=\"input-group-addon\">\n");
      out.write("            <span class=\"glyphicon glyphicon-search\" aria-hidden=\"true\"></span>\n");
      out.write("          </span>\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"buscador\" placeholder=\"Buscar...\">\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
