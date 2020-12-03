<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/S.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <title>Registrarse</title>
    </head>
    <body>
        <style>
            body{
                background-image: url("img/login1.png");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center center;
                background-size: cover;
                opacity: 0.8;  

            }

            #tz{
                color:#000;
                width:350px;
                height:40px;
                top:25px;       /*podrías sustituir los top y los left por un margin*/
                left:499px;
                box-shadow: 2px 2px 10px #666;
                font-size:12px;
            }
            #boton{
                padding: 3px;
                color:white;
                width:350px;
                height:40px;
                font-size: 20px;
                box-shadow: 2px 2px 10px #666;

            }
        </style>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-12">
                <div class="card-body text-center">
                    <form action="Controlador?menu=registrar" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <img src="img/sportsbook2.png" alt="logo" style="width:300px; height: 100px">
                            <br>

                            <input type="file" value="${usuario.getFoto()}" name="fileFoto" >
                        </div>
                        <div class="form-group">

                            <input type="text" value="${usuario.getNom()}" name="txtNombres" class="form-control" placeholder="Nombres" id="tz">
                        </div>
                        <div class="form-group">
                            <br>
                            <input type="email" value="${usuario.getEmail()}" name="txtEmail" class="form-control"  placeholder="Email" id="tz">
                        </div>                 
                        <div class="form-group">
                            <br> 
                            <select value="${usuario.getEstado()}" name="txtEstado" class="form-control" placeholder="Estado" id="tz">

                                <option value="1">Deportista</option> 
                                <option value="2">Club</option> 
                                <option value="3">Empresario</option>
                                <option value="4">Usuario</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <br>
                            <input type="text" value="${usuario.getUser()}" name="txtUser" class="form-control"  placeholder="Usuario" id="tz">
                        </div>
                        <div class="form-group">
                            <br>
                            <input type="password" value="${usuario.getPass()}" name="txtPass" class="form-control"  placeholder="Contraseña" id="tz">
                        </div>

                        <input type="submit" name="accion" value="Agregar" class="btn btn-primary" id="boton">
                        <a href="index.jsp" style="color:gray" font-size="10px">¿Ya tienes cuenta? Ingresa aqui</a><br>
                    </form>   
                </div>

            </div>      
        </div>
    </body>
</html>
