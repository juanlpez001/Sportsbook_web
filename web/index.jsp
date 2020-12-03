<%-- 
    Document   : index
    Interfaz desarrollada para la autenticación e inicio de sesión del usuario.
    Autho      : ADSI
    Ficha      : 1835213
--%>

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
        <title>Iniciar Sesión</title>

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
            #inp1{
                background:url("img/login.jpg") no-repeat;
                color:#000;
                width:350px;
                height:40px;
                top:25px;       /*podrías sustituir los top y los left por un margin*/
                left:499px;
                box-shadow: 2px 2px 10px #666;
                font-size:12px;
            }
            #inp2{
                background-image: url("img/login.jpg");
                color:#000;
                width:350px;
                height:40px;
                top:25px;       /*podrías sustituir los top y los left por un margin*/
                left:499px;
                box-shadow: 2px 2px 10px #666;
                font-size:12px;
            }
            a:link {
                font-size:12px;

            }
            #booton{
                padding: 1px; 
                color:white;
                width:350px;
                height:40px;
                font-size: 20px;
                box-shadow: 2px 2px 10px #666;

            }




        </style>
        <br><br>
        <div class="container mt-4 col-lg-4">

            <div class="card col-sm-12">
                <div class="card-body ">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">

                            <img src="img/sportsbook2.png" alt="logo" style="width:300px; height: 100px">
                            <br>
                            <br>
                            <h4 style="color:#448cca">Iniciar Sesión</h4>

                        </div>
                        <div class="form-group">

                            <input type="text" name="txtuser" class="form-control" placeholder="Correo electronico"src="img/login.jpg" id="inp1">

                        </div>
                        <br>

                        <div class="form-group">

                            <input type="password" name="txtpass" class="form-control" placeholder="Contraseña" id="inp2">
                        </div>

                        <center><a href="#" style="color:gray" font-size="12px">¿Tienes problemas con tu contraseña o correo?  </a><br><br>
                            <div class="form-group text-center">
                        </center>

                        <div class="text-center">
                            <input  type="submit" name="accion" value="Ingresar" class="btn btn-primary" id="booton" >
                        </div>
                        <center>
                            <a href="Registrarse.jsp" style="color:gray" font-size="12px">¿Aun no tienes cuenta? Registrate aqui</a><br><br> 
                        </center>
                    </form>   
                </div>
            </div>      
        </div>
    </body>
</html>
