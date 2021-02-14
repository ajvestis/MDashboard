using System;
using Ppmc.Advantage.DataAccess;
using System.Data;

namespace MDashboard
{
    public partial class Main2 : System.Web.UI.Page
    {
        private string _conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            //TimeZoneInfo pacificZone = TimeZoneInfo.FindSystemTimeZoneById("P
            lblTime.Text = "Main 2 @ " + DateTime.UtcNow.AddHours(-8).ToShortDateString() + " " + DateTime.UtcNow.AddHours(-8).ToShortTimeString();
            _conn = Properties.Settings.Default.AJVConnection;
            DataTable dt = AdVantageData.GetDataTable(_conn, "usp_SummaryReport");
            lblTotal.Text += Convert.ToInt32(dt.Rows[0]["Total"]).ToString();
            lblSalesCount.Text += "("+ Convert.ToInt32(dt.Rows[0]["SalesCount"]).ToString() + ")";
            lblCreditCard.Text += Convert.ToInt32(dt.Rows[0]["CreditCard"]).ToString();
            lblCash.Text += Convert.ToInt32(dt.Rows[0]["Cash"]).ToString();
            if (Convert.ToInt32(dt.Rows[0]["StoreCredit"]) != 0)
            {
                imgStoreCredit.Visible = true;
                lblStoreCredit.Text += Convert.ToInt32(dt.Rows[0]["StoreCredit"]).ToString();
            }
            else
            {
                imgStoreCredit.Visible = false;
                lblStoreCredit.Visible = false;
            }
            if (Convert.ToInt32(dt.Rows[0]["Discount"]) != 0)
            {
                imgDiscount.Visible = true;
                lblDiscount.Text += Convert.ToInt32(dt.Rows[0]["Discount"]).ToString();
            }
            else
            {
                imgDiscount.Visible = false;
                lblDiscount.Visible = false;
            }

            if (Convert.ToInt32(dt.Rows[0]["Return"]) != 0)
            {
                lblReturn.Text += Convert.ToInt32(dt.Rows[0]["Return"]).ToString();
                ImgReturn.Visible = true;
            }
            else
            {
                lblReturn.Visible = false;
                ImgReturn.Visible = false;
            }

            DataTable dt2 = AdVantageData.GetDataTable(_conn, "usp_HourlyReport");

            dlHourly.DataSource = dt2;
            dlHourly.DataBind();

            string customShirtsSQL = "select isnull(sum(Price),0) " +
                                        " from transactionDetail where UPC='CATEGORY0015' and left(TransactionID,8)= replace(convert(varchar,getdate(),102),'.','')";

            DataTable dt3 = AdVantageData.GetDataTableByScript(_conn, customShirtsSQL);
            if (Convert.ToInt32(dt3.Rows[0][0]) != 0)
            {
                imgCustom.Visible = true;
                lblCustom.Text = Convert.ToInt32(dt3.Rows[0][0]).ToString();
            }
            else
            {
                imgCustom.Visible = false;
                lblCustom.Visible = false;
            }
        }
    }
}