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
                        <input type="text" class="form-control" id="Address" runat="server">
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
                     <label for="ImageTb">Upload file:</label>
                     <input type="file" class="form-control" id="ImageTb" runat="server">
                </div>
            </div>
        </div>
      <div class="col-md-4">
            <label runat="server" id="ErrMsg" class="text-danger"></label><br />
            <asp:Button Text="  Add Society  " class="btn mt-3 btn-success" runat="server" ID="AddSocietyBtn"  />
            <asp:Button Text="Update" class="btn mt-3 btn-warning" runat="server" ID="UpdateSocietyBtn"  />
            <asp:Button Text="Delete" class="btn mt-3 btn-danger" runat="server" ID="DeleteSocietyBtn"  />
      </div>

    </div>
        <div class="col-md-8">

                <!--table here-->
                <asp:GridView runat="server" ID="ProductsGV" class="table table-hover" AutoGenerateSelectButton="True" >

                </asp:GridView>
            </div>
     </div>
</asp:Content>

            
            
            
           
            
