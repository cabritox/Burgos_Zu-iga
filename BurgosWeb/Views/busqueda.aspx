<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="busqueda.aspx.cs" Inherits="BurgosWeb.Views.busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table {
            max-width: 1000px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 0.5rem;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
            padding: 1.5rem;
            border-collapse: separate;
            border-spacing: 1rem;
        }
        .auto-style4, .auto-style5, .auto-style2, .auto-style1, .auto-style3 {
           padding: 0.5rem;
           vertical-align: middle;
        }

        .custom-grid {
            background-color: white;
            border-radius: 0.5rem;
            overflow: hidden;
            margin-top: 1rem;
            font-size: 0.95rem;
            min-height: 150px;
        }

        .custom-grid th {
            background-color: #e9ecef;
            color: #212529;
            font-weight: 600;
            text-align: center;
        }

        .custom-grid td {
            text-align: center;
            vertical-align: middle;
        }

        #lblRespuesta {
            display: inline-block;
            margin-top: 0.5rem;
            font-weight: 500;
            color: #0d6efd;
        }

        h2 {
            color: #0d6efd;
            text-align: center;
            margin-bottom: 1.5rem;
        } 
    .auto-style6 {
        vertical-align: middle;
        width: 154px;
        height: 51px;
    }
    .auto-style7 {
        vertical-align: middle;
        height: 51px;
    }
    .auto-style8 {
        vertical-align: middle;
        height: 21px;
    }
    .auto-style9 {
        vertical-align: middle;
        width: 154px;
        height: 21px;
    }
    .auto-style10 {
        vertical-align: middle;
        height: 51px;
        width: 182px;
    }
    .auto-style11 {
        vertical-align: middle;
        height: 21px;
        width: 182px;
    }
    .auto-style12 {
        vertical-align: middle;
        width: 182px;
    }
    .auto-style13 {
        vertical-align: middle;
        height: 51px;
        width: 55px;
    }
    .auto-style14 {
        vertical-align: middle;
        height: 21px;
        width: 55px;
    }
    .auto-style15 {
        vertical-align: middle;
        width: 55px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Busqueda de productos:</h2>
    </div>
    <div>

        <table style="width: 100%; height: 310px;">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCodigo" runat="server" Width="118px"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp; &nbsp;</td>
                <td class="auto-style7">
                </td>
                <td class="auto-style7">
                </td>
                <td class="auto-style7">
                </td>
                <td class="auto-style7">
                </td>
                <td class="auto-style7">
                </td>
                <td class="auto-style7">
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                </td>
                <td class="auto-style11">
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="122px" OnClick="btnBuscar_Click" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">
                </td>
                <td class="auto-style8">
                </td>
                <td class="auto-style8">
                </td>
                <td class="auto-style8">
                </td>
                <td class="auto-style8">
                </td>
                <td class="auto-style8">
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="lblRespuesta" runat="server"></asp:Label>
                </td>
                <td colspan="7">
                    <asp:GridView ID="gvProductos" runat="server" CssClass="table table-striped table-bordered custom-grid" ShowHeaderWhenEmpty="true" Height="219px" Width="762px">
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
