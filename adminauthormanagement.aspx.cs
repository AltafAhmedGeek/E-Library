using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library_Management
{
    public partial class adminauthormanagement : System.Web.UI.Page
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
        // add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author ID Already exists.');</script>");
            }
            else
            {
                addNewAuthor();
            }
        }
        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                updateauthor();
            }
            else
            {

                Response.Write("<script>alert('Author ID does not exists.');</script>");
            }
           
        }
        //delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                deleteauthor();
            }
            else
            {

                Response.Write("<script>alert('Author ID does not exists.');</script>");
            }
        }
        //go buttton
        protected void Button4_Click(object sender, EventArgs e)
        {
            selectAuthorById();
        }
        // usr defined function
       void  selectAuthorById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Author ID does not exist');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void deleteauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'", con);

           


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author DELETED successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void updateauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name=@author_name  WHERE author_id='"+TextBox1.Text.Trim()+"'", con);
               
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author updated successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
         void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl(author_id, author_name) VALUES(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
               

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "';", con);
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
        }
    }
}