<%-- 
    Document   : Contactanos
    Created on : 21/10/2020, 03:09:08 PM
    Author     : ORLANDO
--%>

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
        <div class="d-flex">
            <div class="col-sm-3">

                <div class="card">
                    <div class="card-body" style="background-color: #EEECEC">
                        <form action="Controlador?menu=Contactanos" method="POST">
                            <h4 style="color: #2e30ba">Deja tu comentario!</h4>
                            <br>
                            <div class="col-sm-14 d-flex">

                                <img src="img/user_com.png" alt="50" width="50" style="margin-bottom: 10px; margin-right: 15px;"/> 
                                <input type="text" value="${usuario.getNom()}" name="Usuario" placeholder="Usuario" class="form-control">
                            </div>     
                            <div class="form-group">
                                <b><label>Comentario</label></b>
                                <textarea  rows="6" style="width : 100%; heigth : 500%;" placeholder="Comentario" value="${comentario.getContenido()}" name="Contenido" class="form-control" size></textarea> 
                            </div>
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                        </form>
                    </div>                         
                </div> 
            </div>                
            <div class="col-sm-9">
                <div class="card">
                    <div class="card-body" style="background-color: #EEECEC">
                        <table class="table table-hover table-responsive">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Usuario</th>
                                    <th>Comentario</th>

                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="cm" items="${comentarios}">
                                    <tr>

                                        <td><img src="img/user_com.png" alt="60" width="60"/></td>
                                        <td><b>@${cm.getUsuario()}</b></td>
                                        <td>${cm.getContenido()}</td>

                                        <td>

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




