<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="SocietyManagementSystem.View.Admin.Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #ul-nb {
            list-style: none;
            margin: 2px;
            padding: 3px;
        }

            #ul-nb li {
                float: left;
                text-align: center;
                margin-left: 5px;
            }

                #ul-nb li:hover {
                    opacity: 0.8;
                    color: white;
                }

        #buttons {
            width: 600px;
            margin-left: 500px;
        }

        #newcomplainList,solvedComplainList{
            border: 1px solid green;
            width: 600px;
            height: 350px;
            margin-left: 450px;
            margin-top: 10px
        }
        

        #complainTBLabel ,solveComplainTBLabel{
            background: orange;
            color: white;
            text-align: center;
            padding: 5px;
            font-weight: bolder
        }

        #newComplain:hover {
            background-color: red;
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <div class="row">
                <div style="text-align: center; background: #ff6a00; color: white; font-weight: bolder; height: 50px; padding-top: 10px; font-size: 20px">
                    <asp:Label Text="COMPLAIN LIST" runat="server" />
                </div>
            </div>

            <div id="buttons">
                <ul id="ul-nb">
                    <li>
                        <asp:Button ID="newComplain" runat="server" Text="New Complain" class="btn btn-success" Style="margin-left: 100px; margin-right: 50px" /></li>
                    <li>
                        <asp:Button ID="solvedComplain" runat="server" Text="Solved Complain" class="btn btn-success" Style="margin-left: " /></li>

                </ul>
            </div>
            <div id="compalinList">

                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <div id="newcomplainList">
                            <div id="complainTBLabel">
                                <asp:Label Text="New Complain List - 1" ID="complainTB" runat="server" />
                            </div>
                            <div class="mt-3">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                            </div>
                            <div style="padding:20px">
                                <div>
                                    <asp:Label ID="subjectTB" Text="Subject:" runat="server" style="margin-left:10px"/>
                                </div>
                                <div>
                                    <asp:Label ID="complainTBi" Text="Complain:" runat="server" />
                                </div>
                                <div>
                                    <asp:Label ID="replyTb" Text="Reply:" runat="server" style="margin-left:30px"/>
                                    <textarea id="TextArea1" cols="20" rows="2"></textarea>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="replyBtn" Text="Reply" runat="server" class="btn btn-success" style="margin-left:100px"/>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div id="solvedComplainList">
                            <div id="solveComplainTBLabel">
                                <asp:Label Text="Solved Complain Report - 1" ID="Label1" runat="server" />
                            </div>
                            <div class="mt-3">
                                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                            </div>
                            <div style="padding:20px">
                                <div>
                                    <asp:Label ID="Label2" Text="Subject:" runat="server" style="margin-left:10px"/>
                                </div>
                                <div>
                                    <asp:Label ID="Label3" Text="Complain:" runat="server" />
                                </div>
                                <div>
                                    <asp:Label ID="Label4" Text="Reply:" runat="server" style="margin-left:30px"/>
                                    <textarea id="textarea2" cols="20" rows="2"></textarea>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="Button1" Text="Reply" runat="server" class="btn btn-success" style="margin-left:100px"/>
                            </div>
                        </div>
                    </asp:View>

                </asp:MultiView>

            </div>

        </div>
    </div>
</asp:Content>
