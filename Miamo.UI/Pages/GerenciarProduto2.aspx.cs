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
    //public partial class GerenciarProduto : System.Web.UI.Page
    //{
    //    ProdutoDTO objModelo = new ProdutoDTO();
    //    ProdutoBLL objBLL = new ProdutoBLL();
    //    public void PopularGV()
    //    {
    //        gv1.DataSource = objBLL.ListarProduto();
    //        gv1.DataBind();
    //    }
    //    protected void Page_Load(object sender, EventArgs e)
    //    {

    //        if (!IsPostBack)
    //        {
    //            PopularGV();
    //            lblMessage.Text = string.Empty;
    //        }
    //    }
    //    //cadastrar (add)
    //    protected void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
    //    {
    //        if (e.CommandName.Equals("Adicionar"))
    //        {
    //            objModelo.NomeProduto = (gv1.FooterRow.FindControl("txtNomeProdutoFooter") as TextBox).Text.Trim();
    //            objModelo.TamanhoProduto = (gv1.FooterRow.FindControl("txtTamanhoProdutoFooter") as TextBox).Text.Trim();
    //            objModelo.PrecoProduto = Convert.ToInt32(gv1.FooterRow.FindControl("txtPrecoProdutoFooter") as TextBox);
    //            //saving image
    //            if ((gv1.FooterRow.FindControl("fUp1") as FileUpload).HasFile)
    //            {
    //                var str = (gv1.FooterRow.FindControl("fUp1") as FileUpload).FileName.Trim();
    //                (gv1.FooterRow.FindControl("fUp1") as FileUpload).PostedFile.SaveAs(Server.MapPath("~/Img" + "/" + str));
    //                string CaminhoImg = "~/Img" + "/" + str.ToString();
    //                objModelo.UrlImagemProduto = CaminhoImg;
    //            }
    //            objModelo.FKCategoriaProduto = (gv1.FooterRow.FindControl("ddl1") as DropDownList).Text.Trim();
    //            //chamando o metodo
    //            objBLL.CadastraProduto(objModelo);
    //            PopularGV();
    //            (gv1.FooterRow.FindControl("txtNomeProdutoFooter") as TextBox).Focus();
    //            lblMessage.Text = "Produto" + objModelo.NomeProduto + " cadastrado com sucesso!!";
    //        }
    //    }
    //    //edit
    //    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    //    {
    //        gv1.EditIndex = e.NewEditIndex;
    //        PopularGV();
    //    }
    //    //cancel
    //    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //    {
    //        gv1.EditIndex = -1;
    //        PopularGV();
    //    }
    //    //save
    //    protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //    {
    //        objModelo.NomeProduto = (gv1.Rows[e.RowIndex].FindControl("txtNomeProduto") as TextBox).Text.Trim();
    //        objModelo.TamanhoProduto = (gv1.Rows[e.RowIndex].FindControl("txtTamanhoProduto") as TextBox).Text.Trim();
    //        objModelo.PrecoProduto = Convert.ToInt32(gv1.Rows[e.RowIndex].FindControl("txtPrecoProduto") as TextBox);
    //        //saving image
    //        if ((gv1.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).HasFile)
    //        {
    //            var str = (gv1.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).FileName.Trim();
    //            (gv1.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).PostedFile.SaveAs(Server.MapPath("~/Img" + "/" + str));
    //            string CaminhoImg = "~/Img" + "/" + str.ToString();
    //            objModelo.UrlImagemProduto = CaminhoImg;
    //        }
    //        objModelo.FKCategoriaProduto = (gv1.Rows[e.RowIndex].FindControl("ddl1") as DropDownList).Text.Trim();
    //        objModelo.IdProduto = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
    //        //chamando o metodo
    //        objBLL.EditarProduto(objModelo);
    //        gv1.EditIndex = -1;
    //        PopularGV();
    //        lblMessage.Text = "O Produto " + objModelo.NomeProduto + " foi editado com sucesso!!";
    //    }
    //    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //    {
    //        objModelo.IdProduto = Convert.ToInt32(gv1.DataKeys[e.RowIndex].Value.ToString());
    //        objBLL.ExcluirProduto(objModelo.IdProduto);
    //        PopularGV();
    //        (gv1.FooterRow.FindControl("txtNomeProdutoFooter") as TextBox).Focus();
    //        lblMessage.Text = "O Produto " + objModelo.NomeProduto + " foi eliminado com sucesso!!";
    //    }
    //    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //    {
    //        gv1.PageIndex = e.NewPageIndex;
    //        this.PopularGV();

    //    }
    //}
}