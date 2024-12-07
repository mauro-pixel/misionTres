<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tips de Ahorro de  Energía Renovable</title>

        <!-- Vincula el CSS de Bootstrap para un diseño responsivo -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Vincula Chart.js para crear gráficos -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <!-- Vincula Font Awesome para los iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">   
        <link href="css/tips.css" rel="stylesheet">

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

        <div class="container">
            <header>
                <div class="header-container">
                    <h1>Consejos para el Ahorro de Energía Renovable</h1>
                    <p>Optimiza el uso de energías limpias y contribuye al cuidado del planeta</p>
                </div>
            </header>

            <main>
                <section class="tips-section">
                    <h2>Consejos para Reducir el Consumo de Energía</h2>
                    <div class="tips-container">
                        <div class="tip-item">
                            <h3>1. Instala Paneles Solares</h3>
                            <p>Los paneles solares son una excelente manera de aprovechar la energía del sol. Instalar paneles en tu hogar puede reducir significativamente tu factura eléctrica y ayudar a reducir las emisiones de carbono.</p>
                        </div>
                        <div class="tip-item">
                            <h3>2. Utiliza Energía Eólica</h3>
                            <p>Si vives en una zona ventosa, las turbinas eólicas pueden generar energía renovable de manera efectiva. Considera la opción de instalar un sistema de energía eólica en tu hogar o comunidad.</p>
                        </div>
                        <div class="tip-item">
                            <h3>3. Aísla tu Vivienda</h3>
                            <p>Un buen aislamiento térmico reduce la necesidad de calefacción o refrigeración. Esto implica un menor consumo de energía, lo que resulta en menos gasto y menor huella de carbono.</p>
                        </div>
                        <div class="tip-item">
                            <h3>4. Aprovecha la Energía Hidroeléctrica</h3>
                            <p>Si tienes acceso a un río o arroyo, podrías considerar la instalación de una pequeña planta hidroeléctrica. Este tipo de energía es muy eficiente y puede ofrecer un flujo constante de electricidad.</p>
                        </div>
                        <div class="tip-item">
                            <h3>5. Utiliza Bombillas LED</h3>
                            <p>Las bombillas LED consumen mucho menos que las bombillas tradicionales, ahorrando hasta un 80% de energía. Son ideales para mantener tu hogar bien iluminado sin generar un gran gasto energético.</p>
                        </div>
                        <div class="tip-item">
                            <h3>6. Apaga los Aparatos en Desuso</h3>
                            <p>Apaga los electrodomésticos, luces y dispositivos electrónicos cuando no los estés utilizando. Incluso los aparatos en modo "standby" consumen energía, por lo que apagar todo correctamente puede hacer una gran diferencia.</p>
                        </div>
                    </div>
                </section>
            </main>
        </div>

        <!-- Footer Start -->
        <footer class="bg-dark text-white text-center py-2">
            <!-- Topbar Start -->
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
            <!-- Topbar End -->
            <p class="mb-0 mt-4">© 2024 Energía Renovable | Todos los derechos reservados.</p>
            <p class="mt-2">Página launched by Grupo 10</p>
            <p>Lurlen Velasquez</p>
            <p>Mauricio Espinal</p>
            <p>Johan Castañeda Mejia</p>
        </footer>
        <!-- Footer End -->

        <!-- Vincula el JS de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
