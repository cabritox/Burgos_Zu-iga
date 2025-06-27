<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="venta.aspx.cs" Inherits="BurgosWeb.Views.venta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <section class="container text-center mt-4">
            <div class="formulario-ventas mx-auto shadow-lg">
                <h2 class="mb-4 fw-bold text-gradient text-center">
                    <span style="font-size:2.2rem;vertical-align:middle;">&#128722;</span> 
                    Venta de productos:
                </h2>

                <div class="row justify-content-center mb-2">
                    <div class="col">
                        <asp:TextBox ID="txtCodigo" runat="server"
                            CssClass="form-control mb-2 input-venta"
                            placeholder="Código"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtCantidad" runat="server"
                            CssClass="form-control mb-2 input-venta"
                            placeholder="Cantidad"></asp:TextBox>
                    </div>
                </div>
                <div class="row justify-content-center align-items-center mb-2">
                    <div class="col-auto">
                        <asp:Button ID="btnCompra" runat="server"
                            Text="Comprar"
                            CssClass="btn btn-primary btn-lg px-4 rounded-pill shadow-sm btn-compra"
                            OnClick="btnCompra_Click" />
                    </div>
                    <div class="col-auto total-pagar">
                        <asp:Label ID="Label4" runat="server" Text="Total a pagar: "></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="$"></asp:Label>
                        <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
                    </div>
                </div>
                <asp:Label ID="lblAlerta" runat="server" style="color: #9ffafe"></asp:Label>
            </div>

            <div class="bloque-tabla-productos">
                <h2 class="fw-bold text-gradient text-center mb-4">Todos los productos:</h2>
                <asp:GridView ID="gvInventario" runat="server"
                    AutoGenerateColumns="False"
                    CssClass="table modern-table"
                    Width="100%">
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Código" ItemStyle-Width="110px" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="400px" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" ItemStyle-Width="150px" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" ItemStyle-Width="120px" />
                    </Columns>
                </asp:GridView>
            </div>

        </section>
    </form>

</asp:Content>
