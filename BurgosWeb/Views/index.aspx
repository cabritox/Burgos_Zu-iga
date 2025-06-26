<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BurgosWeb.Views.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class ="introduccion"> 
         <h2>¿Quienes Somos?</h2>
         <p>Una empresa que busca en ser lider en la venta de prodcutos tecnologicos por todo el pais</p>
    </section>

    <div>
        <h2>Todos los productos:</h2>
    </div>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td rowspan="3">
                    <asp:GridView ID="gvInventario" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered custom-grid"  Height="250px" Width="827px">
                        <Columns>

                            <asp:TemplateField HeaderText="Imagen">
                                <ItemTemplate>
                                    <asp:Image ID="imgProducto" runat="server" ImageUrl='<%# Eval("UrlImagen") %>' Width="60px" Height="60px"
                                        AlternateText='<%# Eval("Nombre") %>' Style="border-radius: 8px; object-fit: cover;" />
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="Codigo" HeaderText="Código" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" />
                            <asp:BoundField DataField="Stock" HeaderText="Stock" />
                        </Columns>
                    </asp:GridView>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblAlerta" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>


</asp:Content>
