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

            if(idCategoria != 0) 
            { 
                rptProdutos.DataSource = objProdutoBLL.FiltrarProduto(idCategoria);
            }
            else
            {
                rptProdutos.DataSource = objProdutoBLL.FiltrarProduto();
            }
            rptProdutos.DataBind();

        }
    }
}