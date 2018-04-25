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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js\" integrity=\"sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js\" integrity=\"sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css\" integrity=\"sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.0.10/css/all.css\" integrity=\"sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Raleway\">\n");
      out.write("        <link href=\"css/w3.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Ypower</title>\n");
      out.write("    </head>   \n");
      out.write("   <body  background=\"img/bg-powerful.jpg\">\n");
      out.write("        <div class=\"w3-top\">\n");
      out.write("            <div class=\"w3-bar w3-white w3-card\" id=\"myNavbar\">\n");
      out.write("                <a href=\"index.jsp\" class=\"w3-bar-item w3-button w3-white\">YPOWER</a>\n");
      out.write("                <div class=\"w3-right w3-hide-medium\">\n");
      out.write("                    <a href=\"catala.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-bookmark\"></i>CATAGOLO</a>\n");
      out.write("                    <a href=\"producto.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-product-hunt\"></i>PRODUCTOS</a>\n");
      out.write("                    <a href=\"promo.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-gift\"></i>PROMOCIONES</a>\n");
      out.write("                    <a href=\"oferta.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-cart-plus\"></i>OFERTAS</a>\n");
      out.write("                    <a href=\"novedades.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-area-chart\"></i>NOVEDADES</a>\n");
      out.write("                    <a href=\"nosotros.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-envelope\"></i>NOSOTROS</a>\n");
      out.write("                    <a href=\"registroC.jsp\"class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>REGISTRO</a>\n");
      out.write("                    <button href=\"login.jsp\"class=\"w3-bar-item w3-button\" onclick=\"document.getElementById('id01').style.display='block'\"><i class=\"fa fa-user\"></i>USUARIO</button>>\n");
      out.write("                </div>\n");
      out.write("            </div>           \n");
      out.write("        </div>\n");
      out.write("        <a href=\"javascript:void(0)\" class=\"w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium\" onclick=\"w3_open()\">\n");
      out.write("            <i class=\"fa fa-bars\"></i>\n");
      out.write("        </a>\n");
      out.write("        <nav class=\"w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large\" style=\"display:none\" id=\"mySidebar\">\n");
      out.write("            <a href=\"#team\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>CATALOGO</a>\n");
      out.write("            <a href=\"#work\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-th\"></i>PRODUCTOS</a>\n");
      out.write("            <a href=\"#pricing\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-usd\"></i> PROMOCIONES</a>\n");
      out.write("            <a href=\"#contact\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-envelope\"></i>OFERTAS</a>\n");
      out.write("            <a href=\"#usuario\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>NOVEDADES</a>\n");
      out.write("            <a href=\"nosotros.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>NOSOTROS</a>\n");
      out.write("            <a href=\"registroC.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-users\"></i>REGISTRO</a>\n");
      out.write("            <a href=\"login.jsp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-user\"></i>USUARIO</a>\n");
      out.write("        </nav>\n");
      out.write("         <div id=\"id01\" class=\"w3-modal\">\n");
      out.write("    <div class=\"w3-modal-content w3-card-4 w3-animate-zoom\" style=\"max-width:600px\">\n");
      out.write("  \n");
      out.write("      <div class=\"w3-center\"><br>\n");
      out.write("        <span onclick=\"document.getElementById('id01').style.display='none'\" class=\"w3-button w3-xlarge w3-transparent w3-display-topright\" title=\"Close Modal\">×</span>\n");
      out.write("        <img src=\"img/e1.png\" alt=\"Avatar\" style=\"width:30%\" class=\"w3-circle w3-margin-top\">\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <form class=\"w3-container\" action=\"/action_page.php\">\n");
      out.write("        <div class=\"w3-section\">\n");
      out.write("          <label><b>Usuario</b></label>\n");
      out.write("          <input class=\"w3-input w3-border w3-margin-bottom\" type=\"text\" placeholder=\"Ingresa tu usuario\" name=\"usrname\" required>\n");
      out.write("          <label><b>Contraseña</b></label>\n");
      out.write("          <input class=\"w3-input w3-border\" type=\"text\" placeholder=\"Ingresa tu conteseña\" name=\"psw\" required>\n");
      out.write("          <button class=\"w3-button w3-block w3-green w3-section w3-padding\" type=\"submit\">Ingresar</button>\n");
      out.write("          <input class=\"w3-check w3-margin-top\" type=\"checkbox\" checked=\"checked\"> Recuerdame\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("      <div class=\"w3-container w3-border-top w3-padding-16 w3-light-grey\">\n");
      out.write("        <button onclick=\"document.getElementById('id01').style.display='none'\" type=\"button\" class=\"w3-button w3-red\">Cancelar</button>\n");
      out.write("        <span class=\"w3-right w3-padding w3-hide-small\">Olvide la <a href=\"#\">contraseña?</a></span>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("        <br/>\n");
      out.write("        <br/>\n");
      out.write("        <div class=\"container\">            \n");
      out.write("            <div id=\"carouselExampleFade\" class=\"carousel slide carousel-fade\" data-ride=\"carousel\">\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("                    <div class=\"carousel-item active\">\n");
      out.write("                        <img class=\"d-block w-100\" src=\"img/b1.jpg\" alt=\"First slide\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                        <img class=\"d-block w-100\" src=\"img/b4.jpg\"  alt=\"Second slide\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                        <img class=\"d-block w-100\" src=\"img/b3.jpg\" alt=\"Third slide\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <a class=\"carousel-control-prev\" href=\"#carouselExampleFade\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                    <span class=\"sr-only\">Previous</span>\n");
      out.write("                </a>\n");
      out.write("                <a class=\"carousel-control-next\" href=\"#carouselExampleFade\" role=\"button\" data-slide=\"next\">\n");
      out.write("                    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                    <span class=\"sr-only\">Next</span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <hr class=\"featurette-divider\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                \n");
      out.write("                <div class=\"w3-row-padding\">\n");
      out.write("                    <div class=\"w3-third w3-container w3-margin-bottom\">\n");
      out.write("                        <img src=\"img/d1.jpg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\n");
      out.write("                        <div class=\"w3-container\">\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center\">Mouse !</h2></p>\n");
      out.write("                            <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-third w3-container w3-margin-bottom\">\n");
      out.write("                        <img src=\"img/d2.jpg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\n");
      out.write("                        <div class=\"w3-container\">\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center\">HeadSet !!!</h2></p>\n");
      out.write("                            <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w3-third w3-container\">\n");
      out.write("                        <img src=\"img/d3.jpeg\" alt=\"Norway\" style=\"width:90%\" class=\"w3-hover-opacity\">\n");
      out.write("                        <div class=\"w3-container\">\n");
      out.write("                            <p><h2 class=\"w3-text-white w3-center \">PC`s</h3></p>\n");
      out.write("                                <p class=\"w3-text-white\"align=justify>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <br/>\n");
      out.write("                <hr/>\n");
      out.write("                <div class=\"w3-center\">          \n");
      out.write("                    <iframe width=\"700\" height=\"500\" align=\"center\" src=\"https://www.youtube.com/embed/0ysHtVYcFgE\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("                </div>\n");
      out.write("                <hr class=\"featurette-divider\">\n");
      out.write("\n");
      out.write("                <div class=\"row featurette\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <h2 class=\"featurette-heading w3-center w3-text-white\">INFORMACION</h2>\n");
      out.write("                        <p class=\"lead\">                   </p>\n");
      out.write("                        <p class=\"lead w3-text-white\" align=justify>Encuentra numerosos tipos de componentes gaming y/o genericos a los mejores precios del mercado.En YPower tenemos todo los que necesitas.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <img class=\"featurette-image img-responsive center-block\"  width=\"540\" height=\"400\" src=\"img/d4.jpg\">\n");
      out.write("                    </div>\n");
      out.write("                </div>      \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("    <footer class=\"w3-center w3-black w3-padding-64\">\n");
      out.write("        <a href=\"index.jsp\" class=\"w3-button w3-light-grey\"><i class=\"fa fa-arrow-up w3-margin-right\"></i>To the top</a>\n");
      out.write("        <div class=\"w3-xlarge w3-section\">\n");
      out.write("            <i class=\"fa fa-facebook-official w3-hover-opacity\"></i>\n");
      out.write("            <i class=\"fa fa-instagram w3-hover-opacity\"></i>\n");
      out.write("            <i class=\"fa fa-snapchat w3-hover-opacity\"></i>\n");
      out.write("            <i class=\"fa fa-pinterest-p w3-hover-opacity\"></i>\n");
      out.write("            <i class=\"fa fa-twitter w3-hover-opacity\"></i>\n");
      out.write("            <i class=\"fa fa-linkedin w3-hover-opacity\"></i>\n");
      out.write("        </div>\n");
      out.write("        <p>Powered by Ypower</p>\n");
      out.write("    </footer>  \n");
      out.write("</body>\n");
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
