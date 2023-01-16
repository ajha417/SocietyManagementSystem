<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddSociety.aspx.cs" Inherits="SocietyManagementSystem.View.Admin.AddSociety" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
        <div class="row">
            <div style="text-align:center;background:#ff6a00;color:white;font-weight:bolder;height:50px;padding-top:10px;font-size:20px">
                <asp:Label Text="ADD NEW SOCIETY" runat="server"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                        <label for="SNameTb">Society Name:</label>
                        <input type="text" class="form-control" id="SNameTb" runat="server">
                    </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                        <label for="NoHouseTb">No of House:</label>
                        <input type="text" class="form-control" id="NoHouseTb" runat="server">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                        <label for="AddressTb">Address:</label>
                        <input type="text" class="form-control" id="AddressTb" runat="server">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                     <label for="CityTb">City:</label>
                     <input type="text" class="form-control" id="CityTb" runat="server">
                </div>
            </div>
        </div>
        <div class="row">
             <div class="col-md-4">
                <div class="form-group">
                     <label for="PincodeTb">Pincode:</label>
                     <input type="text" class="form-control" id="PincodeTb" runat="server">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                        <asp:FileUpload ID="FileUpload1" runat="server" />  

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                      <label for="ExDate">Expriry Date:</label>
                        <input type="date" class="form-control" id="ExDate" runat="server">
                </div>
            </div>
        </div>
      <div class="col-md-4">
            <label runat="server" id="ErrMsg" class="text-danger"></label><br />
            <asp:Button Text="  Add Society  " class="btn mt-3 btn-success" runat="server" ID="AddSocietyBtn" OnClick="AddSocietyBtn_Click"  />
            <asp:Button Text="Update" class="btn mt-3 btn-warning" runat="server" ID="UpdateSocietyBtn" OnClick="UpdateSocietyBtn_Click"  />
            <asp:Button Text="Delete" class="btn mt-3 btn-danger" runat="server" ID="DeleteSocietyBtn" OnClick="DeleteSocietyBtn_Click"  />
      </div>

        <div class="col-md-8">

                <!--table here-->
                <asp:GridView runat="server" ID="ProductsGV" class="table table-hover" AutoGenerateSelectButton="True" style="margin-top:-400px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="ProductsGV_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />

                </asp:GridView>
            </div>
    </div>
     </div>
</asp:Content>

            
            
            
           
            
