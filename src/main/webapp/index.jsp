<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:include page="/INC/metas.inc"/>
        <title>Gesti&oacute;n de sesiones</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/estilo.css" media="screen" />
    </head>
    <body>
        <div id="principal">
            <h2>Operaciones b&aacute;sicas con Sesiones</h2>
            
            <div id="secundario">
                <form action="${pageContext.request.contextPath}/FrontController" method="post">
                    <p><input type="submit" name="boton" value="Crear" class="enlace" 
                              ${(sessionScope.cliente == null) ? "" : "disabled"}/></p>
                    <p><input type="submit" name="boton" value="Visualizar" class="enlace" 
                              ${(sessionScope.cliente != null) ? "" : "disabled"}/></p>
                    <p><input type="submit" name="boton" value="Modificar" class="enlace" 
                              ${(sessionScope.cliente != null) ? "" : "disabled"}/></p>
                    <p><input type="submit" name="boton" value="Eliminar" class="enlace" 
                              ${(sessionScope.cliente != null) ? "" : "disabled"}/></p>

                </form>
            </div>
        </div>
    </body>
</html>
