using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library_Management
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bscit_Click(object sender, EventArgs e)
        {
            Response.Redirect("selectSemesterIT.aspx");
        }

        protected void bsccs_Click(object sender, EventArgs e)
        {
            Response.Redirect("selectSemesterCS.aspx");

        }
    }
}