using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace E_Library_Management
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("") || Session["role"].Equals("user"))
                {


                    Response.Redirect("adminlogin.aspx");
                }
            }
            catch (NullReferenceException ex)
            {

                Response.Redirect("adminlogin.aspx");
            }
            GridView1.DataBind();

        }

        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberDataById();
        }
        //active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            memberUpdateStatusbyId("Active");
         
        }

        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            memberUpdateStatusbyId("Pending");

        }
        //deactive buttton
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            memberUpdateStatusbyId("Deactive");
        }

        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberById();
        }


        //user defined functions
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


            return false;
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
        }
        void deleteMemberById()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "'", con);




                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member DELETED successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {


                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }


        void memberUpdateStatusbyId(string status)
        {
            if(checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("update member_master_tbl set account_status='" + status + "' where member_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member status updated');</script>");
                    GridView1.DataBind();
                    getMemberDataById();
                    Session["status"]=status;
                   
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
            
        }


        void getMemberDataById()

        {
            if(checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            TextBox2.Text = dr.GetValue(0).ToString();
                            TextBox3.Text = dr.GetValue(10).ToString();
                            TextBox4.Text = dr.GetValue(1).ToString();
                            TextBox5.Text = dr.GetValue(2).ToString();
                            TextBox6.Text = dr.GetValue(3).ToString();
                            TextBox7.Text = dr.GetValue(4).ToString();
                            TextBox8.Text = dr.GetValue(5).ToString();
                            TextBox9.Text = dr.GetValue(6).ToString();
                            TextBox10.Text = dr.GetValue(7).ToString();

                        }

                    }
                    else
                    {
                        Response.Write("<script>alert('invalid user or password');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
            
        }

       
    }
}