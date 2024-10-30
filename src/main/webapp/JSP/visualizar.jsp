<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/metas.inc"/>
        <title>Ver sesi&oacute;n</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/estilo.css" media="screen" />
    </head>
    <body>
        <div id="principal">
            <h2>Ver sesi&oacute;n</h2>
            <div id="secundario">
                
                    <table>
                        <tr>
                            <td><label for="ident">Id:</label></td>
                            <td><input name="idCliente" id="ident" value="${sessionScope.cliente.idCliente}" readonly></td>
                        </tr>
                        <tr>
                            <td><label for="nb">Nombre:</label></td>
                            <td><input name="nombre" id="nb" value="${sessionScope.cliente.nombre}" readonly></td>
                        </tr>
                        <tr>
                            <td><label for="fc">Fecha:</label></td>
                            
                            <td><input type="text" name="fecha" id="fc" value="${sessionScope.cliente.fechaFormateada}" readonly></td>
                        </tr> 
                        <tr>
                            <td><label for="cd">Tipo identificaci&oacute;n:</label></td>
                            <td>
                                <input value="${sessionScope.cliente.tipoIdentificacion}" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="ide">Identificaci&oacute;n:</label></td>
                            <td><input name="identificacion" id="ide" value="${sessionScope.cliente.identificacion}" readonly></td>
                        </tr>
                        
                        
                        <form action="${pageContext.request.contextPath}/Gestion" method="post">
                        <tr>
                            <td style="text-align: center;"><input type="submit" name="enviar" value="Volver"></td>
                            
                        </tr>
                    

                </form>
                        </table>
            </div>
        </div>
    </body>
</html>
