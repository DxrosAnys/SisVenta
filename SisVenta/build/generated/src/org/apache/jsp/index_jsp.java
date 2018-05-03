package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Ypower</title>\r\n");
      out.write("    </head>   \r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("\r\n");
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
      out.write("        <link href=\"resources/css/w3.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"resources/css/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <link href=\"resources/bootstrap-3.3.7-dist/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"resources/css/bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"resources/css/bootstrap-theme.css\">\r\n");
      out.write("        <link href=\"resources/css/tablestyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"resources/js/jquery-1.10.2.min.js\"></script>\r\n");
      out.write("        <title>Ypower</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"w3-top\">\r\n");
      out.write("            <div class=\"w3-bar w3-white w3-card\" id=\"myNavbar\">\r\n");
      out.write("                <a href=\"index.jsp\" class=\"w3-bar-item w3-button w3-white\">YPOWER</a>\r\n");
      out.write("                <div class=\"w3-right w3-hide-medium\">\r\n");
      out.write("                    <a href=\"ConsultarProducto\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-bookmark\"></i>CATAGOLO</a>\r\n");
      out.write("                    <a href=\"producto.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-product-hunt\"></i>PRODUCTOS</a>\r\n");
      out.write("                    <a href=\"promo.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-gift\"></i>PROMOCIONES</a>\r\n");
      out.write("                    <a href=\"oferta.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-cart-plus\"></i>OFERTAS</a>\r\n");
      out.write("                    <a href=\"novedades.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-area-chart\"></i>NOVEDADES</a>\r\n");
      out.write("                    <a href=\"nosotros.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-envelope\"></i>NOSOTROS</a>\r\n");
      out.write("                    <a href=\"registroCliente.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>REGISTRO</a>\r\n");
      out.write("                    <button href=\"login.jsp\"class=\"w3-bar-item w3-button\" onclick=\"document.getElementById('id01').style.display = 'block'\"><i class=\"fa fa-user\"></i>USUARIO</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>           \r\n");
      out.write("        </div>\r\n");
      out.write("        <a href=\"javascript:void(0)\" class=\"w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium\" onclick=\"w3_open()\">\r\n");
      out.write("            <i class=\"fa fa-bars\"></i>\r\n");
      out.write("        </a>\r\n");
      out.write("        <nav class=\"w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large\" style=\"display:none\" id=\"mySidebar\">\r\n");
      out.write("            <a href=\"#catalago\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>CATALOGO</a>\r\n");
      out.write("            <a href=\"#work\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-th\"></i>PRODUCTOS</a>\r\n");
      out.write("            <a href=\"#pricing\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-usd\"></i> PROMOCIONES</a>\r\n");
      out.write("            <a href=\"#contact\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-envelope\"></i>OFERTAS</a>\r\n");
      out.write("            <a href=\"#usuario\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>NOVEDADES</a>\r\n");
      out.write("            <a href=\"nosotros.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>NOSOTROS</a>\r\n");
      out.write("            <a href=\"Registro\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>REGISTRO</a>\r\n");
      out.write("            <a href=\"Logear\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>USUARIO</a>\r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("        <div id=\"id01\" class=\"w3-modal\">\r\n");
      out.write("            <div class=\"w3-modal-content w3-card-4 w3-animate-zoom\" style=\"max-width:600px\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"w3-center\"><br>\r\n");
      out.write("                    <span onclick=\"document.getElementById('id01').style.display = 'none'\" class=\"w3-button w3-xlarge w3-transparent w3-display-topright\" title=\"Close Modal\">×</span>\r\n");
      out.write("                    <img src=\"resources/img/general/e1.png\" alt=\"Avatar\" style=\"width:30%\" class=\"w3-circle w3-margin-top\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <form class=\"w3-container\" action=\"/action_page.php\">\r\n");
      out.write("                    <div class=\"w3-section\">\r\n");
      out.write("                        <label><b>Usuario</b></label>\r\n");
      out.write("                        <input class=\"w3-input w3-border w3-margin-bottom\" type=\"text\" placeholder=\"Ingresa tu usuario\" name=\"usrname\" required>\r\n");
      out.write("                        <label><b>Contraseña</b></label>\r\n");
      out.write("                        <input class=\"w3-input w3-border\" type=\"text\" placeholder=\"Ingresa tu conteseña\" name=\"psw\" required>\r\n");
      out.write("                        <button class=\"w3-button w3-block w3-green w3-section w3-padding\" type=\"submit\">Ingresar</button>\r\n");
      out.write("                        <input class=\"w3-check w3-margin-top\" type=\"checkbox\" checked=\"checked\"> Recuerdame\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"w3-container w3-border-top w3-padding-16 w3-light-grey\">\r\n");
      out.write("                    <button onclick=\"document.getElementById('id01').style.display = 'none'\" type=\"button\" class=\"w3-button w3-red\">Cancelar</button>\r\n");
      out.write("                    <span class=\"w3-right w3-padding w3-hide-small\">Olvide la <a href=\"#\">contraseña?</a></span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <body  background=\"resources/img/general/bg-powerful.jpg\">\r\n");
      out.write("        <br/>\r\n");
      out.write("        <br/>\r\n");
      out.write("        <div class=\"container\">            \r\n");
      out.write("            <div id=\"carouselExampleFade\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">\r\n");
      out.write("                <div class=\"carousel-inner\">\r\n");
      out.write("                    <div class=\"carousel-item active\">\r\n");
      out.write("                        <img class=\"d-block w-100\" src=\"resources/img/imgindex/b1.jpg\" alt=\"First slide\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"carousel-item\">\r\n");
      out.write("                        <img class=\"d-block w-100\" src=\"resources/img/imgindex/b4.jpg\"  alt=\"Second slide\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"carousel-item\">\r\n");
      out.write("                        <img class=\"d-block w-100\" src=\"resources/img/imgindex/b3.jpg\" alt=\"Third slide\">\r\n");
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
      out.write("                        <img src=\"resources/img/imgindex/d1.jpg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\r\n");
      out.write("                        <div class=\"w3-container\">\r\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center\">Mouse !</h2></p>\r\n");
      out.write("                            <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"w3-third w3-container w3-margin-bottom\">\r\n");
      out.write("                        <img src=\"resources/img/imgindex/d2.jpg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\r\n");
      out.write("                        <div class=\"w3-container\">\r\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center\">HeadSet !!!</h2></p>\r\n");
      out.write("                            <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"w3-third w3-container\">\r\n");
      out.write("                        <img src=\"resources/img/imgindex/d3.jpeg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\r\n");
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
      out.write("                        <img class=\"featurette-image img-responsive center-block\"  width=\"540\" height=\"400\" src=\"resources/img/imgindex/d4.jpg\">\r\n");
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
