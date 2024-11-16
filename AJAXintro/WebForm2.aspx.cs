using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJAXintro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num1 = int.Parse(TextBox1.Text);
            int num2 = int.Parse(TextBox2.Text);
            int result = num1 + num2;
            Label1.Text = result.ToString();
            Label1.Visible = true;
        }
    }
}