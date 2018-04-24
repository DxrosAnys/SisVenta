package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js\" integrity=\"sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js\" integrity=\"sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css\" integrity=\"sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.0.10/css/all.css\" integrity=\"sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\r\n");
      out.write("        <link href=\"css/w3.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <title>Ypower</title>\r\n");
      out.write("    </head>   \r\n");
      out.write("    <body background=\"img/bg-powerful.jpg\">\r\n");
      out.write("        <div class=\"w3-top\">\r\n");
      out.write("            <div class=\"w3-bar w3-white w3-card\" id=\"myNavbar\">\r\n");
      out.write("                <a href=\"#home\" class=\"w3-bar-item w3-button w3-wide\">YPower</a>\r\n");
      out.write("                <!-- Right-sided navbar links -->\r\n");
      out.write("                <div class=\"w3-right w3-hide-small\">\r\n");
      out.write("                    <a href=\"#about\" class=\"w3-bar-item w3-button\">CATALOGO</a>\r\n");
      out.write("                    <a href=\"#team\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i> PRODUCTOS</a>\r\n");
      out.write("                    <a href=\"#work\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-th\"></i> MARCA</a>\r\n");
      out.write("                    <a href=\"#pricing\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-usd\"></i> PROMOCIONES</a>\r\n");
      out.write("                    <a href=\"#contact\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-envelope\"></i>OFERTAS</a>\r\n");
      out.write("                    <a href=\"#usuario\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>NOVEDADES</a>\r\n");
      out.write("                    <a href=\"nosotros.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>NOSOTROS</a>\r\n");
      out.write("                    <a href=\"nosotros.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>CONTACTANOS</a>\r\n");
      out.write("                    <a href=\"registroC.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>REGISTRO</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <a href=\"javascript:void(0)\" class=\"w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium\" onclick=\"w3_open()\">\r\n");
      out.write("            <i class=\"fa fa-bars\"></i>\r\n");
      out.write("        </a>\r\n");
      out.write("        <nav class=\"w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large\" style=\"display:none\" id=\"mySidebar\">\r\n");
      out.write("            <a href=\"#team\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i> PRODUCTOS</a>\r\n");
      out.write("            <a href=\"#work\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-th\"></i> MARCA</a>\r\n");
      out.write("            <a href=\"#pricing\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-usd\"></i> PROMOCIONES</a>\r\n");
      out.write("            <a href=\"#contact\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-envelope\"></i>OFERTAS</a>\r\n");
      out.write("            <a href=\"#usuario\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>NOVEDADES</a>\r\n");
      out.write("            <a href=\"nosotros.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>NOSOTROS</a>\r\n");
      out.write("            <a href=\"#\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>CONTACTANOS</a>\r\n");
      out.write("            <a href=\"registroC.jsp\" class=\"w3-bar-item w3-button\">REGISTRO</a>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <br/>\r\n");
      out.write("        <br/>\r\n");
      out.write("        <div class=\"container\">            \r\n");
      out.write("            <div id=\"carouselExampleFade\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">\r\n");
      out.write("                <div class=\"carousel-inner\">\r\n");
      out.write("                    <div class=\"carousel-item active\">\r\n");
      out.write("                        <img class=\"d-block w-100\" src=\"img/b1.jpg\" alt=\"First slide\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"carousel-item\">\r\n");
      out.write("                        <img class=\"d-block w-100\" src=\"img/b4.jpg\"  alt=\"Second slide\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"carousel-item\">\r\n");
      out.write("                        <img class=\"d-block w-100\" src=\"img/b3.jpg\" alt=\"Third slide\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a class=\"carousel-control-prev\" href=\"#carouselExampleFade\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("                    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                    <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                </a>\r\n");
      out.write("                <a class=\"carousel-control-next\" href=\"#carouselExampleFade\" role=\"button\" data-slide=\"next\">\r\n");
      out.write("                    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                    <span class=\"sr-only\">Next</span>\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <hr class=\"featurette-divider\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"w3-row-padding\">\r\n");
      out.write("                    <div class=\"w3-third w3-container w3-margin-bottom\">\r\n");
      out.write("                        <img src=\"img/d1.jpg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\r\n");
      out.write("                        <div class=\"w3-container\">\r\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center\">Mouse !</h2></p>\r\n");
      out.write("                            <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"w3-third w3-container w3-margin-bottom\">\r\n");
      out.write("                        <img src=\"img/d2.jpg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\r\n");
      out.write("                        <div class=\"w3-container\">\r\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center\">HeadSet !!!</h2></p>\r\n");
      out.write("                            <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"w3-third w3-container\">\r\n");
      out.write("                        <img src=\"img/d3.jpeg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\r\n");
      out.write("                        <div class=\"w3-container\">\r\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center \">PC`s</h3></p>\r\n");
      out.write("                                <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <br/>\r\n");
      out.write("                <hr/>\r\n");
      out.write("                <div class=\"w3-center\">          \r\n");
      out.write("                    <iframe width=\"700\" height=\"500\" align=\"center\" src=\"https://www.youtube.com/embed/0ysHtVYcFgE\" frameborder=\"0\" allowfullscreen></iframe>\r\n");
      out.write("                </div>\r\n");
      out.write("                <hr class=\"featurette-divider\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"row featurette\">\r\n");
      out.write("                    <div class=\"col-md-6\">\r\n");
      out.write("                        <h2 class=\"featurette-heading w3-center w3-text-white\">INFORMACION</h2>\r\n");
      out.write("                        <p class=\"lead\">                   </p>\r\n");
      out.write("                        <p class=\"lead w3-text-white\" align=justify>Encuentra numerosos tipos de componentes gaming y/o genericos a los mejores precios del mercado.En YPower tenemos todo los que necesitas.</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-6\">\r\n");
      out.write("                        <img class=\"featurette-image img-responsive center-block\"  width=\"540\" height=\"400\" src=\"img/d4.jpg\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>      \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("    <footer class=\"w3-center w3-black w3-padding-64\">\r\n");
      out.write("        <a href=\"index.jsp\" class=\"w3-button w3-light-grey\"><i class=\"fa fa-arrow-up w3-margin-right\"></i>To the top</a>\r\n");
      out.write("        <div class=\"w3-xlarge w3-section\">\r\n");
      out.write("            <i class=\"fa fa-facebook-official w3-hover-opacity\"></i>\r\n");
      out.write("            <i class=\"fa fa-instagram w3-hover-opacity\"></i>\r\n");
      out.write("            <i class=\"fa fa-snapchat w3-hover-opacity\"></i>\r\n");
      out.write("            <i class=\"fa fa-pinterest-p w3-hover-opacity\"></i>\r\n");
      out.write("            <i class=\"fa fa-twitter w3-hover-opacity\"></i>\r\n");
      out.write("            <i class=\"fa fa-linkedin w3-hover-opacity\"></i>\r\n");
      out.write("        </div>\r\n");
      out.write("        <p>Powered by Ypower</p>\r\n");
      out.write("    </footer>  \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
