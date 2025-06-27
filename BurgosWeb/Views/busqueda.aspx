<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="busqueda.aspx.cs" Inherits="BurgosWeb.Views.busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="busqueda-productos shadow-lg mx-auto my-5">
            <h2 class="mb-4 fw-bold text-gradient text-center">  Búsqueda de productos</h2>
            <form autocomplete="off">
                <div class="d-flex flex-wrap gap-2 justify-content-center align-items-center mb-3">
                    <label for="txtCodigo" class="form-label fw-semibold mb-0 me-2">Código:</label>
                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control form-control-lg rounded-pill text-center input-codigo" placeholder="Ej: 1001"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-success btn-lg rounded-pill px-4 shadow-sm btn-buscar" OnClick="btnBuscar_Click" />
                </div>
            </form>
            <div class="text-center mb-3">
                <asp:Label ID="lblRespuesta" runat="server" CssClass="fw-bold estado-busqueda"></asp:Label>
            </div>
            <div class="table-responsive">
                <asp:GridView ID="gvProductos" runat="server"
                    CssClass="table table-hover modern-table"
                    ShowHeaderWhenEmpty="true"
                    Height="219px"
                    Width="100%">
                </asp:GridView>
            </div>
        </div>


</asp:Content>
