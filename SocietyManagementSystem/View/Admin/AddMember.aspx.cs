using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.Admin
{
    public partial class AddMember : System.Web.UI.Page
    {
        Models.Functions conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.Functions();
            if(!this.IsPostBack)
            {
                GetSocieties();
                GetHouses();
            }
        }

        private void GetHouses()
        {
            string Query = "SELECT * FROM HouseMst";
            HouseNoDD.DataTextField = conn.getData(Query).Columns["HID"].ToString();
            HouseNoDD.DataValueField = conn.getData(Query).Columns["SID"].ToString();

            HouseNoDD.DataSource = conn.getData(Query);
            HouseNoDD.DataBind();

        }
        private void GetSocieties()
        {
            String Query = "SELECT * FROM SocietyMst";
            societyNameDD.DataTextField = conn.getData(Query).Columns["Sname"].ToString();
            societyNameDD.DataValueField = conn.getData(Query).Columns["SID"].ToString();

            societyNameDD.DataSource = conn.getData(Query);
           // string Query2 = "SELECT NoHouse FROM SocietyMst WHERE Sname='" + societyNameDD.SelectedValue.ToString() + "'";
            // totalHouse.Text = (Conn.setData(Query2).ToString());
            // Conn.setData(Query2);
            societyNameDD.DataBind();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void addmemberTV_Click(object sender, EventArgs e)
        {
            int SocietyData = 0;
            int HouseData = 0;
            try
            {
                if(firstnameTV.Value== null || lastnameTV.Value == null || emailTV.Value == null || mobileTV.Value == null || birthDateTV.Value == null) 
                {
                    ErrMsgi.InnerText = "Missing Data!!!";
                }
                else
                {
                    string path;
                    if (photoFile.HasFile)
                        photoFile.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "userupload/" + photoFile.FileName);
                    string firstnameStr = firstnameTV.Value;
                    string lastnameStr = lastnameTV.Value;
                    string emailStr = emailTV.Value;
                    string mobileStr = mobileTV.Value;
                    string birthDateStr = birthDateTV.Value;
                    int totalMemberStr = Convert.ToInt32(totalMemberTV.Value);
                    string societyName = societyNameDD.SelectedItem.ToString();
                    int houseno = Convert.ToInt32(HouseNoDD.SelectedItem.ToString());
                    string usernameStr = usernameTV.Value;
                    string passwordStr = passwordTV.Value;
                    string ExDateStr = ExDate.Value;

                    // string Query2 = "SELECT SID FROM SocietyMst WHERE Sname='" + SocietyCB.SelectedItem.ToString() + "'";
                   // string Query2 = "SELECT * FROM SocietyMst,HouseMst";
                    string Query2 = "SELECT SocietyMst.SID,HouseMst.HID FROM SocietyMst,HouseMst WHERE SocietyMst.Sname='" + societyNameDD.SelectedItem.ToString() + "' and HouseMst.HID='"+HouseNoDD.SelectedItem.ToString()+"'";
                    UserGV.DataSource = conn.getData(Query2);
                    UserGV.DataBind();

                    SocietyData = Convert.ToInt32(UserGV.Rows[0].Cells[0].Text);
                    HouseData = Convert.ToInt32(UserGV.Rows[0].Cells[1].Text);
                    societyData.Text = UserGV.Rows[0].Cells[0].ToString();

                    string Query = "INSERT INTO UserMst Values('{0}','{1}','{2}','{3}','{4}',{5},{6},{7},'{8}','{9}','{10}','{11}')";
                   // Query = string.Format(Query,)
                   Query = string.Format(Query,firstnameStr,lastnameStr,);

                }

            }
            catch(Exception ex)
            {
                ErrMsgi.InnerText = ex.Message;
            }
        }
    }
}