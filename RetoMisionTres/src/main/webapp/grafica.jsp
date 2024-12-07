<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gráficos de Energía Renovable</title>

        <!-- Vincula el CSS de Bootstrap para un diseño responsivo -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Vincula Chart.js para crear gráficos -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <!-- Vincula Font Awesome para los iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
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

            // Consulta para obtener los datos necesarios
            String consulta = "SELECT es.name, ed.year, ed.production, ed.consumption "
                    + "FROM EnergyData ed "
                    + "JOIN EnergySource es ON ed.source_id = es.id "
                    + "ORDER BY es.name, ed.year ASC";

            PreparedStatement ps;
            ResultSet rs;
            
            ps = cnx.prepareStatement(consulta);
            rs = ps.executeQuery();

            // Arrays para almacenar los datos que se van a pasar al gráfico
            List<String> labelsList = new ArrayList<>();
            List<Double> productionList = new ArrayList<>();
            List<Double> consumptionList = new ArrayList<>();

            while (rs.next()) {
                labelsList.add(rs.getString("name"));
                productionList.add(rs.getDouble("production"));
                consumptionList.add(rs.getDouble("consumption"));
            }

            rs.close();
            ps.close();
            cnx.close();

            Gson gson = new Gson();
            String labelsJson = gson.toJson(labelsList);
            String productionJson = gson.toJson(productionList);
            String consumptionJson = gson.toJson(consumptionList);
        %>
        <!-- Final configuración  -->

        <!-- Graph start  -->
        <div class="container">
            <h2 class="text-center mb-4">Gráfica de Energía Renovable</h2>
            <p class="text-center">Esta información fue obtenida de la tabla mostrada anteriormente.</p>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- Gráfico de barras -->
                        <h4 class="text-center">Producción de Energía Renovable</h4>
                        <canvas id="barChart1" width="400" height="200"></canvas>
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-md-12">
                        <!-- Gráfico de barras -->
                        <h4 class="text-center">Consumo de Energía Renovable</h4>
                        <canvas id="barChart2" width="400" height="200"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <!-- Graph end  -->

        <script>
            // Creamos la grafica con la libreria de chartJS en la se traer los datos de JSP
            var labels = <%= labelsJson%>;
            var productionData = <%= productionJson%>;
            var consumptionData = <%= consumptionJson%>;

            var ctx = document.getElementById('barChart1').getContext('2d');
            var barChart = new Chart(ctx, {
                type: 'bar', // Tipo de gráfico: barras
                data: {
                    labels: labels, // Etiquetas
                    datasets: [{
                            label: 'Producción (MW)',
                            data: productionData, // Datos de producción
                            backgroundColor: 'green', // Color de las barras de producción
                            borderColor: 'green',
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            var ctx = document.getElementById('barChart2').getContext('2d');
            var barChart = new Chart(ctx, {
                type: 'bar', // Tipo de gráfico: barras
                data: {
                    labels: labels, // Etiquetas
                    datasets: [{
                            label: 'Consumo (MW)',
                            data: consumptionData, // Datos de consumo
                            backgroundColor: 'blue', // Color de las barras de consumo
                            borderColor: 'blue',
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>

        <!-- Footer Start -->
        <footer class="bg-dark text-white text-center py-2">
            <div class="container2">
                <div class="row">
                    <div class="col-lg-12 text-center text-lg-right">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a class="text-primary ps-3" href="">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
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
