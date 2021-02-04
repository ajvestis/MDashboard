using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ppmc.Advantage.DataAccess;
using System.Data;

namespace MDashboard
{
    public partial class Main2 : System.Web.UI.Page
    {
        private string _conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblTime.Text = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
            _conn = Properties.Settings.Default.AJVConnection;
            DataTable dt = AdVantageData.GetDataTable(_conn, "usp_SummaryReport");
            lblTotal.Text += Convert.ToInt32(dt.Rows[0]["Total"]).ToString();
            lblSalesCount.Text += "("+ Convert.ToInt32(dt.Rows[0]["SalesCount"]).ToString() + ")";
            lblCreditCard.Text += Convert.ToInt32(dt.Rows[0]["CreditCard"]).ToString();
            lblCash.Text += Convert.ToInt32(dt.Rows[0]["Cash"]).ToString();
            lblStoreCredit.Text += Convert.ToInt32(dt.Rows[0]["StoreCredit"]).ToString();
            lblDiscount.Text += Convert.ToInt32(dt.Rows[0]["Discount"]).ToString();
            lblReturn.Text += Convert.ToInt32(dt.Rows[0]["Return"]).ToString();
            

            DataTable dt2 = AdVantageData.GetDataTable(_conn, "usp_HourlyReport");

            dlHourly.DataSource = dt2;
            dlHourly.DataBind();
        }
    }
}