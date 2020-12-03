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
    <style>
        body{
            background-image: url("img/fondo.jpeg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-size: cover;

            
        }   
    </style>
    <body>        
        <div class="container">
            <div class="col-sm-20">

                <div class="container" style="background-color: #EEECEC">
                    <div class="card-body">

                        <form action="Controlador?menu=Empresario" method="POST">
                            <center><h3 style="color: #2e30ba">¡Bienvenidos Empresarios!</h3></center>
                            <br>
                            <div class="form-group d-flex" >
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${empresario.getId()}" name="txtId" class="form-control" placeholder="ID">
                                </div>
                                <div class="col-sm-5 d-flex text ">
                                    <input type="text" value="${empresario.getNom()}" name="txtNombres" class="form-control" placeholder="Nombres">
                                </div>
                            </div>


                            <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${empresario.getEntidad()}" name="txtEntidad" class="form-control" placeholder="Entidad">
                                </div>
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${empresario.getDireccion()}" name="txtDireccion" class="form-control" placeholder="Dirección">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${empresario.getTel()}" name="txtTel" class="form-control" placeholder="Telefono">
                                </div>
                                <div class="col-sm-5 d-flex">
                                    <input type="text" value="${empresario.getEmail()}" name="txtEmail" class="form-control" placeholder="Email"> 
                                </div>
                            </div> 


                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-primary">
                        </form>
                    </div>                  
                </div>
            </div>                     
            <div class="container" >
                <div class="card" style="background-color: #EEECEC">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead style="background-color: #2e30ba">
                                <tr style="color:white"> 
                                    <th>ID</th>
                                    <th>Nombres</th>
                                    <th>Entidad</th>
                                    <th>Direccion</th>                                    
                                    <th>Telefono</th>   
                                    <th>Email</th>  
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="em" items="${empresarios}">
                                    <tr>
                                        <td>${em.getId()}</td>                                      
                                        <td>${em.getNom()}</td>
                                        <td>${em.getEntidad()}</td>
                                        <td>${em.getDireccion()}</td>
                                        <td>${em.getTel()}</td>  
                                        <td>${em.getEmail()}</td> 
                                        <td>
                                            <a class="btn btn-success" href="Controlador?menu=Empresario&accion=Editar&id=${em.getId()}"><img src="img/edit.png"  style=" height: 25px; width: 25px; margin: 0; padding-bottom: 5px; padding-top: 1px;" ></a>
                                            <a class="btn btn-danger" href="Controlador?menu=Empresario&accion=Delete&id=${em.getId()}"><img src="img/delete.png"  style=" height: 25px; width: 25px; margin: 0; padding-bottom: 5px; padding-top: 1px;" ></a>
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

