<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BurgosWeb.Views.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="slide-section">
    <div id="empresaCarousel" class="carousel slide carousel-empresa" data-bs-ride="carousel">
        <div class="carousel-inner">

            <!-- Slide Misión -->
            <div class="carousel-item active">
                <div class="slide-container">
                    <img src="../img/misionn.png" class="slide-img-fullscreen" alt="Imagen misión">
                    <div class="slide-overlay">
                        <div class="slide-content animate">
                            <h2 class="fw-bold text-gradient mb-4">Misión</h2>
                            <p class="fs-5 text-white px-4">
                                Ofrecer tecnología de calidad, innovadora y accesible, brindando una experiencia de compra confiable, cercana y eficiente para todas las personas.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide Visión -->
            <div class="carousel-item">
                <div class="slide-container">
                    <img src="../img/visionn.png" class="slide-img-fullscreen" alt="Imagen visión">
                    <div class="slide-overlay">
                        <div class="slide-content animate">
                            <h2 class="fw-bold text-gradient mb-4">Visión</h2>
                            <p class="fs-5 text-white px-4">
                                Ser la empresa referente en soluciones tecnológicas en Chile, reconocida por su excelencia en atención, confianza y aporte al desarrollo digital del país.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide Valores -->
            <div class="carousel-item">
                <div class="slide-container">
                    <img src="../img/valor.png" class="slide-img-fullscreen" alt="Imagen valores">
                    <div class="slide-overlay">
                        <div class="slide-content animate">
                            <h2 class="fw-bold text-gradient mb-4">Valores</h2>
                            <ul class="valores-lista fs-5 list-unstyled text-white">
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
            </div>

        </div>

        <!-- Navegación -->
        <button class="carousel-control-prev" type="button" data-bs-target="#empresaCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon rounded-circle"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#empresaCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon rounded-circle"></span>
        </button>

        <!-- Indicadores -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#empresaCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#empresaCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#empresaCarousel" data-bs-slide-to="2"></button>
        </div>
    </div>
</section>
</asp:Content>


