
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/S.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Usuario</title>
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
                <div class="container">
                    <div class="card-body" style="background-color: #EEECEC">
                        <form action="Controlador?menu=Usuario" method="POST" enctype="multipart/form-data">
                            <center><h3 style="color: #2e30ba">¡Bienvenidos Usuarios!</h3></center>
                            <br>
                            <div class="form-group">       
                                <div class="col-sm-12 d-flex">
                                    
                                    <b>
                                <label>Foto:    </label>
                                    </b>
                                   
                                <input type="file" value="${usuario.getFoto()}" name="fileFoto">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                <input type="text" value="${usuario.getNom()}" name="txtNombres" class="form-control" placeholder="Nombres">
                                </div>
                                <div class="col-sm-5 d-flex">
                                    <input type="email" value="${usuario.getEmail()}" name="txtEmail" class="form-control" placeholder="Email">
                            </div>
                            </div>
                                
                            <div class="form-group d-flex">
                                <div class="col-sm-5 d-flex">
                                <input type="text" value="${usuario.getEstado()}" name="txtEstado" class="form-control" placeholder="Estado">
                                </div>
                                <div class="col-sm-5 d-flex">
                                <input type="text" value="${usuario.getUser()}" name="txtUser" class="form-control" placeholder="Usuario">
                            </div>
                            </div>
                                
                            <div class="form-group d-flex" >
                                <div class="col-sm-5 d-flex">
                                <input type="text" value="${usuario.getPass()}" name="txtPass" class="form-control" placeholder="Contraseña">
                                </div>
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                        </form>
                    </div>                         
                </div>
            </div>                 
            <div class="col-sm-12">
                <div class="card" style="background-color: #EEECEC">
                    <div class="card-body" style="text-align:center;">
                        <table class="table table-hover">
                            <thead style="background-color: #2e30ba">
                                <tr style="color:white">

                                    <th>ID</th>
                                    <th>Foto</th>
                                    <th>Nombres</th>
                                    <th>Telefono</th>
                                    <th>Estado</th>
                                    <th>Usuario</th>
                                    <th>Contraseña</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="us" items="${usuarios}">
                                    <tr>
                                        <td>${us.getId()}</td>
                                        <td><img src="ControladorIMG?id=${us.getId()}" width="80" height="90"</td>
                                        <td>${us.getNom()}</td>
                                        <td>${us.getEmail()}</td>
                                        <td>${us.getEstado()}</td>
                                        <td>${us.getUser()}</td>
                                        <td>${us.getPass()}</td>
                                        <td>
                                            <a class="btn btn-primary" href="Controlador?menu=Usuario&accion=Editar&id=${us.getId()}"><img src="img/edit.png"  style=" height: 25px; width: 25px; margin: 0; padding-bottom: 5px; padding-top: 1px;" ></a>
                                            <a class="btn btn-danger" href="Controlador?menu=Usuario&accion=Delete&id=${us.getId()}"><img src="img/delete.png"  style=" height: 25px; width: 25px; margin: 0; padding-bottom: 5px; padding-top: 1px;" ></a>
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
