using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Miamo.BLL;//
using Miamo.DTO;//

namespace Miamo.UI.Pages
{
    public partial class ManagerAlbum : System.Web.UI.Page
    {
        AlbumDTO objModelo = new AlbumDTO();
        AlbumBLL objBLL = new AlbumBLL();

        public void PopularGV()
        {
            gv2.DataSource = objBLL.ListarAlbum();
            gv2.DataBind();
            lblMessage.Text = string.Empty;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopularGV();
            }

        }


        //cadastrar (add)
        protected void gv2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Adicionar"))
            {
                objModelo.NomeAlbum = (gv2.FooterRow.FindControl("txtNomeAlbumFooter") as TextBox).Text.Trim();
                objModelo.ArtistaAlbum = (gv2.FooterRow.FindControl("txtArtistaAlbumFooter") as TextBox).Text.Trim();
                objModelo.SeloAlbum = (gv2.FooterRow.FindControl("txtSeloAlbumFooter") as TextBox).Text.Trim();

                //saving image
                if ((gv2.FooterRow.FindControl("fUp1") as FileUpload).HasFile)
                {
                    var str = (gv2.FooterRow.FindControl("fUp1") as FileUpload).FileName.Trim();

                    (gv2.FooterRow.FindControl("fUp1") as FileUpload).PostedFile.SaveAs(Server.MapPath("~/Img" + "/" + str));
                    string CaminhoImg = "~/Img" + "/" + str.ToString();
                    objModelo.UrlImagemAlbum = CaminhoImg;

                }
                objModelo.FKGeneroAlbum = (gv2.FooterRow.FindControl("ddl1") as DropDownList).Text.Trim();
                //chamando o metodo
                objBLL.CadastraAlbum(objModelo);
                PopularGV();
                (gv2.FooterRow.FindControl("txtNomeAlbumFooter") as TextBox).Focus();
                lblMessage.Text = "Álbum " + objModelo.NomeAlbum + " cadastrado com sucesso!!";


            }

        }

        //edit
        protected void gv2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv2.EditIndex = e.NewEditIndex;
            PopularGV();
        }

        //cancel
        protected void gv2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv2.EditIndex = -1;
            PopularGV();
        }

        //save
        protected void gv2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModelo.NomeAlbum = (gv2.Rows[e.RowIndex].FindControl("txtNomeAlbum") as TextBox).Text.Trim();
            objModelo.ArtistaAlbum = (gv2.Rows[e.RowIndex].FindControl("txtArtistaAlbum") as TextBox).Text.Trim();
            objModelo.SeloAlbum = (gv2.Rows[e.RowIndex].FindControl("txtSeloAlbum") as TextBox).Text.Trim();

            //saving image
            if ((gv2.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).HasFile)
            {
                var str = (gv2.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).FileName.Trim();

                (gv2.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).PostedFile.SaveAs(Server.MapPath("~/Img" + "/" + str));
                string CaminhoImg = "~/Img" + "/" + str.ToString();
                objModelo.UrlImagemAlbum = CaminhoImg;

            }


            objModelo.FKGeneroAlbum = (gv2.Rows[e.RowIndex].FindControl("ddl1") as DropDownList).Text.Trim();

            objModelo.IdAlbum = Convert.ToInt32(gv2.DataKeys[e.RowIndex].Value.ToString());

            //chamando o metodo
            objBLL.EditarAlbum(objModelo);

            gv2.EditIndex = -1;
            PopularGV();
            lblMessage.Text = "O album " + objModelo.NomeAlbum + " foi editado com sucesso!!";
        }

        protected void gv2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objModelo.IdAlbum = Convert.ToInt32(gv2.DataKeys[e.RowIndex].Value.ToString());
            objBLL.ExcluirAlbum(objModelo.IdAlbum);
            PopularGV();
            (gv2.FooterRow.FindControl("txtNomeAlbumFooter") as TextBox).Focus();

            lblMessage.Text = "O album " + objModelo.NomeAlbum + " foi eliminado com sucesso!!";
        }

        protected void gv2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv2.PageIndex = e.NewPageIndex;
            this.PopularGV();
        }
    }
}