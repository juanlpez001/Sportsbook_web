<%@page import="java.sql.ResultSet"%>
<%@page import="config.Conexion"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/S.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>       
        <style>
            body{
                background-image: url("img/fondo.jpeg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center center;
                background-size: cover;

                label{
                    display: inline-block;
                    width: 80px;
                }

            }   
        </style>
        <div class="container">
            <div class="col-sm-20">

                <div class="container" style="background-color: #EEECEC; float:left;">
                    <div class="card-body">
                        <form action="Controlador?menu=Detalles_Deportista" method="POST" enctype="multipart/form-data">
                            <center><h3 style="color: #437BAC">¡Bienvenidos Deportistas!</h3></center>
                            <br>
                            <div class="form-group d-flex">
                                
                                <div class="col-sm-5 d-flex">
                            <input type="file" value="${detalles_deportista.getFoto()}" name="fileFoto">
                                </div>
                            <div class="form-group d-flex">
                                
                                
                                <div class="col-sm-5 d-flex">
                                 <input align="right" type="text" placeholder="Introduce ID" value="${detalles_deportista.getIdDeportista()}" name="txtId" class="form-control" >
                                </div>
                                <div class="col-sm-5 d-flex">
                                <input align="right" type="text" value="${detalles_deportista.getNombreDeport()}" name="txtNombres" class="form-control" placeholder="Nombres">
                                </div>
                            </div>
                                
                            <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                  
                                </div>
                                <div class="col-sm-5 d-flex">                                    
                                    <input type="text" value="${detalles_deportista.getFechaNacimi()}" name="txtFechaNacimi" class="form-control" placeholder="Fecha Nacimiento">
                                </div>
                            </div>
                                
                                <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${detalles_deportista.getLugarNacimi()}" name="txtLugarNacimi" class="form-control" placeholder="Lugar Nacimiento">
                                </div>
                                <div class="col-sm-5 d-flex">                                    
                                    <input type="text" value="${detalles_deportista.getEdad()}" name="txtEdad" class="form-control" placeholder="Edad">
                                </div>
                            </div>
                                
                                <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${detalles_deportista.getSexo()}" name="txtSexo" class="form-control" placeholder="Género">
                                </div>
                                <div class="col-sm-5 d-flex">                                    
                                    <input type="text" value="${detalles_deportista.getEstatura()}" name="txtEstatura" class="form-control" placeholder="Estatura">
                                </div>
                            </div>
                                
                                <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${detalles_deportista.getPeso()}" name="txtPeso" class="form-control" placeholder="Peso">
                                </div>
                                <div class="col-sm-5 d-flex">                                    
                                    <input type="text" value="${detalles_deportista.getPosicionJuego()}" name="txPosicionJuego" class="form-control" placeholder="Posición Juego">
                                </div>
                            </div>

                            <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${detalles_deportista.getFormaconDepor()}" name="txtFormaconDepor" class="form-control" placeholder="Formación Deportiva">
                                </div>
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${detalles_deportista.getEquiposJugados()}" name="txtEquiposJugados" class="form-control" placeholder="Equipos Jugados">
                                </div> 


                            </div>

                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-primary">
                        </form>
                    </div>                  
                </div>
            </div>  
            <br>



            <div class="container" >
                <div class="card " style="background-color: #EEECEC">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead style="background-color: #448cca">
                                <tr style="color:white">
                                    <th>Foto</th>
                                    <th>ID</th>
                                    <th>Nombres</th>
                                    <th>Fecha N</th>
                                    <th>Lugar N</th>                                    
                                    <th>Edad</th>   
                                    <th>Género</th>  
                                    <th>Estatura</th>  
                                    <th>Peso</th>  
                                    <th>Posición</th>  
                                    <th>Formacion</th>  
                                    <th>Equipos</th>  
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="dtp" items="${detalles_deportistas}">
                                    <tr>
                                        <td><td><img src="ControladorIMG?id=${dtp.getId()}" width="80" height="90"</td></td>
                                        <td>${dtp.getIdDeportista()}</td>                                      
                                        <td>${dtp.getNombreDeport()}</td>
                                        <td>${dtp.getFechaNacimi()}</td>
                                        <td>${dtp.getLugarNacimi()}</td>
                                        <td>${dtp.getEdad()}</td>  
                                        <td>${dtp.getSexo()}</td> 
                                        <td>${dtp.getEstatura()}</td> 
                                        <td>${dtp.getPeso()}</td> 
                                        <td>${dtp.getPosicionJuego()}</td> 
                                        <td>${dtp.getFormaconDepor()}</td> 
                                        <td>${dtp.EquiposJugados()}</td> 
                                        <td>
                                            <a class="btn btn-success" href="Controlador?menu=Detalles_Deportista&accion=Editar&id=${dtp.getIdDeportista()}"><img src="img/edit.png"  style=" height: 25px; width: 25px; margin: 0; padding-bottom: 5px; padding-top: 1px;" ></a>
                                            <a class="btn btn-danger" href="Controlador?menu=Detalles_Deportista&accion=Delete&id=${dtp.getIdDeportista()}"><img src="img/delete.png"  style=" height: 25px; width: 25px; margin: 0; padding-bottom: 5px; padding-top: 1px;"></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

