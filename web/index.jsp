<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="Clases.Alumnos"%>

        <title>Mostrar Objetos</title>
        <link rel="shortcut icon" href="./img/libreta.ico" />
        <link rel="stylesheet" href="./style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

        <%!
            Alumnos alumnos[] = new Alumnos[10];
            int cont = 0;
        %>
        <title>JSP Page</title>
    </head>
    <body>

        <div id="content">
            <div id="navBar">
                <div class="row">
                    <div class="col-1">
                        <img src="./img/icono.png">
                    </div>
                    <div class="col">
                        <h5>Actividad 3 - Arreglos con formularios</h5>
                    </div>       
                </div>

            </div>

            <div class="row" id="main">
                <div class="col-4">
                    <h5>Ingresar datos</h5>
                    <form action="index.jsp" method="post">
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">Matricula</label>
                            <div class="col-sm-9">
                                <input name="tfMatricula" type="text" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">Nombre</label>
                            <div class="col-sm-9">
                                <input name="tfNombre" type="text" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">Apellido paterno</label>
                            <div class="col-sm-9">
                                <input name="tfApellidoPaterno" type="text" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">Apellido Materno</label>
                            <div class="col-sm-9">
                                <input name="tfApellidoMaterno" type="text" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">DDI</label>
                            <div class="col-sm-9">
                                <input name="tfDdi" type="number" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">DWI</label>
                            <div class="col-sm-9">
                                <input name="tfDwi" type="number" class="form-control form-control-sm" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-3 col-form-label">ECBD</label>
                            <div class="col-sm-9">
                                <input name="tfEcbd" type="number" class="form-control form-control-sm" required>
                            </div>
                        </div>

                        <button type="submit" id="btnGuardar" name="btnGuardar" class="btn btn-primary btnGuardar">Guardar</button>

                    </form>                
                </div>
                <div class="col-8">
                    <h5>Tabla</h5>
                    <%if (request.getParameter("btnGuardar") != null) {
                            alumnos[cont] = new Alumnos("", "", "", "", "", "", "", 0.0);
                            alumnos[cont].setMatricula(request.getParameter("tfMatricula"));
                            alumnos[cont].setNombre(request.getParameter("tfNombre"));
                            alumnos[cont].setApellidoPaterno(request.getParameter("tfApellidoPaterno"));
                            alumnos[cont].setApellidoMaterno(request.getParameter("tfApellidoMaterno"));
                            alumnos[cont].setDdi(request.getParameter("tfDdi"));
                            alumnos[cont].setDwi(request.getParameter("tfDwi"));
                            alumnos[cont].setEcbd(request.getParameter("tfEcbd"));
                        %>
                    <table class="table" id="tabla">
                        <thead >
                            <tr class="table-danger">
                                <th scope="col">Matricula</th>
                                <th scope="col">Alumno</th>
                                <th scope="col">DDI</th>
                                <th scope="col">DWI</th>
                                <th scope="col">ECBD</th>
                                <th scope="col">Promedio</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for (int i = 0; i <= cont; i++) {%>
                            <tr>
                                <td><%=alumnos[i].getMatricula()%></td>
                                <td><%=alumnos[i].getNombre()%> <%=alumnos[cont].getApellidoPaterno()%> <%=alumnos[cont].getApellidoMaterno()%></td>
                                <td><%=alumnos[i].getDdi()%></td>
                                <td><%=alumnos[i].getDwi()%></td>
                                <td><%=alumnos[i].getEcbd()%></td>
                                <td><%=alumnos[i].getPromedio()%></td>
                            </tr>
                            <%
                                }%>
                        </tbody>
                    </table>
                    <%
                        cont++;
                    };%>
                    
                    <%
                    if(cont == 10){
                    cont = 0;
                    %>
                    <p>Se registró la cantidad maxima!!</p>
                    <%};%>
                </div>
            </div>
            <footer>

                <div class="row">
                    <div class="col-3">
                        <img src="./img/icono.png">
                        <img src="./img/UTlogo.png">
                    </div>
                    <div class="col">
                        <h4>Actividad 3 - Arreglos con formularios</h4>
                    </div>       
                </div>

                <div id="lineaFooter"></div>
                <p class="font-italic">actividad 3 - ©copyright</p>
            </footer>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>

    </body>
</html>
