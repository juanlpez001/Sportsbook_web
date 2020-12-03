<%-- 
    Document   : Register
    Created on : 26/10/2020, 07:50:08 PM
    Author     : USER}
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            .select-box{

                width:350px; 
                position: relative;
            }
            .select-box select{

                height:40px;
                padding: 10px 15px;
                line-height: 16px;
                font-size: 12px;
                width: 100%;
                box-shadow: 2px 2px 10px #666;
                -webkit-appearance: none;
                appearance: none;
                border:1px solid #ccc;
                border-radius: 8px;

            }
            select-box:after{

                content: "";
                position: absolute;
                right: 8px;
                top: 50%;
                margin-top: -4px;
                border-top: 8px solid #ccc;
                border-left: 6px solid transparent;
                border-right: 6px solid transparent;
                pointer-events: none;

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

                width:172px;
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
                padding: 3px;
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
                            <h4 style="color:darkblue">Registro</h4>

                        </div>
                        <div class="select-box">
                            <select>
                                <option>Jugador</option>
                                <option>Entrenador</option>
                                <option>Empresario</option>
                            </select>

                        </div>
                        <br>
                        <div>

                            <span class="inlineinput">
                                <input type="text"  placeholder="    Nombre" id="inp2">
                            </span>

                            <span class="inlineinput">
                                <input type="text"   placeholder="    Apellido" id="inp2">
                            </span>

                        </div>
                        <br>
                        <input type="text"  class="form-control" placeholder="Correo electronico" id="inp1">
                        <br>
                        <input type="password"  class="form-control" placeholder="Contraseña" id="inp1">
                        <div class="form-group text-center">
                        </div>

                        <div class="text-center">
                            <input  type="submit" name="accion" value="Agregar" class="btn btn-primary" id="booton" >
                        </div>
                        <a href="index.jsp" style="color:gray" font-size="12px">¿Ya tienes cuenta? Ingresa aqui</a><br><br>   
                    </form>   
                </div>
            </div>
        </div>      
    </div>
</body>

