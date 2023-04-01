using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library_Management
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               

                if (Session["role"].Equals(""))
                { 
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // user signup link button

                    LinkButton3.Visible = false; // user log out link button
                    LinkButton7.Visible = false; // hello user link button

                    LinkButton6.Visible = true; //admin login link button
                    LinkButton11.Visible = false; // admin author m link button
                    LinkButton12.Visible = false; // admin publisher m link button
                    LinkButton8.Visible = false; // admin book inventory link button
                    LinkButton9.Visible = false; // admin book issue link button
                    LinkButton10.Visible = false; // admin member management link button
                    Response.CacheControl = "no-cache";

                }
            else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // user signup link button

                    LinkButton3.Visible = true; // user log out link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text ="Hello "+Session["fullname"].ToString();

                    LinkButton6.Visible = true; //admin login link button
                    LinkButton11.Visible = false; // admin author m link button
                    LinkButton12.Visible = false; // admin publisher m link button
                    LinkButton8.Visible = false; // admin book inventory link button
                    LinkButton9.Visible = false; // admin book issue link button
                    LinkButton10.Visible = false; // admin member management link button
                }
                else if(Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // user signup link button

                    LinkButton3.Visible = true; //  log out link button
                    LinkButton7.Visible = true; // hello admin link button
                    LinkButton7.Text ="Hello Admin";

                    LinkButton6.Visible = false; //admin login link button
                    LinkButton11.Visible = true; // admin author m link button
                    LinkButton12.Visible = true; // admin publisher m link button
                    LinkButton8.Visible = true; // admin book inventory link button
                    LinkButton9.Visible = true; // admin book issue link button
                    LinkButton10.Visible = true; // admin member management link button
                }
                
            }
            catch(Exception ex)
            {
                
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }
        

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }


        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // user signup link button

            LinkButton3.Visible = false; // user log out link button
            LinkButton7.Visible = false; // hello user link button

            LinkButton6.Visible = true; //admin login link button
            LinkButton11.Visible = false; // admin author m link button
            LinkButton12.Visible = false; // admin publisher m link button
            LinkButton8.Visible = false; // admin book inventory link button
            LinkButton9.Visible = false; // admin book issue link button
            LinkButton10.Visible = false; // admin member management link button
            Response.Redirect("homepage.aspx");
        }

        //profile button
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("user"))
            {

                Response.Redirect("userprofile.aspx");
            }
            
                if (Session["role"].Equals("admin"))
                {
                    
                }
            }
            catch (NullReferenceException ex)
            {
                Response.Redirect("adminlogin.aspx");
            }
        }
    }
}