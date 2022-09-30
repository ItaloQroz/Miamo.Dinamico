using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Miamo.DTO
{
    public class ProdutoListDTO
    {
        public int IdProduto { get; set; }
        public string NomeProduto { get; set; }
        public string TamanhoProduto { get; set; }
        public string PrecoProduto { get; set; }
        public string CorProduto { get; set; }
        public string UrlImagemProduto { get; set; }
        public string CategoriaProduto { get; set; }

    }
}
