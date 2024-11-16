using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.Script.Services;

namespace AJAXintro
{
    public partial class AutoCompleteExtenderCtrl : System.Web.UI.Page
    {
        static string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [ScriptMethod]
        [WebMethod]
        //[System.Web.Script.Services.ScriptMethod()]
        //[System.Web.Script.Services.WebMethod]
        public static List<string> GetCompletionList(string prefixText, int count)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from city_tbl where cityname like @name + '%'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", prefixText);
            List<string> CityNames = new List<string>();
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CityNames.Add(dr["cityname"].ToString());
            }
            con.Close();
            return CityNames;
        }
        
    }
}