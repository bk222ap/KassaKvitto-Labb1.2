using MyValuableCalculator.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyValuableCalculator
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Compute_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                Receipt receipt = new MyValuableCalculator.Model.Receipt(double.Parse(Op1.Text));

                paidSum.Text = string.Format("{0:c}", receipt.totalSum);
                discountProcentage.Text = string.Format("{0:p0}", receipt.discountProcentage);
                discount.Text = string.Format("{0:c}", receipt.discount);
                toPay.Text = string.Format("{0:c}", receipt.toPay);
                Panel1.Visible = true;
            }

        }
    }
}