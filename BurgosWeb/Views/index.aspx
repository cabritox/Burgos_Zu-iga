<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BurgosWeb.Views.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="slide-section d-flex align-items-center justify-content-center" style="min-height: 100vh; height: 100vh;">
    <div id="empresaCarousel" class="carousel slide carousel-empresa w-100" data-bs-ride="carousel">
        <div class="carousel-inner">
            <!-- Slide 1: Misión -->
            <div class="carousel-item active">
                <div class="card bg-dark text-light p-4 shadow-lg rounded-4 border-0 mx-auto d-flex flex-column align-items-center">
                    <!-- Imagen de la misión -->
                    <img src="img/misionn.png" alt="Imagen misión" class="slide-img mb-3">
                    <h2 class="fw-bold text-gradient text-center mb-3">Misión</h2>
                    <p class="fs-5 text-center mb-0">
                        Ofrecer tecnología de calidad, innovadora y accesible, brindando una experiencia de compra confiable, cercana y eficiente para todas las personas.
                    </p>
                </div>
            </div>
            <!-- Slide 2: Visión -->
            <div class="carousel-item">
                <div class="card bg-dark text-light p-4 shadow-lg rounded-4 border-0 mx-auto d-flex flex-column align-items-center">
                    <!-- Imagen de la visión -->
                    <img src="img/visionn.png" alt="Imagen visión" class="slide-img mb-3">
                    <h2 class="fw-bold text-gradient text-center mb-3">Visión</h2>
                    <p class="fs-5 text-center mb-0">
                        Ser la empresa referente en soluciones tecnológicas en Chile, reconocida por su excelencia en atención, confianza y aporte al desarrollo digital del país.
                    </p>
                </div>
            </div>
            <!-- Slide 3: Valores -->
            <div class="carousel-item">
                <div class="card bg-dark text-light p-4 shadow-lg rounded-4 border-0 mx-auto d-flex flex-column align-items-center">
                    <!-- Imagen de los valores -->
                    <img src="img/valor.png" alt="Imagen valores" class="slide-img mb-3">
                    <h2 class="fw-bold text-gradient text-center mb-3">Valores</h2>
                    <ul class="list-unstyled valores-lista fs-5 mb-0 text-center">
                        <li><i class="bi bi-lightbulb-fill text-info me-2"></i>Innovación constante</li>
                        <li><i class="bi bi-people-fill text-info me-2"></i>Compromiso con el cliente</li>
                        <li><i class="bi bi-shield-check text-info me-2"></i>Honestidad y transparencia</li>
                        <li><i class="bi bi-emoji-smile text-info me-2"></i>Trabajo en equipo</li>
                        <li><i class="bi bi-globe-americas text-info me-2"></i>Responsabilidad social</li>
                        <li><i class="bi bi-award text-info me-2"></i>Calidad en el servicio</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Controles e indicadores igual que antes -->
        <button class="carousel-control-prev" type="button" data-bs-target="#empresaCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon bg-gradient rounded-circle" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#empresaCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon bg-gradient rounded-circle" aria-hidden="true"></span>
            <span class="visually-hidden">Siguiente</span>
        </button>
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#empresaCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Misión"></button>
            <button type="button" data-bs-target="#empresaCarousel" data-bs-slide-to="1" aria-label="Visión"></button>
            <button type="button" data-bs-target="#empresaCarousel" data-bs-slide-to="2" aria-label="Valores"></button>
        </div>
    </div>
</section>



</asp:Content>
