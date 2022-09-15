using Miamo.DAL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.BLL
{
    public class GeneroBLL
    {
        CategoriaDAL objDAL = new CategoriaDAL();

        public List<CategoriaDTO> ListarGenero()
        {
            return objDAL.Listar();
        }

        public CategoriaDTO SelecionarGenero(int id)
        {
            return objDAL.Selecionar(id);
        }

        public void CadastraGenero(CategoriaDTO objCad)
        {
            objDAL.Cadastrar(objCad);
        }

        public void EditarGenero(CategoriaDTO objEdita)
        {
            objDAL.Editar(objEdita);
        }

        public void ExcluirGenero(int objExclui)
        {
            objDAL.Excluir(objExclui);
        }

    }
}
