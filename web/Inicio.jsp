<%-- 
    Document   : Inicio
    Created on : 23/11/2020, 05:05:31 PM
    Author     : ORLANDO
--%>

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
        <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Bienvenido a Sportsbook</h3>
                    </div>
                    <div class="modal-body">
                        <h6>Las especificaciones de requerimientos de software del aplicativo conocido como SPORTSBOOK  surge de la
                            necesidad de reconocer los mejores deportistas para mostrar sus habilidades a clubes, empresarios, universidades
                            u otras entidades deportivas,y de este modo crear una aplicación centrada en recopilar la información
                            de los jugadores con el fin de facilita la adquisición de patrocinio y/o reconocimientos por parte de empresarios, 
                            clubes o instituciones para  sus usuarios.</h6>

                    </div>
                    
                    
                    
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn btn-danger">Cerrar</a>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function ()
            {
                $("#mostrarmodal").modal("show");
            });
        </script>
        <style>
            body h3{
                font-family: serif;
            }
            .carousel-inner img {
                width: 100%;
                max-height: 460px;
            }

            .carousel-inner{
                height: 400px;
            }
            body{
                font-style: italic;
            }
        </style>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">

                    <img class="d-block w-100 h-50" src="img/1.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 h-50" src="img/2.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 h-50" src="img/3.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 h-50" src="img/4.jpg" alt="Fourth slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 h-50" src="img/5.jpg" alt="Fifth slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 h-50"  src="img/6.jpg" alt="Sixth slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><br><br><br>
        <div class="d-flex">
            <div class="col-sm-4">

               <h4 style="color:#2e30ba" id="1">Demuestra tus habilidades.</h4><br>
                <a syle="text-align: justify">Muestra que eres un gran deportista que puede estar a la talla de cualquier jugador mostrando tus habilidades<br>
                    Busca y contrata jugadores en desarrollo deportivo de manera facil y optima siendo un empresario.<br>
                    Comenta u observa todo el futuro que tiene nuestra plantilla de Sportsbook.</a><br>
                <a href="Contactanos.jsp">Ingresa</a>
                <hr>

            </div>
            
            <div class="col-sm-4">

                <h4 style="color:#2e30ba" id="1">Demuestra tus habilidades.</h4><br>
                <a syle="text-align: justify">Muestra que eres un gran deportista que puede estar a la talla de cualquier jugador mostrando tus habilidades<br>
                    Busca y contrata jugadores en desarrollo deportivo de manera facil y optima siendo un empresario.<br>
                    Comenta u observa todo el futuro que tiene nuestra plantilla de Sportsbook.</a><br>
                <a href="Contactanos.jsp">Ingresa</a>
                <hr>
            </div>
            <div class="col-sm-4">

                <h4 style="color:#2e30ba" id="1">Sportsbook!</h4><br>
                <a syle="text-align: justify">¿Quieres mostrar tu talento al mundo mostrando tus habilidades futbolisticas?<br>
                    Esta es una gran oportunidad para hacerlo mpstrandonos tu video subido en youtube.<br>
                    Comenta u observa todos los deportistas o usuarios que estan involucrados con nuestra pagina.</a>
                <br>
                <a href="Contactanos.jsp">Ingresa</a>
                <hr>
            </div>
        </div>
        
        <div class="d-flex">
            <div class="col-sm-4">

                <h4 style="color:#2e30ba" id="1">Futbol Dimayor.</h4><br>
                
               <a class="twitter-timeline" href="https://twitter.com/Dimayor?ref_src=twsrc%5Etfw">Tweets by Dimayor</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
               
                <hr>

            </div>
            
            <div class="col-sm-4">

                <h4 style="color:#2e30ba" id="1">FCF</h4><br>
                <a class="twitter-timeline" href="https://twitter.com/FCF_Oficial?ref_src=twsrc%5Etfw">Tweets by FCF_Oficial</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                <hr>
            </div>
            <div class="col-sm-4">

                <h4 style="color:#2e30ba" id="1">Futból!</h4><br>
                <a class="twitter-timeline" href="https://twitter.com/MovistarFutbol?ref_src=twsrc%5Etfw">Tweets by MovistarFutbol</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                <hr>
            </div>
        </div>
    </body>

</html>