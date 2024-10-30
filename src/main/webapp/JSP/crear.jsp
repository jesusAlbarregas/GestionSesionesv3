<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/metas.inc"/>
        <title>Nueva sesi&oacute;n</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/estilo.css" media="screen" />
    </head>
    <body>

        <div id="principal">
            <h2>Nuevo atributo de sesión</h2>
            <div id="secundario">
                <form action="${pageContext.request.contextPath}/Gestion" method="post">
                    <table>
                        <tr>
                            <td colspan="2" class="error">${requestScope.error}</td>
                        </tr>
                        <tr>
                            <td><label for="ident">Id:</label></td>
                            <td><input name="idCliente" id="ident" value="${param.idCliente}"></td>
                        </tr>
                        <tr>
                            <td><label for="nb">Nombre:</label></td>
                            <td><input name="nombre" id="nb" value="${param.nombre}"></td>
                        </tr>
                        <tr>
                            <td><label for="fc">Fecha:</label></td>
                            <td><input type="date" name="fecha" id="fc" value="${param.fecha}"></td>
                        </tr> 

                        <tr>
                            <td><label for="cd">Tipo identificaci&oacute;n:</label></td>
                            <td>
                                <select name="tipoIdentificacion">

                                    <option value="NIF" ${(param.tipoIdentificacion == "NIF") ? "selected" : ""}>NIF</option>
                                    <option value="NIE" ${(param.tipoIdentificacion == "NIE") ? "selected" : ""}>NIE</option>
                                    <option value="Pasaporte" ${(param.tipoIdentificacion == "Pasaporte") ? "selected" : ""}>Pasaporte</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td><label for="ide">Identificaci&oacute;n:</label></td>
                            <td><input name="identificacion" id="ide" value="${param.identificacion}"></td>
                        </tr>

                        <tr>
                            <td style="text-align: center;"><input type="submit" name="enviar" value="Cancelar"></td>
                            <td style="text-align: center;"><input type="submit" name="enviar" value="Crear"></td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </body>
</html>
