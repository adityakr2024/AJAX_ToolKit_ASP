using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace AJAXintro
{
    public partial class ConfirmButtonExtenderCtrl : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCSemp"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            Label1.Text = "You click on button with ConfirmButtonExtenderControl.";
            Label1.Visible = true;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tblEmp where id = @id";
            SqlDataAdapter adapter = new SqlDataAdapter(query, con);
            adapter.SelectCommand.Parameters.AddWithValue("@id", txtBoxSearchbyId.Text);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            
            if(dt.Rows.Count > 0 )
            {
                txtBoxName.Text = dt.Rows[0]["name"].ToString();
                txtBoxDesignation.Text = dt.Rows[0]["designation"].ToString();
                Label2.Text = "Record found";
                Label2.ForeColor = Color.Green;
                Label2.Visible = true;  
            }
            else
            {
                txtBoxName.Text = "";
                txtBoxDesignation.Text = "";
                Label2.Text = "Record Not Found";
                Label2.ForeColor = Color.Red;
                Label2.Visible = true;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "update tblEmp set name = @name, designation = @designation where id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", txtBoxSearchbyId.Text);
            cmd.Parameters.AddWithValue("@name", txtBoxName.Text.Trim());
            cmd.Parameters.AddWithValue("@designation", txtBoxDesignation.Text.Trim());
            con.Open();
            int a = cmd.ExecuteNonQuery();

            if (a>0)
            {
                Response.Write("<script>alert('Update Succesful')</script>");
                txtBoxName.Text = "";
                txtBoxDesignation.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Update Failed')</script>");
            }
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from tblEmp where id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", txtBoxSearchbyId.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();

            if (a > 0)
            {
                Response.Write("<script>alert('Delete Succesful')</script>");
                txtBoxName.Text = "";
                txtBoxDesignation.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Delete Failed')</script>");
            }
            con.Close();
        }
    }
}