package Controlador;

import Modelo.Club;
import Modelo.ClubDAO;
import Modelo.Comentario;
import Modelo.ComentarioDAO;
import Modelo.Usuario;
import Modelo.UsuarioDAO;
import Modelo.Deportista;
import Modelo.DeportistaDAO;
import Modelo.Detalles_Deportista;
import Modelo.Detalles_DeportistaDAO;
import Modelo.Empresario;
import Modelo.EmpresarioDAO;
import Modelo.Patrocinio;
import Modelo.PatrocinioDAO;
//import Modelo.VentaDAO;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import config.GenerarSerie;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class Controlador extends HttpServlet {
    
    Usuario us = new Usuario();
    Usuario us1 = new Usuario();
    UsuarioDAO udao = new UsuarioDAO();
    Deportista d = new Deportista();
    Deportista d1 = new Deportista();
    DeportistaDAO ddao = new DeportistaDAO();
    Detalles_Deportista dtp = new Detalles_Deportista();
    Detalles_Deportista dtp1 = new Detalles_Deportista();
    Detalles_DeportistaDAO dtpdao = new Detalles_DeportistaDAO();
    Club c = new Club();
    Club c1 = new Club();
    ClubDAO cdao = new ClubDAO();
    Empresario em = new Empresario();
    Empresario em1 = new Empresario();
    EmpresarioDAO edao = new EmpresarioDAO();
    Patrocinio p = new Patrocinio();
    
    
    ComentarioDAO cmdao = new ComentarioDAO();
    Comentario cm = new Comentario();
    PatrocinioDAO pdap = new PatrocinioDAO();
    
    int idtp;
    int idd;
    int idu;
    int idc;
    int ide;
    List<Patrocinio> lista = new ArrayList<>();
    List<Deportista> lista1 = new ArrayList<>();
    int numeroPatro;
    int empresarioPatro;
    int patrocinado;
    int clubPatro;
    String inicioPatro;
    String finPatro;
    String numeroSerie;
    String nombreDepor;
    String nombreClub;
    String nombreEmpre;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String menu = request.getParameter("menu");          
            String accion = request.getParameter("accion"); 
            if(menu.equals("Principal")){
              request.getRequestDispatcher("Principal.jsp").forward(request, response);   
            }
            
            
            
            /**
        ******************************************************@USUARIO**************************************************************************************/
        
        if (menu.equals("Usuario")) {
            switch (accion) {
                case "Listar":
                    List lista = udao.listar();
                    request.setAttribute("usuarios", lista);
                    break;

                case "Agregar":
                    Part part = request.getPart("fileFoto");
                    InputStream inputStream = part.getInputStream();
                    String nom = request.getParameter("txtNombres");
                    String email = request.getParameter("txtEmail");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUser");
                    String pass = request.getParameter("txtPass");

                    us.setFoto(inputStream);
                    us.setNom(nom);
                    us.setEmail(email);
                    us.setEstado(est);
                    us.setUser(user);
                    us.setPass(pass);
                    udao.agregar(us);
                    request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                    break;

                case "Editar":
                    idu = Integer.parseInt(request.getParameter("id"));
                    Usuario us = udao.listarId(idu);
                    request.setAttribute("usuario", us);
                    request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                    break;

                case "Actualizar":
                    Part part1 = request.getPart("fileFoto");
                    InputStream inputStream1 = part1.getInputStream();
                    String nom1 = request.getParameter("txtNombres");
                    String email1 = request.getParameter("txtEmail");
                    String est1 = request.getParameter("txtEstado");
                    String user1 = request.getParameter("txtUser");
                    String pass1 = request.getParameter("txtPass");

                    us1.setFoto(inputStream1);
                    us1.setNom(nom1);
                    us1.setEmail(email1);
                    us1.setEstado(est1);
                    us1.setUser(user1);
                    us1.setPass(pass1);
                    us1.setId(idu);
                    udao.actualizar(us1);
                    request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                    break;

                case "Delete":
                    idu = Integer.parseInt(request.getParameter("id"));
                    udao.delete(idu);
                    request.getRequestDispatcher("Controlador?menu=Usuario&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Usuario.jsp").forward(request, response);
        }

            
            //*************************DEPORTISTA*******************//
            
            
            
            if(menu.equals("Deportista")){
                switch(accion){
                    case "Listar":
                        List lista = ddao.listar();
                        request.setAttribute("deportistas", lista);
                        break;

                    case "Agregar":
                        
                        int id = Integer.parseInt(request.getParameter("txtId"));
                        String nom = request.getParameter("txtNombres");
                        String categoria = request.getParameter("txtCategoria");
                        String posicion = request.getParameter("txtPosicion");
                        String tel = request.getParameter("txtTel");
                        String direccion = request.getParameter("txtDireccion");
                        d.setId(id);
                        d.setNom(nom);
                        d.setCategoria(categoria);
                        d.setPosicion(posicion);
                        d.setTel(tel);
                        d.setDireccion(direccion);
                        ddao.agregar(d);
                        request.getRequestDispatcher("Controlador?menu=Deportista&accion=Listar").forward(request, response);
                        break;
                        
                    case "Editar":
                        
                        
                        idd = Integer.parseInt(request.getParameter("id"));
                        Deportista d = ddao.listarId(idd);
                        request.setAttribute("deportista", d);
                        request.getRequestDispatcher("Controlador?menu=Deportista&accion=Listar").forward(request, response);
                        break;
                        
                        
                    case "Actualizar":
                   
                    String nom1 = request.getParameter("txtNombres");
                    String categoria1 = request.getParameter("txtCategoria");
                    String posicion1 = request.getParameter("txtPosicion");
                    String tel1 = request.getParameter("txtTel");
                    String direccion1 = request.getParameter("txtDireccion");
                 
                    d1.setNom(nom1);
                    d1.setCategoria(categoria1);
                    d1.setPosicion(posicion1);
                    d1.setTel(tel1);
                    d1.setDireccion(direccion1);
                    d1.setId(idd);
                    ddao.actualizar(d1);
                    request.getRequestDispatcher("Controlador?menu=Deportista&accion=Listar").forward(request, response);
                    break;
                    
                    case "Buscar":
                        String dato = request.getParameter("txtBuscar");
                        List<Deportista>lista1=ddao.buscar(dato);
                        request.setAttribute("deportistas",lista1);
                        request.getRequestDispatcher("Controlador?menu=Deportista&accion=Listar").forward(request, response);
                    
                     case "Delete":
                         idd = Integer.parseInt(request.getParameter("id"));
                         ddao.delete(idd);
                        request.getRequestDispatcher("Controlador?menu=Deportista&accion=Listar").forward(request, response);
                    break;
                
                }
                request.getRequestDispatcher("Deportista.jsp").forward(request, response); 
            }
            
            
            
            
             //*************************DETALLES_DEPORTISTA*******************//
            
            
            
            if(menu.equals("Deportista")){
                switch(accion){
                    case "Listar":
                        List lista = dtpdao.listar();
                        request.setAttribute("detalles_deportistas", lista);
                        break;

                    case "Agregar":
                        
                        Part part = request.getPart("fileFoto");
                        InputStream inputStream = part.getInputStream();
                        int id = Integer.parseInt(request.getParameter("txtId"));
                        String nom = request.getParameter("txtNombres");
                        String fecha = request.getParameter("txtFechaNacimi");
                        String lugar = request.getParameter("txtLugarNacimi");
                        int edad = Integer.parseInt(request.getParameter("txtEdad"));
                        String sexo = request.getParameter("txtSexo");
                        String estatura = request.getParameter("txtEstatura");
                        String peso = request.getParameter("txtPeso");
                        String posicion = request.getParameter("txtPosicionJuego");
                        String formacion = request.getParameter("txtFormaconDepor");
                        String equipos = request.getParameter("txtEquiposJugados");
                        dtp.setFoto(inputStream);
                        dtp.setIdDeportista(id);
                        dtp.setNombreDeport(nom);
                        dtp.setFechaNacimi(fecha);
                        dtp.setLugarNacimi(lugar);
                        dtp.setEdad(edad);
                        dtp.setSexo(sexo);
                        dtp.setEstatura(estatura);
                        dtp.setPeso(peso);
                        dtp.setPosicionJuego(posicion);
                        dtp.setFormaconDepor(formacion);
                        dtp.setEquiposJugados(equipos);
                        dtpdao.agregar(dtp);
                        request.getRequestDispatcher("Controlador?menu=Detalles_Deportista&accion=Listar").forward(request, response);
                        break;
                        
                    case "Editar":
                        
                        
                        idtp = Integer.parseInt(request.getParameter("id"));
                        Detalles_Deportista dtp = dtpdao.listarId(idtp);
                        request.setAttribute("detalles_deportista", dtp);
                        request.getRequestDispatcher("Controlador?menu=Detalles_Deportista&accion=Listar").forward(request, response);
                        break;
                        
                        
                    case "Actualizar":
                   
                    Part part1 = request.getPart("fileFoto");
                        InputStream inputStream1 = part1.getInputStream();
                        int id1 = Integer.parseInt(request.getParameter("txtId"));
                        String nom1 = request.getParameter("txtNombres");
                        String fecha1 = request.getParameter("txtFechaNacimi");
                        String lugar1 = request.getParameter("txtLugarNacimi");
                        int edad1 = Integer.parseInt(request.getParameter("txtEdad"));
                        String sexo1 = request.getParameter("txtSexo");
                        String estatura1 = request.getParameter("txtEstatura");
                        String peso1 = request.getParameter("txtPeso");
                        String posicion1 = request.getParameter("txtPosicionJuego");
                        String formacion1 = request.getParameter("txtFormaconDepor");
                        String equipos1 = request.getParameter("txtEquiposJugados");
                        dtp1.setFoto(inputStream1);
                        dtp1.setIdDeportista(idtp);
                        dtp1.setNombreDeport(nom1);
                        dtp1.setFechaNacimi(fecha1);
                        dtp1.setLugarNacimi(lugar1);
                        dtp1.setEdad(edad1);
                        dtp1.setSexo(sexo1);
                        dtp1.setEstatura(estatura1);
                        dtp1.setPeso(peso1);
                        dtp1.setPosicionJuego(posicion1);
                        dtp1.setFormaconDepor(formacion1);
                        dtp1.setEquiposJugados(equipos1);
                    
                    dtpdao.actualizar(dtp1);
                    request.getRequestDispatcher("Controlador?menu=Detalles_Deportista&accion=Listar").forward(request, response);
                    break;
                    
                     case "Delete":
                         idtp = Integer.parseInt(request.getParameter("id"));
                         dtpdao.delete(idtp);
                        request.getRequestDispatcher("Controlador?menu=Detalles_Deportista&accion=Listar").forward(request, response);
                    break;
                
                }
                request.getRequestDispatcher("Detalles_Deportista.jsp").forward(request, response); 
            }
            
            
            
            
            
       
            //***********************EMPRESARIO*****************************//
            
            
            
            
            
            if(menu.equals("Empresario")){
                switch(accion){
                    case "Listar":
                        List lista = edao.listar();
                        request.setAttribute("empresarios", lista);
                        break;

                    case "Agregar":
                        int id = Integer.parseInt(request.getParameter("txtId"));
                        String nom = request.getParameter("txtNombres");
                        String entidad = request.getParameter("txtEntidad");
                        String direccion = request.getParameter("txtDireccion");
                        String tel = request.getParameter("txtTel");
                        String email = request.getParameter("txtEmail");
                        em.setId(id);
                        em.setNom(nom);
                        em.setEntidad(entidad);
                        em.setDireccion(direccion);
                        em.setTel(tel);
                        em.setEmail(email);                        
                        edao.agregar(em);
                        request.getRequestDispatcher("Controlador?menu=Empresario&accion=Listar").forward(request, response);
                        break;
                        
                    case "Editar":
                        ide = Integer.parseInt(request.getParameter("id"));
                        Empresario em = edao.listarId(ide);
                        request.setAttribute("empresario", em);
                        request.getRequestDispatcher("Controlador?menu=Empresario&accion=Listar").forward(request, response);
                        break;
                        
                        
                    case "Actualizar":
                        int id1 = Integer.parseInt(request.getParameter("txtId"));
                        String nom1 = request.getParameter("txtNombres");
                        String entidad1 = request.getParameter("txtEntidad");
                        String direccion1 = request.getParameter("txtDireccion");
                        String tel1 = request.getParameter("txtTel");
                        String email1 = request.getParameter("txtEmail");
                        em1.setId(id1);
                        em1.setNom(nom1);
                        em1.setEntidad(entidad1);
                        em1.setDireccion(direccion1);
                        em1.setTel(tel1);
                        em1.setEmail(email1);
            
                        em1.setId(ide);
                        edao.actualizar(em1);
                        request.getRequestDispatcher("Controlador?menu=Empresario&accion=Listar").forward(request, response);
                    break;
                    
                     case "Delete":
                         ide = Integer.parseInt(request.getParameter("id"));
                         edao.delete(ide);
                        request.getRequestDispatcher("Controlador?menu=Empresario&accion=Listar").forward(request, response);
                    break;
                }
                request.getRequestDispatcher("Empresario.jsp").forward(request, response); 
            }
            
            
            
            
            //*************************CLUB*************************//
            
            
            
            if(menu.equals("Club")){
                switch(accion){
                    case "Listar":
                        List lista = cdao.listar();
                        request.setAttribute("clubs", lista);
                        break;

                    case "Agregar":
                        int nit = Integer.parseInt(request.getParameter("txtNit"));
                        String nom = request.getParameter("txtNombre");
                        String provincia = request.getParameter("txtProvincia");
                        String direccion = request.getParameter("txtDireccion");
                        String email = request.getParameter("txtEmail");
                        String tel = request.getParameter("txtTel");
                        c.setNit(nit);
                        c.setNom(nom);
                        c.setProvincia(provincia);
                        c.setDireccion(direccion);
                        c.setEmail(email);
                        c.setTel(tel);
                        cdao.agregar(c);
                        request.getRequestDispatcher("Controlador?menu=Club&accion=Listar").forward(request, response);
                        break;
                        
                    case "Editar":
                        idc = Integer.parseInt(request.getParameter("id"));
                        Club c = cdao.listarId(idc);
                        request.setAttribute("club", c);
                        request.getRequestDispatcher("Controlador?menu=Club&accion=Listar").forward(request, response);
                        break;
                    case "Actualizar":
                    int nit1 = Integer.parseInt(request.getParameter("txtNit"));
                    String nom1 = request.getParameter("txtNombre");
                    String provincia1 = request.getParameter("txtProvincia");
                    String direccion1 = request.getParameter("txtDireccion");
                    String email1 = request.getParameter("txtEmail");
                    String tel1 = request.getParameter("txtTel");
                    c1.setNit(nit1);
                    c1.setNom(nom1);
                    c1.setProvincia(provincia1);
                    c1.setDireccion(direccion1);
                    c1.setEmail(email1);
                    c1.setTel(tel1);
                    c1.setNit(idc);
                    cdao.actualizar(c1);
                    request.getRequestDispatcher("Controlador?menu=Club&accion=Listar").forward(request, response);
                    break;
                    
                     case "Delete":
                         idc = Integer.parseInt(request.getParameter("id"));
                         cdao.delete(idc);
                        request.getRequestDispatcher("Controlador?menu=Club&accion=Listar").forward(request, response);
                    break;
                }
             
                request.getRequestDispatcher("Club.jsp").forward(request, response); 
            }
            
            
            
            
            
            
            //**************************PATROCINICIO*******************************//
            
            
            
            
            
            
            
            if (menu.equals("Patrocinio")) {
            switch (accion) {
                case "BuscarDeportista":
                    int id = Integer.parseInt(request.getParameter("idDeportista"));
                    d.setId(id);
                    d = ddao.listarId(id);
                    request.setAttribute("d", d);
                    request.setAttribute("nserie", numeroSerie);
                    request.setAttribute("lista", lista);
                    break;

                case "BuscarClub":
                    int nit = Integer.parseInt(request.getParameter("nitClub"));
                    c = cdao.listarId(nit);
                    request.setAttribute("c", c);
                    request.setAttribute("d", d);
                    request.setAttribute("nserie", numeroSerie);
                    request.setAttribute("lista", lista);
                    break;

                case "BuscarEmpresario":
                    int id1 = Integer.parseInt(request.getParameter("idEmpresario"));
                    em.setId(id1);
                    em = edao.listarId(id1);
                    request.setAttribute("e", em);
                    request.setAttribute("c", c);
                    request.setAttribute("nserie", numeroSerie);
                    request.setAttribute("d", d);
                    request.setAttribute("lista", lista);

                    break;

                case "Agregar":
                    numeroPatro = numeroPatro + 1;
                    int patrocinado = Integer.parseInt(request.getParameter("idDeportista"));
                    inicioPatro = request.getParameter("fechainicio");
                    finPatro = request.getParameter("fechafin");
                    nombreDepor = request.getParameter("Nombres");
                    nombreClub = request.getParameter("nombreClub");
                    nombreEmpre = request.getParameter("nombreEmpresario");
                    p = new Patrocinio();

                    p.setNumeroPatro(numeroPatro);
                    p.setEmpresarioPatro(empresarioPatro);
                    p.setPatrocinado(patrocinado);
                    p.setClubPatro(clubPatro);
                    p.setInicioPatro(inicioPatro);
                    p.setNombreDepor(nombreDepor);
                    p.setNombreClub(nombreClub);
                    p.setNombreEmpre(nombreEmpre);
                    p.setFinPatro(finPatro);
                    lista.add(p);
                    request.setAttribute("nserie", numeroSerie);
                    request.setAttribute("lista", lista);
                    break;

                case "GenerarPatrocinio":
                    //Guardar Patrocinio
                    p.setEmpresarioPatro(em.getId());
                    p.setPatrocinado(2);
                    p.setClubPatro(p.getClubPatro());
                    p.setInicioPatro(inicioPatro);
                    p.setFinPatro(finPatro);
                    p.setNumeroSerie(numeroSerie);
                    pdap.guardarPatrocinio(p);
                    //Guardar Patrocinio
                    int idp = Integer.parseInt(pdap.numeroPatro());
                    for (int i = 0; i < lista.size(); i++) {
                        p = new Patrocinio();
                        p.setNumeroPatro(idp);
                        p.setEmpresarioPatro(lista.get(i).getEmpresarioPatro());
                        p.setInicioPatro(lista.get(i).getInicioPatro());
                        p.setFinPatro(lista.get(i).getFinPatro());
                        p.setNumeroPatro(lista.get(i).getNumeroPatro());
                        pdap.guardarDetallePatrocino(p);
                    }
                    break;

                default:
                    numeroSerie = pdap.GenerarSerie();
                    if (numeroSerie == null) {
                        numeroSerie = "00000001";
                        request.setAttribute("nserie", numeroSerie);
                    } else {
                        int incrementar = Integer.parseInt(numeroSerie);
                        GenerarSerie gs = new GenerarSerie();
                        numeroSerie = gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroSerie);
                    }
                    request.getRequestDispatcher("Patrocinio.jsp").forward(request, response);
            }
            request.getRequestDispatcher("Patrocinio.jsp").forward(request, response);
        }
          
            
            
            
            
            if(menu.equals("Contactanos")){
                switch(accion){
                    case "Listar":
                        List lista = cmdao.listar();
                        request.setAttribute("comentarios", lista);
                        break;

                    case "Agregar":
                        //int id = Integer.parseInt(request.getParameter("Id"));
                        String usuario = request.getParameter("Usuario");
                        String contenido = request.getParameter("Contenido");

                        //cm.setId(id);
                        cm.setUsuario(usuario);
                        cm.setContenido(contenido);
              
                        cmdao.agregar(cm);
                        request.getRequestDispatcher("Controlador?menu=Contactanos&accion=Listar").forward(request, response);
                        break;
                        
                    
                    
                     
                }
             
                request.getRequestDispatcher("Contactanos.jsp").forward(request, response); 
            }
            
            
            
        // * ***********************************************************@REGISTRARUSUARIOS***************************************************************
         
        if (menu.equals("registrar")) {
            switch (accion) {
                case "Agregar":
                    Part part2 = request.getPart("fileFoto");
                    InputStream inputStream2 = part2.getInputStream();
                    String nom2 = request.getParameter("txtNombres");
                    String email2 = request.getParameter("txtEmail");
                    String est2 = request.getParameter("txtEstado");
                    String user2 = request.getParameter("txtUser");
                    String pass2 = request.getParameter("txtPass");

                    us.setFoto(inputStream2);
                    us.setNom(nom2);
                    us.setEmail(email2);
                    us.setEstado(est2);
                    us.setUser(user2);
                    us.setPass(pass2);
                    udao.agregar(us);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int id = Integer.parseInt(request.getParameter("id"));
        udao.listarImg(id, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
