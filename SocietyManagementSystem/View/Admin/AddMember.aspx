<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="SocietyManagementSystem.View.Admin.AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="row">
                <div style="text-align: center; background: #ff6a00; color: white; font-weight: bolder; height: 50px; padding-top: 10px; font-size: 20px">
                    <asp:Label Text="ALLOCATE HOUSE TO USER" runat="server" />
                </div>
            </div>
            <br />
            <div class="centerit mt-3" style="width: 550px; align-items: center; margin-left: 500px; border: 1px solid green">
                <div>
                    <div class="form-group">
                        <label for="firstnameTV">First Name:</label>
                        <input type="text" class="form-control" id="firstnameTV" placeholder="First name" runat="server">
                    </div>
                    <div>
                        <div class="form-group">
                            <label for="lastnameTV">Last Name:</label>
                            <input type="text" class="form-control" id="lastnameTV" placeholder="Last name" runat="server">
                        </div>
                        <div>
                            <div class="form-group">
                                <label for="emailTV">Email:</label>
                                <input type="text" class="form-control" id="emailTV" placeholder="Email" runat="server">
                            </div>
                            <div class="form-group">
                                <label for="mobileTV">Mobile:</label>
                                <input type="text" class="form-control" id="mobileTV" placeholder="Mobile" runat="server">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="birthdateTV">BirthDate:</label>
                            <input type="text" class="form-control" id="birthDateTV" placeholder="BirthDate" runat="server">
                        </div>
                        <div class="form-group">
                            <label for="totalMemberTV">Total Member:</label>
                            <input type="text" class="form-control" id="totalMemberTV" placeholder="Total member" runat="server">
                        </div>

                        <div class="form-group mt-1">
                            <label for="societyNameDD">Society Name:</label>

                            <asp:DropDownList ID="societyNameDD" runat="server">
                                <asp:ListItem>Satyam Society</asp:ListItem>
                                <asp:ListItem>Silver City</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group mt-1">
                            <label for="HouseNoDD">House No:</label>

                            <asp:DropDownList ID="HouseNoDD" runat="server"></asp:DropDownList>
                        </div>
                        <div class="form-group mt-2">
                            <label for="photoFile">Photo:</label>
                            <asp:FileUpload ID="photoFile" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="usernameTV">Username</label>
                            <input type="text" class="form-control" id="usernameTV" placeholder="Username" runat="server">
                        </div>
                        <div class="form-group">
                            <label for="passwordTV">Password</label>
                            <input type="password" class="form-control" id="passwordTV" placeholder="Password" runat="server">
                        </div>
                        <div>
                            <label for="ExDate">Create Date:</label>
                            <input type="date" class="form-control" id="ExDate" runat="server">
                        </div>

                        <asp:Label Text="" ID="addmemberstatus" runat="server" />

                        <div style="text-align: center">
                            <asp:Button Text="ADD member" class="btn btn-success mt-2 md-7" ID="addmemberTV" runat="server" OnClick="addmemberTV_Click" />
                        </div>
                        <div>
                            <label runat="server" id="ErrMsgi" class="text-success"></label>
                        </div>
                        <div>
                            <label runat="server" id="societyData" class="text-danger" visible="false"></label>
                        </div>
                        <div>
                            <label runat="server" id="houseData" class="text-danger" visible="false"></label>
                        </div>
                        <div>
                            <asp:GridView ID="UserGV" runat="server" Visible="false"></asp:GridView>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
