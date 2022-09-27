using Miamo.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Miamo.SITE
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoriaBLL objBLL = new CategoriaBLL();

            rptMenuCategoria.DataSource = objBLL.ListarCategoria();
            rptMenuCategoria.DataBind();

        }
    }
}