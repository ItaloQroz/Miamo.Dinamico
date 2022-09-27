using Miamo.BLL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Miamo.UI.Pages
{
    public partial class GerenciarCategoria : System.Web.UI.Page
    {
        CategoriaDTO objModelo = new CategoriaDTO();
        CategoriaBLL objBLL = new CategoriaBLL();

        public void PopularGV()
        {
            gv1.DataSource = objBLL.ListarCategoria();
            gv1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopularGV();
                lblMessage.Text = String.Empty;
            }
        }

        protected void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {
                objModelo.NomeCategoria= (gv1.FooterRow.FindControl("txtNomeCategoriaFooter") as TextBox).Text.Trim();


                objBLL.CadastraCategoria(objModelo);
                PopularGV();
                (gv1.FooterRow.FindControl("txtNomeCategoriaFooter") as TextBox).Focus();
                lblMessage.Text = "Categoria " + objModelo.NomeCategoria + " cadastrada com Sucesso !!";
            }
        }

        protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModelo.NomeCategoria = (gv1.Rows[e.RowIndex].FindControl("txtNomeCategoria") as TextBox).Text.Trim();
            objModelo.IdCategoria = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
            objBLL.EditarCategoria(objModelo);
            gv1.EditIndex = -1;
            PopularGV();
            lblMessage.Text = "Categoria " + objModelo.NomeCategoria + " editado com Sucesso !!";

        }

        protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objModelo.IdCategoria = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
            objBLL.ExcluirCategoria(objModelo.IdCategoria);
            PopularGV();
            lblMessage.Text = "Categoria " + objModelo.NomeCategoria + " eliminado com Sucesso !!";
        }

        protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv1.EditIndex = e.NewEditIndex;
            PopularGV();
        }


        protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv1.EditIndex = -1;
            PopularGV();
        }

    }
}