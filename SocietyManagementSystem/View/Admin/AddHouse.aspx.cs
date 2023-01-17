using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
            if (!this.IsPostBack) 
            {
            GetSocieties();

            }
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
        public void ClearItems()
        {
            HouseDetailTb.Value = "";
            blockNumberTB.Value = "";
            AddressDV.SelectedValue = "";
           // SocietyCB.SelectedValue = "";

        }
        protected void AddSocietyBtn_Click(object sender, EventArgs e)
        {
            int SoceityData=0;
            
            try
            {
                SqlCommand cmd = new SqlCommand();

                if (HouseDetailTb.Value == "" || blockNumberTB.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string path;
                    if (FileUpload1.HasFile)
                        FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "upload/" + FileUpload1.FileName);

                    path = FileUpload1.FileName;
                    string houseDetailStr = HouseDetailTb.Value;
                    int blockNumberStr = Convert.ToInt32(blockNumberTB.Value);
                    string societyNameStr = SocietyCB.SelectedValue.ToString();
                    string houseCategoryStr = AddressDV.SelectedValue.ToString();
                    string societyStr = SocietyCB.SelectedItem.ToString();
                    string ExDateStr = ExDate.Value;
                    string Query2 = "SELECT SID FROM SocietyMst WHERE Sname='"+SocietyCB.SelectedItem.ToString()+"'";

                    // cmd.CommandType = CommandType.Text;


                    HouseGV.DataSource = Conn.getData(Query2);
                    HouseGV.DataBind();
                    SoceityData = Convert.ToInt32(HouseGV.Rows[0].Cells[0].Text);
                    societyData.Text = HouseGV.Rows[0].Cells[0].ToString();
                    string Query = "INSERT INTO HouseMst VALUES({0},'{1}','{2}',{3},'{4}','{5}','{6}')";
                    Query = string.Format(Query, blockNumberStr, houseCategoryStr, houseDetailStr, SoceityData, path, ExDateStr,societyStr);
                    Conn.setData(Query);
                    ErrMsg.InnerText = "House Added Successfully!!!";
                    ClearItems();

                }
            }
            catch(Exception ex)
            {
                // ErrMsg.InnerText = SocietyCB.SelectedItem.ToString();
                // ErrMsg.InnerText = HouseGV.Rows[0].Cells[0].Text.ToString();
                ErrMsg.InnerText = ex.Message;
            }
        }
    }
}