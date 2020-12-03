<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/S.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Patrocinio</title>
        <style>
            @media print{
                .parte01,img, .btn, .accion{
                    display: none;
                    margin-right:auto;
                    margin-left:auto;

                }
            }
        </style>
        <style>
            @media print{
                .parte01,img, .btn, .accion{
                    display: none;
                }
            }
            body{
                background-image: url("img/fondo.jpeg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: center center;
                background-size: cover;
            </style>
        </head>
        <body>
            <div class="d-flex">
                <div class="col-lg-5 parte01">
                    <div class="card" style="background-color: #EEECEC">
                            <form action="Controlador?menu=Patrocinio" method="POST">
                                <div class="card-body">
                                    <h3 style="color: #2e30ba">Registrar Patrocinio</h3>
                                    <!--DATOS DEL PRODUCTO-->
                                    <div class="form-group">
                                        <label>Datos del Deportista</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="number"  id="valor" name="idDeportista" value="${d.getId()}" class="form-control" placeholder="Codigo"  />
                                            <button type="submit" id="submit" name="accion" value="BuscarDeportista" class="btn btn-primary">Buscar</button>
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="Nombres" value="${d.getNom()}" placeholder="Nombres Deportista" class="form-control">
                                        </div>                           
                                    </div>
                                    <!--DATOS DEL CLUB-->
                                    <div class="form-group">
                                        <label>Datos Club</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="number" name="nitClub" value="${c.getNit()}" class="form-control" placeholder="Nit Club">
                                            <button type="submit" id="submit" name="accion" value="BuscarClub" class="btn btn-primary">Buscar</button>
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="nombreClub" value="${c.getNom()}" placeholder="Nombre Club" class="form-control">
                                        </div>  
                                    </div>
                                    <!--DATOS DEL EMPRESARIO-->
                                    <div class="form-group">
                                        <label>Datos Empresario</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="text" name="idEmpresario" value="${e.getId()}" class="form-control" placeholder="ID Empresario">
                                            <button type="submit" id="submit" name="accion" value="BuscarEmpresario" class="btn btn-primary">Buscar</button>
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="nombreEmpresario" value="${e.getNom()}" placeholder="Nombre Empresario" class="form-control">
                                        </div>  
                                    </div>   

                                    <div class="form-group">
                                        <label>Periodo</label>
                                    </div>
                                    <div class="form-group d-flex">
                                        <div class="col-sm-6 d-flex">
                                            <input type="text" name="fechainicio" value="${p.getFechaIni()}" class="form-control" placeholder="Fecha Inicio">                                
                                        </div>                           
                                        <div class="col-sm-6">
                                            <input type="text" name="fechafin" value="${p.getFechaFin()}" placeholder="dd-mm-aaaa" class="form-control">
                                        </div>   

                                    </div>
                                    <!--BOTON AGREGAR PRODUCTO AL REGISTRO-->
                                    <div class="form-group">
                                        <div class="col-sm">
                                            <button type="submit" name="accion" value="Agregar" class="btn btn-primary">Agregar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="card parte02">                    
                            <div class="card-body">
                                <div class="d-flex ml-auto col-sm-6">
                                    <label class="text-right mt-2 col-sm-6">NRO. PATROCINIO</label>
                                    <input readonly="" type="text" name="numeroSerie" class="form-control text-center" value="${nserie}" style="font-weight: bold;font-size: 18px">
                                </div>                      
                                <br>
                                <table class="table table-hover">
                                    <thead>
                                        <tr class="text-center">
                                            <th>N°</th>
                                            <th>ID</th>
                                            <th>Deportista</th>
                                            <th>Nit Club</th>
                                            <th>Club</th>
                                            <th>Empresario</th>
                                            <th>Fecha Ini</th>
                                            <th>Fecha Fin</th>                                    
                                            <!--<th class="accion">ACCION</th> -->                                   
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="list" items="${lista}">
                                            <tr class="text-center">
                                                <td>${list.getNumeroPatro()}</td>
                                                <td>${list.getPatrocinado()}</td>
                                                <td>${list.getNombreDepor()}</td>
                                                <td>${list.getEmpresarioPatro()}</td>
                                                <td>${list.getNombreClub()}</td>
                                                <td>${list.getNombreEmpre()}</td>
                                                <td>${list.getInicioPatro()}</td>
                                                <td>${list.getFinPatro()}</td>
                                                <!--<td class="d-flex">
                                                    <a href="#" class="btn btn-success">Editar</a>
                                                    <a href="#" class="btn btn-danger" style="margin-left: 5px">Delete</a>
                                                </td>-->
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                            <div class="card-footer" >
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="Controlador?menu=Patrocinio&accion=GenerarPatrocinio" onclick="print()" class="btn btn-primary">Generar Venta</a>
                                        <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                                    </div>
                                    <div class="col-sm-6 ml-auto d-flex">                                
                                        <label class=" col-sm-6 text-right mt-2">Total a Pagar</label>                                                       
                                        <input type="text" name="txtTotal" value="S/.${totalpagar}0" class="form-control text-center font-weight-bold" style="font-size: 18px;">
                                </div>
                            </div>                        
                        </div>
                    </div>

                </div>
            </div>
            <script>
                function el(el) {
                    return document.getElementById(el);
                }

                el("valor").addEventListener("input", function () {
                    if (!this.value.length) { //Si la longitud de la cadena de caracteres es 0 => falsa
                        el("submit").disabled = true; //Deshabilitamos el botón
                    } else { //Si no...
                        el("submit").disabled = false; //Lo habilitamos
                    }
                });

            </script>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </body>
    </html>

