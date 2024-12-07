<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Energia Renovable</title>

        <!-- Vincula el CSS de Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Vincula Font Awesome para los iconos -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <!-- Navbar Start -->
        <div class="container-fluid position-fixed w-100 mt-5" style="top: 0; z-index: 10;">
            <div class="container-lg position-relative p-0 px-lg-3">
                <nav class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 ps-3 ps-lg-5">
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

        <!-- Carrusel Start -->
        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./img/banner.jpg" class="d-block w-100" style="height: 560px; width: 1760px;" alt="image1">
                </div>
                <div class="carousel-item">
                    <img src="./img/banner2.jpg"  class="d-block w-100" style="height: 560px; width: 1760px;"  alt="image2">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- Carrusel End -->

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