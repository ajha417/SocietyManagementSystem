using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.Admin
{
    public partial class VHouse : System.Web.UI.Page
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
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        public void GetSocieties()
        {
            String Query = "SELECT * FROM SocietyMst";
            selectSociety.DataTextField = Conn.getData(Query).Columns["Sname"].ToString();
            selectSociety.DataValueField = Conn.getData(Query).Columns["SID"].ToString();

            selectSociety.DataSource = Conn.getData(Query);
            //string Query2 = "SELECT NoHouse FROM SocietyMst WHERE Sname='" + SocietyCB.SelectedValue.ToString() + "'";
            //totalHouse.Text = (Conn.setData(Query2).ToString());
            // Conn.setData(Query2);
            selectSociety.DataBind();
        }

        protected void ViewButton_Click(object sender, EventArgs e)
        {
                string snammme = selectSociety.SelectedItem.ToString();
            //string Query2 = "DELETE FROM HouseMst";
            //Conn.setData(Query2);
            try
            {
               string Query = "SELECT HID,Image,BlockNo,SocietyName,Type,Detail FROM HouseMst WHERE SocietyName='" + selectSociety.SelectedItem.ToString() + "'";
                HouseViewGV.DataSource = Conn.getData(Query);
                HouseViewGV.DataBind();
            }
            catch(Exception ex) 
            {
                ErrMsg.InnerText = snammme;   
            }
            
        }

        protected void HouseGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string Query = "DELETE FROM HouseMst WHERE HID={0}";
                Query = string.Format(Query, Convert.ToInt32(HouseViewGV.SelectedRow.Cells[1].Text));
                Conn.setData(Query);
                HouseViewGV.DataBind();
                ErrMsg.InnerText = "House Deleted!!!";
            }
            catch(Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}