﻿using System;
using Ppmc.Advantage.DataAccess;
using System.Data;
using System.Collections;

namespace MDashboard
{
    public partial class M2Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                Hashtable param = new Hashtable();
                param.Add("@Phone", txtPhone.Text.Trim());
                param.Add("@FirstName", txtFirstName.Text.Trim());
                param.Add("@LastName", txtLastName.Text.Trim());
                AdVantageData.RunProc(Properties.Settings.Default.AJVConnection, "usp_RWAddMember", param);
                Response.Redirect("Confirmation.aspx?Store=2&Phone=" + txtPhone.Text);
            }
            catch (Exception exc)
                {
                    lblMessage.Visible = true;
                    //lblMessage.Text = exc.Message + "/n" + exc.InnerException.Message;
                    lblMessage.Text = "Failed to add the new member...TRY AGAIN";
                }
        }
    }
}