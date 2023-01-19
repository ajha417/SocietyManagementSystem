using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.User
{
    public partial class Admin : System.Web.UI.Page
    {
        Models.Functions conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.Functions();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(username.Value=="Admin@gmail.com" && password.Value == "Admin")
                {
                    Response.Redirect("../Admin/AddSociety.aspx");
                }
                else
                {
                    ErrMsg.InnerText = "Invalid Credentials!!!Try Again...";
                }
            }
            catch
            {
                

            }
        }
    }
}