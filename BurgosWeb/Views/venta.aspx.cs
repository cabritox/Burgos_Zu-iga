using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using BurgosWeb.Model;

namespace BurgosWeb.Views
{
    public partial class venta : System.Web.UI.Page
    {
        Gestion obj = new Gestion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCompra_Click(object sender, EventArgs e)
        {
            try {
                int codigo = 0;
                int cantidad = 0;
                int precio = 0;
                int stock = 0;
                if (txtCodigo.Text.Length > 0 || txtCantidad.Text.Length > 0)
                {

                    codigo = Convert.ToInt32(txtCodigo.Text);
                    cantidad = Convert.ToInt32(txtCantidad.Text);
                }
                else
                {
                    lblAlerta.Text = "No se pueden dejar campos en blanco";
                    return;
                }
                Producto p = obj.BuscarProducto(codigo);

                if (p != null)
                {
                    precio = p.Precio;
                    int totalPorPagar = precio * cantidad;
                    stock = p.Stock;
                    int nuevoStock = stock - cantidad;
                    if (nuevoStock >= 0 && obj.CompraRealizada(nuevoStock, codigo))
                    {
                        lblRespuesta.Text = totalPorPagar.ToString();
                        lblAlerta.Text = "Compra realizada correctamente por un valor de: $"+ totalPorPagar.ToString();
                    }
                    else {
                        lblAlerta.Text = "No se pudo realizar la compra debido a stock insuficiente";
                    }
                }
                else {
                    lblAlerta.Text = "No se ha encontrado ningun producto con ese codigo";
                }          
            }catch(FormatException ex)
            {
                lblAlerta.Text = "Rellene todos los campos antes de pulsar comprar";
            }
        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
        }
    }

}