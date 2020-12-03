<meta charset="UTF-8"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8″ />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/S.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>Sportsbook</title>

    </head>
    <body>
        <style>
            
            
            body{
                background-image: url("img/fondo.jpeg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center center;
                background-size: cover;
            </style>

        <style>
           
            #frameFrame{
            
            }
            #navbarNav{

                font-style: italic-bold;
                font-style: bold;
                color: white;            
            }
            #nav{
                background-image: url("img/nav.jpg");
                background-repeat: no-repeat;
             
                width: 100%
            }
            .btn-primary {
    color: #fff;
    background-color: #3b43c9;
    border-color: #ffffff;
    
}

            </style>
            <nav class="navbar navbar-expand-lg navbar-light bg-light" id="nav"> 
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item active">

                            <b><img src="img/sportsbook5.png" width="120" alt="foto"></h8><span class="sr-only">(current)</span></a></b><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li>

                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Inicio.jsp" target="myFrame"><h8 style="color:#fff">Inicio</h8></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Controlador?menu=Contactanos&accion=Listar" target="myFrame"><h8 style="color:#fff">Comunidad</h8></a>
                            </li>
                            <a class="nav-link" href="Controlador?menu=Deportista&accion=Listar" target="myFrame"><h8 style="color:#fff">Deportista</h8></a>
                            </li>
                            </li>
                            <!--<a class="nav-link" href="Controlador?menu=Detalles_Deportista&accion=Listar" target="myFrame"><h8 style="color:#fff">Detalles</h8></a>
                            </li>-->
                            <li class="nav-item">
                                <a class="nav-link" href="Controlador?menu=Usuario&accion=Listar" target="myFrame"><h8 style="color:#fff">Usuario</h8></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Controlador?menu=Club&accion=Listar" target="myFrame"><h8 style="color:#fff">Club</h8></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Controlador?menu=Empresario&accion=Listar" target="myFrame"><h8 style="color:#fff">Empresario</h8></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Controlador?menu=Patrocinio&accion=default" target="myFrame"><h8 style="color:#fff">Patrocinio</h8></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="" target="myFrame"><h8 style="color:#fff">Contactanos</h8></a>
                            </li>

                            <li class="nav-item"><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li><li class="nav-item"><a class="nav-link" href="#" target="myFrame"></a></li>


                        </ul>

                        <div class="btn-group" stlye=" background-color: purple;">
                            <button type="button " class="btn btn-primary">
                                ${usuario.getNom()}
                            </button>
                            <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <div class="dropdown-menu text-center">
                                <a class="dropdown-item" href="#">
                                    <img src="img/user_login.png" alt="60" width="60"/>
                                </a>
                                <a class="dropdown-item disabled">${usuario.getNom()}</a>
                                <a class="dropdown-item disabled" href="#">${usuario.getEmail()}</a>
                                <div class="dropdown-divider"></div>
                                <form action="Validar" method="POST">
                                    <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </nav>
                <div class="m-4" style="height: 570px;">
                <iframe name="myFrame"  id="frameFrame" style="height: 100%; width:100%; border:none; margin: 0; "></iframe>
            </div>





        </body>
        <!-- Footer -->
        <!-- Footer -->
        <footer class="page-footer font-small unique-color-dark">

            <div style="background-image: url(img/nav.jpg);">
                <div class="container">

                    <!-- Grid row-->
                    <div class="row py-4 d-flex align-items-center">

                        <!-- Grid column -->
                        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                            <h6 class="mb-0" style="color: white">Sigue conectado con nosotros!</h6>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-6 col-lg-7 text-center text-md-right">

                                <!-- Facebook -->
                                <a class="fb-ic">
                                    <i class="fab fa-facebook-f white-text mr-4"> </i>
                                </a>
                                <!-- Twitter -->
                                <a class="tw-ic">
                                    <i class="fab fa-twitter white-text mr-4"> </i>
                                </a>
                                <!-- Google +-->
                                <a class="gplus-ic">
                                    <i class="fab fa-google-plus-g white-text mr-4"> </i>
                                </a>
                                <!--Linkedin -->
                                <a class="li-ic">
                                    <i class="fab fa-linkedin-in white-text mr-4"> </i>
                                </a>
                                <!--Instagram-->
                                <a class="ins-ic">
                                    <i class="fab fa-instagram white-text"> </i>
                                </a>

                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row-->

                    </div>
                </div>

                <!-- Footer Links -->
                <div class="container text-center text-md-left mt-5">

                    <!-- Grid row -->
                    <div class="row mt-3">

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

                            <!-- Content -->
                            <img src="img/sportsbook2.png" width="180">


                            <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                                consectetur
                                adipisicing elit.</p>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                            <!-- Links -->
                            <h6 class="text-uppercase font-weight-bold">ENLACES</h6>
                            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="Controlador?menu=Contactanos&accion=Listar">Comunidad</a>
                        </p>
                        <p>
                            <a href="Controlador?menu=Deportista&accion=Listar">Deportistas</a>
                        </p>
                        <p>
                            <a href="Controlador?menu=Usuario&accion=Listar">Usuarios</a>
                        </p>
                        <p>
                            <a href="Controlador?menu=Club&accion=Listar">Clubes</a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold"></h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="Controlador?menu=Empresario&accion=Listar">Empresarios</a>
                        </p>
                        <p>
                            <a href="Controlador?menu=Patrocinio&accion=default">Patrocinios</a>
                        </p>
                        <p>
                            <a href="#!">Contactanos</a>
                        </p>
                        <p>
                            <a href="#!">Help</a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold">Contact</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <i class="fas fa-home mr-3"></i> Ibagué, Tolima, Colombia CO</p>
                        <p>
                            <i class="fas fa-envelope mr-3"></i> sportsbook@example.com</p>
                        <p>
                            <i class="fas fa-phone mr-3"></i> +57 234 567 88</p>
                        <p>
                            <i class="fas fa-print mr-3"></i> +57 234 567 89</p>

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Footer Links -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="https://mdbootstrap.com/"> sportsbook.com</a>
            </div>
            <!-- Copyright -->
        </footer>
    </html>
