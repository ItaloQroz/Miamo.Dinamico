using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.DTO
{
    public class ProdutoDTO
    {
        public int IdProduto { get; set; }
        public string NomeProduto { get; set; }
        public string TamanhoProduto { get; set; }
        public double PrecoProduto { get; set; }
        public string CorProduto { get; set; }
        public string UrlImagemProduto { get; set; }
        public string CategoriaProduto { get; set; }

        //relacionamento
        public string FKCategoriaProduto { get; set; }

    }
}
