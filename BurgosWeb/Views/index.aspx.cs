using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BurgosWeb.Model;

namespace BurgosWeb.Views
{
    public partial class index : System.Web.UI.Page
    {
        Gestion obj = new Gestion();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Producto> productos = obj.ListadoProductos();
            if (productos != null && productos.Count > 0)
            {
                gvInventario.DataSource = productos;
                gvInventario.DataBind();
            }
            else {
                lblAlerta.Text = "Actualmente no hay productos para mostrar";
            }
        }
    }
}