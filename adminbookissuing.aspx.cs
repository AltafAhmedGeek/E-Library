﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Library_Management
{
    public partial class adminbookissuing : System.Web.UI.Page
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
        //gridview data bound event
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //go button
        protected void Button3_Click(object sender, EventArgs e)
        {
            getNames();
        }
        //issue buttton
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (checkIfBookExist() && checkIfMemberExist())
            {
                if(checkIfBookAlreadyissued())
                {
                    Response.Write("<script>alert('Member already has this book');</script>");
                }
                else
                {
                    if(CheckAccountstatus().Equals("Active"))
                    {
                    issueBook();
                    }

                    else
                    {
                        //string status = CheckAccountstatus();
                        Response.Write("<script>alert('Member status is "+CheckAccountstatus()+"');</script>");
                    }
                    
                    
                   

                   

                }
            }
            else
            {
                Response.Write("<script>alert('Member ID or Book ID does not exist');</script>");
            }
        }

        //return issue
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {

                if (checkIfBookAlreadyissued())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('This Entry does not exist');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or Member ID');</script>");
            }
        }
        //user defined function

        string CheckAccountstatus()
        {

            string status="";

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select account_status from member_master_tbl where member_id = '"+TextBox2.Text+"';",con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                status = dr["account_status"].ToString();
            }
            return status;
           
        }
        void returnBook()

        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from book_issue_tbl WHERE book_id='" + TextBox1.Text.Trim() + "' AND member_id='" + TextBox2.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {

                    cmd = new SqlCommand("update book_master_tbl set current_stock = current_stock + 1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Book Returned Successfully');</script>");
                    GridView1.DataBind();

                    con.Close();

                }
                else
                {
                    Response.Write("<script>alert('Error - Invalid details');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }         
        bool checkIfBookAlreadyissued()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT *  FROM book_issue_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'AND book_id='" + TextBox1.Text.Trim()+"' ", con);
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
                return false;

            }


        }

        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_tbl(member_id, member_name,book_id,book_name,issue_date,due_date) VALUES(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox7.Text.Trim());


                cmd.ExecuteNonQuery();

                 cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock= current_stock-1 WHERE book_id='"+TextBox1.Text.Trim()+"'", con);

                cmd.ExecuteNonQuery();


                con.Close();
                Response.Write("<script>alert('Book issued successfully');</script>");
             
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT *  FROM member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
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
                return false;

            }


        }
        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT *  FROM book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "' AND current_stock >0;", con);
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
            return false;

            }


        }
        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name FROM book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox5.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Book ID does not exist');</script>");
                }
                 cmd = new SqlCommand("SELECT full_name FROM member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "';", con);
                 da = new SqlDataAdapter(cmd);
                 dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Member ID does not exist');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}