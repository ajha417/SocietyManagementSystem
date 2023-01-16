using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SocietyManagementSystem.View.Admin
{
    public partial class AddSociety : System.Web.UI.Page
    {
        Models.Functions conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new Models.Functions();
            ShowSociety();
        }
        public void ShowSociety()
        {
            string Query = "SELECT * FROM SocietyMst";
            ProductsGV.DataSource = conn.getData(Query);
            ProductsGV.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        public static String GetTimestamp(DateTime value)
        {
            return value.ToString("yyyyMMddHHmmssffff");
        }
        protected void AddSocietyBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(SNameTb.Value == "" || NoHouseTb.Value == "" || NoHouseTb.Value == "" || AddressTb.Value=="" || CityTb.Value == "" || PincodeTb.Value=="")
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string path;
                    if (FileUpload1.HasFile)
                        FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "upload/" + FileUpload1.FileName);

                    path = FileUpload1.FileName;
                    //string imageStr = imgarray.ToString();
                    string snameStr = SNameTb.Value.Trim();
                    int nohouseStr = int.Parse(NoHouseTb.Value.Trim());
                    string addressStr = AddressTb.Value.Trim();
                    string cityStr = CityTb.Value.Trim();
                    string pincodeStr = PincodeTb.Value.Trim();
                    string photostr = null;
                    string timeStamp = GetTimestamp(DateTime.Now);
                    string ExDateStr = ExDate.Value.Trim();

                    string Query = "INSERT INTO SocietyMst VALUES('{0}','{1}','{2}','{3}',{4},'{5}','{6}')";
                    Query = string.Format(Query, snameStr, addressStr, cityStr, pincodeStr, nohouseStr, path, ExDateStr);
                    conn.setData(Query);
                    ShowSociety();
                    ErrMsg.InnerText = "Society Added!!!";

                }
            }
            catch(Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void ProductsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            SNameTb.Value = ProductsGV.SelectedRow.Cells[2].Text;
            AddressTb.Value = ProductsGV.SelectedRow.Cells[3].Text;
            CityTb.Value = ProductsGV.SelectedRow.Cells[4].Text;
            PincodeTb.Value = ProductsGV.SelectedRow.Cells[5].Text;
            NoHouseTb.Value = ProductsGV.SelectedRow.Cells[6].Text;
            // ImageTb.Value = ProductsGV.SelectedRow.Cells[7].Text;
         //   ImageTb.Value = "";
            ExDate.Value = ProductsGV.SelectedRow.Cells[8].Text;
        }

        public void clearItems()
        {
            SNameTb.Value = "";
            NoHouseTb.Value = "";
            AddressTb.Value = "";
            CityTb.Value = "";
            PincodeTb.Value = "";
        }
        protected void UpdateSocietyBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || NoHouseTb.Value == "" || NoHouseTb.Value == "" || AddressTb.Value == "" || CityTb.Value == "" || PincodeTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string path;
                    if (FileUpload1.HasFile)
                        FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "upload/" + FileUpload1.FileName);

                    path = FileUpload1.FileName;
                    //string imageStr = imgarray.ToString();
                    string snameStr = SNameTb.Value.Trim();
                    int nohouseStr = int.Parse(NoHouseTb.Value.Trim());
                    string addressStr = AddressTb.Value.Trim();
                    string cityStr = CityTb.Value.Trim();
                    string pincodeStr = PincodeTb.Value.Trim();
                    //string photostr = null;
                    string timeStamp = GetTimestamp(DateTime.Now);
                    string ExDateStr = ExDate.Value.Trim();

                    // string Query = "INSERT INTO SocietyMst VALUES('{0}','{1}','{2}','{3}',{4},'{5}','{6}')";
                    string Query = "UPDATE SocietyMst SET Sname='{0}', Address='{1}',city='{2}',pincode='{3}',NoHouse={4},Image='{5}',EntryDate='{6}' WHERE SID={7}";
                    Query = string.Format(Query, snameStr, addressStr, cityStr, pincodeStr, nohouseStr, path, ExDateStr, ProductsGV.SelectedRow.Cells[1].Text);
                    conn.setData(Query);
                    ShowSociety();
                    clearItems();
                    ErrMsg.InnerText = "Society Updated!!!";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void DeleteSocietyBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                   
                    string Query = "DELETE FROM SocietyMst WHERE SID={0}";
                    Query = string.Format(Query, ProductsGV.SelectedRow.Cells[1].Text);
                    conn.setData(Query);
                    ShowSociety();
                    clearItems();
                    ErrMsg.InnerText = "Society Deleted";

                }
            }
            catch(Exception ex)
            {
                ErrMsg.InnerText = "Delete all houses first!";
            }
        }
    }
}