using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.DAL
{
    public class CategoriaDAL : Conexao
    {
        public List<CategoriaDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT * FROM GENERO ORDER BY NomeGenero", conn);
                dr = cmd.ExecuteReader();

                List<CategoriaDTO> lista = new List<CategoriaDTO>();

                while (dr.Read())
                {
                    lista.Add(new CategoriaDTO()
                    {
                        IdCategoria = Convert.ToInt32(dr["IdCategoria"]),
                        NomeCategoria = Convert.ToString(dr["NomeCategoria"])
                    });
                }

                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar Categoria!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        public CategoriaDTO Selecionar(int idGenero)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT * FROM GENERO WHERE IdGenero = @v1", conn);
                cmd.Parameters.AddWithValue("@v1", idGenero);
                dr = cmd.ExecuteReader();

                CategoriaDTO obj = new CategoriaDTO();

                if (dr.Read())
                {
                    obj.IdCategoria = Convert.ToInt32(dr["IdCategoria"]);
                    obj.NomeCategoria = Convert.ToString(dr["NomeCategoria"]);
                }

                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao selecionar Categoria!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }




        }

        public void Cadastrar(CategoriaDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("INSERT INTO Categoria (NomeCategoria) VALUES (@v1)", conn);
                cmd.Parameters.AddWithValue("@v1", objCad.NomeCategoria);


                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Cadastrar Categoria !! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }



        }


        public void Editar(CategoriaDTO objEdita)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("UPDATE Genero SET NomeCategoria=@v1 WHERE IdCategoria=@v2", conn);
                cmd.Parameters.AddWithValue("@v1", objEdita.NomeCategoria);
                cmd.Parameters.AddWithValue("@v2", objEdita.IdCategoria);

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Editar Categoria!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }

        public void Excluir(int objExclui)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("DELETE FROM Categoria WHERE IdCategoria=@v1", conn);
                cmd.Parameters.AddWithValue("@v1", objExclui);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Excluir Categoria !! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }



    }
}
