using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.Admin
{
    public partial class AddHouse : System.Web.UI.Page
    {
        Models.Functions Conn;
        int totalHouseof = 0;
        int allocatedHouseof = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            
            GetSocieties();
           // GetHouseCategories();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void GetSocieties() 
        {
            String Query = "SELECT * FROM SocietyMst";
            SocietyCB.DataTextField = Conn.getData(Query).Columns["Sname"].ToString();
            SocietyCB.DataValueField = Conn.getData(Query).Columns["SID"].ToString();

            SocietyCB.DataSource = Conn.getData(Query);
            string Query2 = "SELECT NoHouse FROM SocietyMst WHERE Sname='" + SocietyCB.SelectedValue.ToString() +"'";
            totalHouse.Text = (Conn.setData(Query2).ToString());
           // Conn.setData(Query2);
            SocietyCB.DataBind();
        }

    }
}