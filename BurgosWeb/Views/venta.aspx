<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="venta.aspx.cs" Inherits="BurgosWeb.Views.venta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       .auto-style13 {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 0.5rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            padding: 2rem;
            border-collapse: separate;
            border-spacing: 0.5rem;
       }

       .auto-style1,
       .auto-style2,
       .auto-style3,
       .auto-style4,
       .auto-style5,
       .auto-style6,
       .auto-style7,
       .auto-style8,
       .auto-style9,
       .auto-style10,
       .auto-style11,
       .auto-style12 {
            padding: 0.5rem;
            vertical-align: middle;
       }

       .auto-style12 {
            margin-top: 1rem;
            text-align: center;
       }

       #lblAlerta {
            display: inline-block;
            color: #842029;
            background-color: #f8d7da;
            padding: 0.75rem 1.25rem;
            border: 1px solid #f5c2c7;
            border-radius: 0.375rem;
            font-weight: 500;
       }
       h2 {
            color: #0d6efd;
            text-align: center;
            margin-bottom: 1.5rem;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 36px">
        <h2>Venta de productos:</h2>
    </div>
    <div>

        <table class="auto-style13">
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="Label2" runat="server" Text="Codigo:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCodigo" runat="server" Width="195px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Cantidad a llevar:"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCantidad" runat="server" Width="188px" OnTextChanged="txtCantidad_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Total a pagar: "></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="$"></asp:Label>
                    <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnCompra" runat="server" Text="Comprar" Width="233px" OnClick="btnCompra_Click" />
                </td>
                <td class="auto-style7">
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </div>
    <div class="auto-style12">
        
        <asp:Label ID="lblAlerta" runat="server"></asp:Label>
        
    </div>

</asp:Content>
