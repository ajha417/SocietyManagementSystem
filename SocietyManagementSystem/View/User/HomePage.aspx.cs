using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.User
{
    public partial class HomePage : System.Web.UI.Page
    {
        Models.Functions conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.Functions();
            if(!this.IsPostBack) 
            {
                GetSocietyList();

            }
        }
        public void GetSocietyList()
        {
            try
            {
                string Query = "SELECT Sname as SocietyName FROM SocietyMst";
                SocietyList.DataSource = conn.getData(Query);
                SocietyList.DataBind();
            }
            catch(Exception ex) 
            {
                Errmsgs.InnerText= ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string Query = "SELECT UserName,Password FROM UserMst WHERE UserName='{0}' AND Password='{1}'";
                Query = string.Format(Query, userNameTxt.Text, passwordTxt.Text);
                DataTable dt = conn.getData(Query);
                if(dt.Rows.Count == 0)
                {
                    Errmsgs.InnerText = "User not found!!!";
                }
                else
                {
                    Session["username"] = userNameTxt.Text;
                    Session["password"] = passwordTxt.Text;
                    Response.Redirect("Search.aspx");
                }
            }
            catch(Exception ex)
            {
                Errmsgs.InnerText= ex.Message;
            }
        }
    }
}