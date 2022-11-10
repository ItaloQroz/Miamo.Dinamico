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
                conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=MiamoDB2;Integrated Security=True");
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
