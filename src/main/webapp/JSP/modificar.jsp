<%@page import="java.text.SimpleDateFormat"%>
<%@page import="es.albarregas.beans.Cliente"%>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/INC/metas.inc"/>
        <title>Modificar sesi&oacute;n</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/estilo.css" media="screen" />
    </head>
    <body>
        <div id="principal">
            <h2>Modificar atributo de sesión</h2>
            <div id="secundario">

                <form action="${pageContext.request.contextPath}/Gestion" method="post">
                    <table>
                        <tr>
                            <td colspan="2" class="error">${requestScope.error}</td>
                        </tr>
                        <tr>
                            <td><label for="ident">Id:</label></td>
                            <td><input name="idCliente" id="ident" value="${sessionScope.cliente.idCliente}" readonly=""></td>
                        </tr>
                        <tr>
                            <td><label for="nb">Nombre:</label></td>
                            <td><input name="nombre" id="nb" value="${sessionScope.cliente.nombre}"></td>
                        </tr>
                        <tr>
                            <td><label for="fc">Fecha:</label></td>
                            <%
                                Cliente cliente = (Cliente)request.getSession().getAttribute("cliente");
                                SimpleDateFormat formatoDeFecha = new SimpleDateFormat("yyyy-MM-dd");
                                String fecha = formatoDeFecha.format(cliente.getFecha());
                            %>
                            <td><input type="date" name="fecha" id="fc" value="<%=fecha%>"></td>
                        </tr> 

                        <tr>
                            <td><label for="cd">Tipo identificaci&oacute;n:</label></td>
                            <td>
                                
                                <select name="tipoIdentificacion">
                                    
                                    <option value="NIF" ${(sessionScope.cliente.tipoIdentificacion eq "NIF") ? "selected" : ""}>
                                        NIF
                                    </option>
                                    <option value="NIE" ${(sessionScope.cliente.tipoIdentificacion eq "NIE") ? "selected" : ""}>
                                        NIE
                                    </option>
                                    <option value="Pasaporte" ${(sessionScope.cliente.tipoIdentificacion eq "Pasaporte") ? "selected" : ""}>
                                        Pasaporte
                                    </option>
                                </select>

                            </td>
                        </tr>

                        <tr>
                            <td><label for="ide">Identificaci&oacute;n:</label></td>
                            <td><input name="identificacion" id="ide" value="${sessionScope.cliente.identificacion}"></td>
                        </tr>
                        <tr>
                            <td style="text-align: center;"><input type="submit" name="enviar" value="Cancelar"></td>
                            <td style="text-align: center;"><input type="submit" name="enviar" value="Modificar"></td>
                        </tr>
                    </table>

                </form>
            </div>
        </div>
    </body>
</html>
