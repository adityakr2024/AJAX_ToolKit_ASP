using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJAXintro
{
    public partial class ToggleButtonConrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label1.Text = "Bulb is Off";
                Label1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true) {
                Label1.Text = "Bulb is On";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Bulb is Off";
                Label1.Visible = true;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                Label1.Text = "Bulb is On";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Bulb is Off";
                Label1.Visible = true;
            }
        }
    }
}