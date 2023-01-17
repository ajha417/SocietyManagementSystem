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
               // GetSocieties();

            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void ViewButton_Click(object sender, EventArgs e)
        {

        }
    }
}