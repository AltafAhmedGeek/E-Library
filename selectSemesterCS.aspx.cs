using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library_Management
{
    public partial class selectSemesterCS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bscit_Click(object sender, EventArgs e)
        {
            Response.Redirect("CsSem1.aspx");
        }

        protected void bsccs_Click(object sender, EventArgs e)
        {
            Response.Redirect("CsSem2.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CsSem3.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CsSem4.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CsSem5.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CsSem6.aspx");

        }
    }
}