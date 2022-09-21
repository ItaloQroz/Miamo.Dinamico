using Miamo.DAL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.BLL
{
    public class CategoriaBLL
    {
        CategoriaDAL objDAL = new CategoriaDAL();

        public List<CategoriaDTO> ListarCategoria()
        {
            return objDAL.Listar();
        }

        public CategoriaDTO SelecionarCategoria(int id)
        {
            return objDAL.Selecionar(id);
        }

        public void CadastraCategoria(CategoriaDTO objCad)
        {
            objDAL.Cadastrar(objCad);
        }

        public void EditarCategoria(CategoriaDTO objEdita)
        {
            objDAL.Editar(objEdita);
        }

        public void ExcluirCategoria(int objExclui)
        {
            objDAL.Excluir(objExclui);
        }

    }
}
