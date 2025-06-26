using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BurgosWeb.Model
{
    public class Conexion
    {
        private string connectionString;

       

        public Conexion()
        {
            connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Cakri\\OneDrive\\Escritorio\\Burgos_Zuñiga\\BurgosWeb\\BurgosWeb\\App_Data\\Prueba.mdf;Integrated Security=True";
        }

        public SqlConnection GetConexion() {

            return new SqlConnection(connectionString);
        }
    }
}