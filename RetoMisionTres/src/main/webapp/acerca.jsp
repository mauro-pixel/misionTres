<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Acerca de Energía Renovable</title>

        <!-- Vincula el CSS de Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Vincula Font Awesome para los iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

        <!-- Vincula Font Awesome para los iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- Navbar Start -->
        <div class="container-fluid position-relative w-100 mt-5" style="top: 0; z-index: 10;">
            <div class="container-lg position-relative p-0 px-lg-3">
                <nav class="navbar navbar-expand-lg bg-info navbar-info shadow-lg py-3 py-lg-0 ps-3 ps-lg-5">
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

        <!-- Hero Section -->
        <div class="hero-section d-flex justify-content-center align-items-center text-center">
            <div class="container">
                <h1 class="display-4 fw-bold">Energía Renovable</h1>
                <p class="lead">Una alternativa limpia y sostenible para un futuro mejor.</p>
            </div>
        </div>


        <!-- Sección Acerca de -->
        <div class="container py-5">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mb-4">¿Qué es la Energía Renovable?</h2>
                    <p>
                        La energía renovable proviene de fuentes naturales que se regeneran constantemente, como la luz
                        solar, el viento, el agua, la biomasa y la geotermia. A diferencia de los combustibles fósiles, las
                        fuentes de energía renovable son limpias y no emiten gases de efecto invernadero, lo que las
                        convierte en una opción vital para reducir el impacto ambiental y mitigar el cambio climático.
                    </p>
                    <h4>Beneficios de la Energía Renovable:</h4>
                    <ul>
                        <li>Reducción de las emisiones de CO2.</li>
                        <li>Menor dependencia de fuentes de energía no renovables.</li>
                        <li>Fomento de la creación de empleos verdes.</li>
                        <li>Contribución a la sostenibilidad a largo plazo.</li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mb-4">Fuentes de Energía Renovable</h2>
                    <p> Las principales fuentes de energía renovable son:</p>
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <div class="icon-box">
                                <i class="fas fa-sun"></i>
                                <h5>Solar</h5>
                                <p>La energía solar aprovecha la radiación del sol mediante paneles solares.</p>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="icon-box">
                                <i class="fas fa-wind"></i>
                                <h5>Eólica</h5>
                                <p>Las turbinas eólicas convierten el viento en energía eléctrica.</p>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="icon-box">
                                <i class="fas fa-water"></i>
                                <h5>Hidráulica</h5>
                                <p>La energía hidráulica se obtiene a través del flujo de agua.</p>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="icon-box">
                                <i class="fas fa-leaf"></i>
                                <h5>Biomasa</h5>
                                <p>La biomasa es materia orgánica que se utiliza para generar energía.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
