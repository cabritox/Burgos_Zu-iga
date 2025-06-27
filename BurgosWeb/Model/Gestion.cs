using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BurgosWeb.Model
{
    public class Gestion
    {
        private Conexion conexion = new Conexion();
        public string error;

        public Gestion() { }

        public Producto BuscarProducto(int codigo) {

            Producto p = null;

            using (SqlConnection conn = conexion.GetConexion())
            {
                conn.Open();

                string query = "select * from producto where codigo = @codigo";

                using (SqlCommand cmd = new SqlCommand(query,conn))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            p = new Producto();

                            p.Codigo = dr.GetInt32(0);
                            p.Nombre = dr.GetString(1);
                            p.Precio = dr.GetInt32(2);
                            p.Stock = dr.GetInt32(3);
                        }

                        return p;
                    }
                }
            }
        }

        public bool CompraRealizada(int stock, int codigo) { 

            bool rs = false;

            try
            {
                using (SqlConnection conn = conexion.GetConexion())
                {
                    conn.Open();
                    string query = "update producto set stock = @stock where codigo = @codigo";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@codigo", codigo);
                        cmd.Parameters.AddWithValue("@stock", stock);

                        int filasAfectadas = cmd.ExecuteNonQuery();
                        
                        rs = filasAfectadas > 0;

                    }
                }
            }catch (SqlException ex)
            {
                this.error = ex.Message;
            }

            return rs;
        }

        public List<Producto> ListadoProductos()
        {
            List<Producto> lstProductos = new List<Producto>();

            try
            {
                using (SqlConnection conn = conexion.GetConexion())
                {
                    conn.Open();
                    string query = "select * from producto";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Producto p = new Producto();

                                p.Codigo = dr.GetInt32(0);
                                p.Nombre = dr.GetString(1);
                                p.Precio = dr.GetInt32(2);
                                p.Stock = dr.GetInt32(3);

                                lstProductos.Add(p);
                            }

                            return lstProductos;
                        }
                    }
                }
            }
            catch (SqlException ex) 
            {
                Console.WriteLine("Error al cargar productos desde la base de datos: ", ex.Message);
                this.error = "Error al cargar productos desde la base de datos.";
                return null;
            }     
        }
    }
}




