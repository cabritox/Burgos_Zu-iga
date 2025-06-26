using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BurgosWeb.Model;

namespace BurgosWeb.Views
{
    public partial class busqueda : System.Web.UI.Page
    {
        Gestion obj = new Gestion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try {
                int codigo = 0;
                List<Producto> productos = new List<Producto>();
                if (txtCodigo.Text.Length > 0) {
                    codigo = Convert.ToInt32(txtCodigo.Text);
                    Producto p = obj.BuscarProducto(codigo);
                    if (p != null)
                    {
                        productos.Add(p);
                        gvProductos.DataSource = productos;
                        gvProductos.DataBind();
                        lblRespuesta.Text = "Producto encontrado";
                    }
                    else {
                        lblRespuesta.Text = "No se encontro ningun producto con este codigo";
                        gvProductos.DataSource = null;
                        gvProductos.DataBind();
                    }
                }
                else
                {
                    lblRespuesta.Text = "No se pueden realizar busquedas con el campo en blanco";
                    gvProductos.DataSource = null;
                    gvProductos.DataBind();
                }
            
            
            }catch (FormatException ex)
            {
                lblRespuesta.Text = "Ingrese el dato correctamente";
            }
        }
    }
}