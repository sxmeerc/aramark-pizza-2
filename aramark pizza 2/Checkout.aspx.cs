using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aramark_pizza_2
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void finishButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Finish.aspx");
        }
    }
}