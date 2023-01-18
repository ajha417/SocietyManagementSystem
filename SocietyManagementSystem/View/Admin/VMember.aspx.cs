using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.Admin
{
    public partial class VMember : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            if (!this.IsPostBack)
            {
                GetSocieties();

            }
        }
        public void GetSocieties()
        {
            String Query = "SELECT * FROM SocietyMst";
            selectSociety.DataTextField = Conn.getData(Query).Columns["Sname"].ToString();
            selectSociety.DataValueField = Conn.getData(Query).Columns["SID"].ToString();
            selectSociety.DataSource = Conn.getData(Query);
            selectSociety.DataBind();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void ViewButton_Click(object sender, EventArgs e)
        {
            string snammme = selectSociety.SelectedItem.ToString();
            try
            {
                string Query = "SELECT Image,FName as FirstName,LName as LastName,Email as EmailAddress,Mobile,Member FROM UserMst WHERE SocietyName='"+snammme+"'";
                MemberViewGV.DataSource = Conn.getData(Query);
                MemberViewGV.DataBind();
            }
            catch(Exception ex)
            {
                Errmsg.InnerText = ex.Message;
            }
        }
    }
}