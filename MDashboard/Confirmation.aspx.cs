using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MDashboard
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = Request.QueryString["Phone"].ToString() + " Registered!";
            string StoreNum = Request.QueryString["Store"].ToString() == "2" ? "2" : "1";
            hplRegister.NavigateUrl = string.Format("M{0}Registration.aspx", StoreNum);
        }
    }
}