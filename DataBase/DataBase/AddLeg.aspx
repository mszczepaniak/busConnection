<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddLeg.aspx.cs" Inherits="DataBase.AddLeg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 485px;
        }
        .style4
        {
            width: 194px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style2">
        <tr>
            <td class="style3">
                <table class="style2">
                    <tr>
                        <td><asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/Default.aspx">Go Back</asp:HyperLink></td>
                            
                        </tr>
                    <tr>
                        <td bgcolor="gray">
                            <font color="white">LEGS PANEL  </font>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            FROM</td>
                        <td>
                            <asp:TextBox ID="TextBoxFromID" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            TIME SHIFT(MINUTES)</td>
                        <td>
                            <asp:TextBox ID="TextBoxTimeShift" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
&nbsp;ROUTE NAME</td>
                        <td>
                            <asp:TextBox ID="TextBoxRouteName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="ButtonAddLeg" runat="server" Text="Add new leg in route" 
                    onclick="Button1_Click" oninit="Button1_Click" />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
        SelectCommand="SP_AddLeg" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBoxFromID" Name="from" PropertyName="Text" 
                Type="String" />
                        <asp:ControlParameter ControlID="TextBoxTimeShift" Name="timeShift" 
                PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBoxRouteName" Name="routeName" 
                PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridViewSelectLegs" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
