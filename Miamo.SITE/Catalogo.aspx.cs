using Miamo.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Miamo.SITE
{
    public partial class Catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idCategoria = Convert.ToInt32(Request.QueryString["id"]);

            ProdutoBLL objProdutoBLL = new ProdutoBLL();
            CategoriaBLL objCategoriaBLL = new CategoriaBLL();
            string nomeCategoria = objCategoriaBLL.SelecionarCategoria(idCategoria).NomeCategoria;

            if(idCategoria != 0) 
            { 
                rptProdutos.DataSource = objProdutoBLL.FiltrarProduto(idCategoria);
                lblTitulo.Text = nomeCategoria;
            }
            else
            {
                rptProdutos.DataSource = objProdutoBLL.FiltrarProduto();
                lblTitulo.Text = "Catálogo";
            }
            rptProdutos.DataBind();

        }
    }
}