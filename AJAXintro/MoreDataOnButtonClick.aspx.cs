using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AJAXintro
{
    public partial class MoreDataOnButtonClick : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCSrptr"].ConnectionString;
        int num;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                num = 5; // Initial load of 5 rows
                ViewState["num"] = num; // Store in ViewState to retain across postbacks
                BindRepeaterWithDB(num);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            num = (int)ViewState["num"];
            num += 5; // Load 5 more rows on each click
            ViewState["num"] = num;
            BindRepeaterWithDB(num);
        }

        void BindRepeaterWithDB(int NoOfRows)
        {
            int totalRows = GetTotalRowCount();

            // Hide the button if all data has been loaded
            Button1.Visible = NoOfRows < totalRows;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT TOP(@NoOfRows) * FROM tblEmp";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.SelectCommand.Parameters.AddWithValue("@NoOfRows", NoOfRows);

                DataTable data = new DataTable();
                sda.Fill(data);

                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
        }

        int GetTotalRowCount()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string countQuery = "SELECT COUNT(*) FROM tblEmp";
                SqlCommand cmdCount = new SqlCommand(countQuery, con);
                con.Open();
                int totalRows = (int)cmdCount.ExecuteScalar();
                return totalRows;
            }
        }
    }
}