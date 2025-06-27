using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BurgosWeb.Model
{
    public class Producto
    {
        private int codigo;
        private string nombre;
        private int precio;
        private int stock;

        public int Codigo { get => codigo; set => codigo = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public int Precio { get => precio; set => precio = value; }
        public int Stock { get => stock; set => stock = value; }

        public Producto() { }

        public Producto(int codigo, string nombre, int precio, int stock)
        {
            this.codigo = codigo;
            this.nombre = nombre;
            this.precio = precio;
            this.stock = stock;
        }
    }


}