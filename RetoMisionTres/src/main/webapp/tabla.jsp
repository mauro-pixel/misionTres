<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tabla de Registro de Energía Renovable</title>

        <!-- Vincula el CSS de Bootstrap para un diseño responsivo -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Vincula Font Awesome para los iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    </head>

    <body>
        <!-- Navbar Start -->
        <div class="container-fluid position-relative w-100 mt-5" style="top: 0; z-index: 10;">
            <div class="container-lg position-relative p-0 px-lg-3">
                <nav class="navbar navbar-expand-lg bg-info navbar-light shadow-lg py-3 py-lg-0 ps-3 ps-lg-5">
                    <a href="index.jsp" class="navbar-brand">
                        <h1 class="m-0 text-success"><span class="text-dark">Energia </span>Renovable</h1>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                        <div class="navbar-nav ms-auto py-0">
                            <a href="acerca.jsp" class="nav-item nav-link active">Acerca de</a>
                            <a href="tabla.jsp" class="nav-item nav-link">Tablas de información</a>  
                            <a href="grafica.jsp" class="nav-item nav-link">Gráfica</a>
                            <a href="tips.jsp" class="nav-item nav-link">TIPS de ahorro de energia</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->

        <!-- Inicio configuración  -->
        <%
            // Configuración con la DB
            Connection cnx;
            String driver = "com.mysql.cj.jdbc.Driver";
            String usuario = "root";
            String contraseña = "";
            String db = "EnergyManagement";
            String url = "jdbc:mysql://localhost:3306/" + db + "?useTimezone=true&serverTimezone=UTC";

            Class.forName(driver);
            cnx = DriverManager.getConnection(url, usuario, contraseña);

            // Calcular la página actual
            int paginaActual = 1;  // Página por defecto
            String pageParam = request.getParameter("page");
            if (pageParam != null) {
                try {
                    paginaActual = Integer.parseInt(pageParam);
                } catch (NumberFormatException e) {
                    paginaActual = 1;
                }
            }

            // Definir el límite de registros por página
            int registrosPorPagina = 30;
            int inicio = (paginaActual - 1) * registrosPorPagina;

            // Consulta para obtener el total de registros
            String totalRegistrosQuery = "SELECT COUNT(*) FROM EnergyData";
            PreparedStatement psTotal = cnx.prepareStatement(totalRegistrosQuery);
            ResultSet rsTotal = psTotal.executeQuery();
            int totalRegistros = 0;
            if (rsTotal.next()) {
                totalRegistros = rsTotal.getInt(1);
            }

            // Calcular el número total de páginas
            int totalPaginas = (int) Math.ceil(totalRegistros / (double) registrosPorPagina);  // Asegúrate de usar double para evitar truncamiento

            // Consulta para obtener los registros de la página actual
            String consulta = "SELECT ed.id, es.name, ed.year, ed.production, ed.consumption "
                    + "FROM EnergyData ed "
                    + "JOIN EnergySource es ON ed.source_id = es.id "
                    + "ORDER BY ed.id ASC LIMIT ?, ?";
            PreparedStatement ps = cnx.prepareStatement(consulta);
            ps.setInt(1, inicio);
            ps.setInt(2, registrosPorPagina);
            ResultSet rs = ps.executeQuery();

        %>
        <!-- Final configuración  -->

        <!-- Table Start -->
        <div class="container">
            <div class="row align-items-start">
                <div class="col-12">
                    <div class="col text-center">
                        <h2 class="text-center mt-5 mb-4">Tabla de Registro de Energía Renovable</h2>
                        <p class="text-center">Esta información fue obtenida desde la base de datos</p>
                    </div>

                    <table class="table table-striped-columns" id="tablaDatos">
                        <thead>
                            <tr>
                                <!--<th>Id</th>  -->
                                <th>Tipo de Energia</th>
                                <th>Año</th>
                                <th>Producción (MW)</th>
                                <th>Consumo (MW)</th>
                            </tr>
                        </thead>
                        <tbody id="cuerpo-tabla">
                            <%  // Recorrer los resultados y mostrar los registros
                                while (rs.next()) {
                            %>
                            <tr>
                                <!-- <td><%= rs.getInt("id")%></td> -->
                                <td><%= rs.getString("name")%></td>
                                <td><%= rs.getInt("year")%></td>
                                <td><%= rs.getDouble("production")%></td>
                                <td><%= rs.getDouble("consumption")%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>

                    <!-- Paginación -->
                    <div class="d-flex justify-content-center">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <!-- Botón de página anterior -->
                                <li class="page-item <%= paginaActual == 1 ? "disabled" : ""%>">
                                    <a class="page-link" href="?page=<%= paginaActual - 1%>">&laquo;</a>
                                </li>

                                <!-- Páginas -->
                                <%
                                    for (int i = 1;
                                            i <= totalPaginas;
                                            i++) {
                                %>
                                <li class="page-item <%= i == paginaActual ? "active" : ""%>">
                                    <a class="page-link" href="?page=<%= i%>"><%= i%></a>
                                </li>
                                <%
                                    }
                                %>

                                <!-- Botón de página siguiente -->
                                <li class="page-item <%= paginaActual == totalPaginas ? "disabled" : ""%>">
                                    <a class="page-link" href="?page=<%= paginaActual + 1%>">&raquo;</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Table End -->

        <!-- Footer Start -->
        <footer class="bg-dark text-white text-center py-2">
            <p class="mb-0 mt-4">© 2024 Energía Renovable | Todos los derechos reservados.</p>
            <p class="mt-2">Página lanzada por Grupo 10</p>
            <p>Lurlen Velasquez</p>
            <p>Mauricio Espinal</p>
            <p>Johan Castañeda Mejia</p>
        </footer>
        <!-- Footer End -->

        <!-- Vincula el JS de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
