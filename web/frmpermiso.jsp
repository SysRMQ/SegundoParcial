<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" >
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

        <title>Gestion</title>
    </head>
    <body>
        <div class="container">
            <h1>Formulario de Permisos</h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="permisos" />
            </jsp:include>
            <br>
            <form action="PermisoControlador" method="post" >
                <input type="hidden" name="id" value="${permiso.id}">
                <div class="form-group">
                    <label for="" class="form-label">Usuario</label>
                    <select name="usuario_id" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_usuario}">
                            <option value="${item.id}" <c:if test="${permiso.usuario_id == item.id}">
                                        selected
                                    </c:if>>${item.usuario}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Rol</label>
                    <select name="rol_id" class="form-control">
                        <option value="">-- Seleccione --</option>
                        <c:forEach var="item" items="${lista_rol}">
                            <option value="${item.id}" 
                                    <c:if test="${permiso.rol_id == item.id}">
                                        selected
                                    </c:if>
                                        >${item.descripcion}</option>
                        </c:forEach>
                    </select>
                </div>
               
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

    </body>
</html>

