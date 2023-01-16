﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="VMember.aspx.cs" Inherits="SocietyManagementSystem.View.Admin.VMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
        <div class="row">
            <div style="text-align:center;background:#ff6a00;color:white;font-weight:bolder;height:50px;padding-top:10px;font-size:20px">
                <asp:Label Text="MEMBER REPORT" runat="server"/>
            </div>
        </div>
        <div class="row" style="margin-top:30px">
            <div class="col-md-4">
                <div class="row">
                <div class="form-group">
                        <label for="selectsociety">Select Society:</label>
                      <div class="mt-3" style="display:inline">
                    <asp:DropDownList ID="selectSociety" runat="server">
                        <asp:ListItem Selected="True">Shri Nivas Society</asp:ListItem>
                        <asp:ListItem>Damodar Society</asp:ListItem>
                        <asp:ListItem>Silver city</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        
                        </asp:DropDownList>
                          </div>
                        <asp:Button Text=" View " class="btn mt-3 btn-success" runat="server" ID="ViewButton"  style="margin-left:10px"/>
                          
                    <div class="col-md-2">
                    </div>
                    </div>
                    </div>
              </div>
        </div>
            <asp:Label Text="" ID="statusMember" runat="server" />
            <br/><br/>
           <div class="row">
                    <asp:GridView ID="MemberViewGV" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None">
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