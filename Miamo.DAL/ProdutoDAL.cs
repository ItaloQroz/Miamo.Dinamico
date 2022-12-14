using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.DAL
{
    public class ProdutoDAL : Conexao
    {
        //inserir
        public void Cadastrar(ProdutoDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("INSERT INTO Produto (NomeProduto,TamanhoProduto,PrecoProduto,CorProduto,UrlImagemProduto,FKCategoriaProduto) VALUES (@v1,@v2,@v3,@v4,@v5,@v6)", conn);
                cmd.Parameters.AddWithValue("@v1", objCad.NomeProduto);
                cmd.Parameters.AddWithValue("@v2", objCad.TamanhoProduto);
                cmd.Parameters.AddWithValue("@v3", objCad.PrecoProduto);
                cmd.Parameters.AddWithValue("@v4", objCad.CorProduto);
                cmd.Parameters.AddWithValue("@v5", objCad.UrlImagemProduto);
                cmd.Parameters.AddWithValue("@v6", objCad.FKCategoriaProduto);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //listar
        public List<ProdutoListDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdProduto,NomeProduto,TamanhoProduto,PrecoProduto,CorProduto,UrlImagemProduto,NomeCategoria FROM Produto JOIN Categoria ON FKCategoriaProduto = IdCategoria", conn);
                dr = cmd.ExecuteReader();
                List<ProdutoListDTO> Lista = new List<ProdutoListDTO>();
                while (dr.Read())
                {
                    ProdutoListDTO obj = new ProdutoListDTO();
                    obj.IdProduto = Convert.ToInt32(dr["IdProduto"]);
                    obj.NomeProduto = dr["NomeProduto"].ToString();
                    obj.TamanhoProduto = dr["TamanhoProduto"].ToString();
                    obj.PrecoProduto = dr["PrecoProduto"].ToString();
                    obj.CorProduto = dr["CorProduto"].ToString();
                    obj.UrlImagemProduto = dr["UrlImagemProduto"].ToString();
                    obj.CategoriaProduto = dr["NomeCategoria"].ToString();

                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Listar Produto!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }

        //editar
        public void Editar(ProdutoDTO objEdita)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("UPDATE Produto SET NomeProduto=@v1,TamanhoProduto=@v2,PrecoProduto=@v3,CorProduto=@v4,UrlImagemProduto=@v5,FKCategoriaProduto=@v6 WHERE IdProduto=@v7", conn);
                cmd.Parameters.AddWithValue("@v1", objEdita.NomeProduto);
                cmd.Parameters.AddWithValue("@v2", objEdita.TamanhoProduto);
                cmd.Parameters.AddWithValue("@v3", objEdita.PrecoProduto);
                cmd.Parameters.AddWithValue("@v4", objEdita.CorProduto);
                cmd.Parameters.AddWithValue("@v5", objEdita.UrlImagemProduto);
                cmd.Parameters.AddWithValue("@v6", objEdita.FKCategoriaProduto);
                cmd.Parameters.AddWithValue("@v7", objEdita.IdProduto);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao editar o registro!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }

        //excluir
        public void Excluir(int objExclui)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("DELETE FROM Produto WHERE IdProduto=@v6", conn);
                cmd.Parameters.AddWithValue("@v6", objExclui);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir o registro!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }

        //filtrar
        public List<FiltroProdutoDTO> Filtrar()
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdProduto,NomeProduto,TamanhoProduto,PrecoProduto,CorProduto,UrlImagemProduto,NomeCategoria FROM Produto JOIN Categoria ON FKCategoriaProduto = IdCategoria", conn);
                dr = cmd.ExecuteReader();
                List<FiltroProdutoDTO> Lista = new List<FiltroProdutoDTO>();
                while (dr.Read())
                {
                    FiltroProdutoDTO obj = new FiltroProdutoDTO();
                    obj.IdProduto = Convert.ToInt32(dr["IdProduto"]);
                    obj.NomeProduto = dr["NomeProduto"].ToString();
                    obj.TamanhoProduto = dr["TamanhoProduto"].ToString();
                    obj.PrecoProduto = dr["PrecoProduto"].ToString();
                    obj.CorProduto = dr["CorProduto"].ToString();
                    obj.UrlImagemProduto = dr["UrlImagemProduto"].ToString();
                    obj.CategoriaProduto = dr["NomeCategoria"].ToString();

                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar Produto!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }

        public List<FiltroProdutoDTO> Filtrar(int IdCategoria)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdProduto,NomeProduto,TamanhoProduto,PrecoProduto,CorProduto,UrlImagemProduto,NomeCategoria FROM Produto JOIN Categoria ON FKCategoriaProduto =IdCategoria WHERE FKCategoriaProduto = @v1", conn);
                cmd.Parameters.AddWithValue("@v1", IdCategoria);

                dr = cmd.ExecuteReader();
                List<FiltroProdutoDTO> Lista = new List<FiltroProdutoDTO>();
                while (dr.Read())
                {
                    FiltroProdutoDTO obj = new FiltroProdutoDTO();
                    obj.IdProduto = Convert.ToInt32(dr["IdProduto"]);
                    obj.NomeProduto = dr["NomeProduto"].ToString();
                    obj.TamanhoProduto = dr["TamanhoProduto"].ToString();
                    obj.PrecoProduto = dr["PrecoProduto"].ToString();
                    obj.CorProduto = dr["CorProduto"].ToString();
                    obj.UrlImagemProduto = dr["UrlImagemProduto"].ToString();
                    obj.CategoriaProduto = dr["NomeCategoria"].ToString();

                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar Produto!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }


        public ProdutoListDTO Selecionar(int idProduto)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdProduto,NomeProduto,TamanhoProduto,PrecoProduto,CorProduto,UrlImagemProduto,NomeCategoria FROM Produto JOIN Categoria ON FKCategoriaProduto = IdCategoria WHERE IdProduto=" + idProduto, conn);
                dr = cmd.ExecuteReader();
                ProdutoListDTO obj = new ProdutoListDTO();
                if (dr.Read())
                {
                    obj.IdProduto = Convert.ToInt32(dr["IdProduto"]);
                    obj.NomeProduto = dr["NomeProduto"].ToString();
                    obj.TamanhoProduto = dr["TamanhoProduto"].ToString();
                    obj.PrecoProduto = dr["PrecoProduto"].ToString();
                    obj.CorProduto = dr["CorProduto"].ToString();
                    obj.UrlImagemProduto = dr["UrlImagemProduto"].ToString();
                    obj.CategoriaProduto = dr["NomeProduto"].ToString();
                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao selecionar Produto!! " + ex.Message);
            }
            finally
            {
                Desconectar();
            }

        }


    }
}