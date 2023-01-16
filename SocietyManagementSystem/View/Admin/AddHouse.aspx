<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddHouse.aspx.cs" Inherits="SocietyManagementSystem.View.Admin.AddHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
        <div class="row">
            <div style="text-align:center;background:#ff6a00;color:white;font-weight:bolder;height:50px;padding-top:10px;font-size:20px">
                <asp:Label Text="ADD NEW HOUSE TO SOCIETY" runat="server"/>
            </div>
        </div>
        <div class="row" style="margin-top:30px">
            <div class="col-md-4">
                <div class="form-group">
                        <label for="SNameTb">Society:</label>
                        
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">Arvind Society</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        
                        </asp:DropDownList>
                    <asp:Label Text="Total House-" runat="server" Visible="False"/>
                    <asp:Label Text="number" ID="totalHouse" runat="server" Visible="False"/>

                    </div>
                <div>
                    <asp:Label Text="Allocated House-" runat="server" Visible="False" />
                    <asp:label Text="number" ID="allocatedHouse" runat="server" Visible="false"/>
                </div>
                <div>
                    <asp:Label Text="Remaining House-" runat="server" Visible="False"/>
                    <asp:Label Text="number" ID="remainingHouse" runat="server" Visible="False"/>
                </div>
            </div>
        </div>
            <br/><br/>
        <div class="row" style="margin-top:10px">
            <div class="col-md-4">
                <div class="form-group">
                        <label for="blockNumberTB">Block Number:</label>
                        <input type="text" class="form-control" id="blockNumberTB" runat="server">

                </div>
            </div>
        </div>
            <br/><br/>
        <div class="row" style="margin-top:10px">
            <div class="col-md-4">
                <div class="form-group">
                        <label for="AddressDV">House Type:</label>
                        <asp:DropDownList ID="AddressDV" runat="server">
                            <asp:ListItem>3BHK</asp:ListItem>
                            <asp:ListItem>4BHK</asp:ListItem>
                            <asp:ListItem>1BHK</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md-4">
                <div class="form-group">
                     <label for="HouseDetailTb">Detail:</label>
                     <input type="text" class="form-control" id="HouseDetailTb" runat="server">
                </div>
            </div>
        </div>
      
      <div class="col-md-4" style="margin-top:10px">
            <label runat="server" id="ErrMsg" class="text-danger"></label><br />
            <asp:Button Text="  ADD House" class="btn mt-3 btn-success" runat="server" ID="AddSocietyBtn"  />
            
      </div>

    </div>
        
     </div>
</asp:Content>
