using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.DAL
{
    public class Conexao
    {
        //variaveis
        protected SqlConnection conn;
        protected SqlCommand cmd;
        protected SqlDataReader dr;

        //Conectar
        protected void Conectar()
        {
            try
            {
                conn = new SqlConnection("Server=tcp:miamo-moda-intima-v2.database.windows.net,1433;Initial Catalog=MiamoDB;Persist Security Info=False;User ID=administrador;Password=Admin@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                conn.Open();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }

        }

        //Desconectar
        protected void Desconectar()
        {
            try
            {
                conn.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }
    }
}
