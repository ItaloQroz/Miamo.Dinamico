using Miamo.DAL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.BLL
{
    public class ProdutoBLL
    {
        ProdutoDAL objBLL = new ProdutoDAL();

        //cadastrar
        public void CadastraProduto(ProdutoDTO objCad)
        {
            objBLL.Cadastrar(objCad);
        }

        //Listar
        public List<ProdutoListDTO> ListarProduto()
        {
            return objBLL.Listar();
        }

        //Filtrar
        public List<FiltroProdutoDTO> FiltrarProduto()
        {
            return objBLL.Filtrar();
        }

        public List<FiltroProdutoDTO> FiltrarProduto(int IdCategoria)
        {
            return objBLL.Filtrar(IdCategoria);
        }

        //editar
        public void EditarProduto(ProdutoDTO objEdita)
        {
            objBLL.Editar(objEdita);
        }

        //excluir
        public void ExcluirProduto(int objExclui)
        {
            objBLL.Excluir(objExclui);
        }

        public ProdutoListDTO SelecionarProduto(int idProduto)
        {
            return objBLL.Selecionar(idProduto);
        }

       
    }
}
