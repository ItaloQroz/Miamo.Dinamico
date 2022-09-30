using Miamo.BLL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Miamo.SITE
{
    public partial class Produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idProduto = Convert.ToInt32(Request.QueryString["id"]);

            ProdutoBLL objProdutoBLL = new ProdutoBLL();

            ProdutoListDTO produtoDTO = objProdutoBLL.SelecionarProduto(idProduto);

            lblNome.Text = produtoDTO.NomeProduto;
            lblTamanho.Text = produtoDTO.TamanhoProduto;
            lblPreco.Text = produtoDTO.PrecoProduto;
            lblCor.Text = produtoDTO.CorProduto;
            lblCategoriaProduto.Text = produtoDTO.CategoriaProduto;
            lblDescricao.Text = "Mussum Ipsum, cacilds vidis litro abertis. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.Detraxit consequat et quo num tendi nada.Per aumento de cachacis, eu reclamis.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!";
            imgProduto.ImageUrl = produtoDTO.UrlImagemProduto.Replace("~", ".");

        }
    }
}