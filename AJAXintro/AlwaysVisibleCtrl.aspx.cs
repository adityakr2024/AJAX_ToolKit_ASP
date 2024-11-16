using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJAXintro
{
    public partial class AlwaysVisibleCtrl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            DateTime dateTime = DateTime.Now;

            Label1.Text = dateTime.ToString();
            Label1.ForeColor = Color.Red;
        }
    }
}