using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace aramark_pizza_2
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double total = 0.0;
            if (pepButton.Checked)
            {
                total = 3.80;
                typelbl.Text = "Pepperoni";
            }
            else if (marButton.Checked)
            {
                total = 3.60;
                typelbl.Text = "Margherita";
            }
            if (smallButton.Checked)
            {
                total = total + 1.00;
                sizelbl.Text = "Small";
            }
            else if (medButton.Checked)
            {
                total = total + 1.50;
                sizelbl.Text = "Medium";
            }
            else
            {
                total = total + 2.00;
                sizelbl.Text = "Large";
            }
            if (pineCheckbox.Checked)
            {
                total = total + 0.45;
                toppinglbl.Text = "Pineapple";
            }
            if (mushCheckbox.Checked) 
            {
                total = total + 0.45;
                toppinglbl.Text = "Mushroom";
            }
            resultLabel.Text = "£" + total.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Aramark_Pizza_DatabaseEntities db = new Aramark_Pizza_DatabaseEntities();
            var dbOrder = db.Orders;

            var newOrder = new Order();

            newOrder.PizzaSize = "" + sizelbl.Text;
            newOrder.PizzaTypes = "" + typelbl.Text;
            newOrder.PizzaToppings = "" + toppinglbl.Text;
            newOrder.Price = "" + resultLabel.Text;
            newOrder.CustomerName = "" + TextBox1.Text;

            dbOrder.Add(newOrder);
            db.SaveChanges();
             
            grdOrder.DataBind();
            Response.Redirect("Checkout.aspx");
        }
    }
}