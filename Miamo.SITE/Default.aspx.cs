using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Miamo.SITE
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindImageRepeater();
            }


        }

        private void BindImageRepeater()
        {
            //string cs = ConfigurationManager.ConnectionStrings["MiamoConnectionString"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(cs))
            //{
            //    SqlCommand cmd = new SqlCommand("SELECT [NomeIMG],[ExtensaoImg] FROM ImgCarrousel", con);
            //    con.Open();
            //    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            //    {
            //        DataTable dt = new DataTable();
            //        sda.Fill(dt);
            //        rptrImages.DataSource = dt;
            //        rptrImages.DataBind();

            //    }

            //}
        }

        //protected string GetActiveClass(int ItemIndex)
        //{
        //    if (ItemIndex == 0)
        //    {
        //        return "active";
        //    }
        //    else
        //    {
        //        return "";
        //    }
        //}
    }
}