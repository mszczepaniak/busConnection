<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Routes.aspx.cs" Inherits="DataBase.Routes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
    {
        width: 100%;
    }
    .style6
    {
        width: 526px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style5">
    <tr>
        <td class="style6">
            <table class="style5">
                <tr>
                    <td align="center">
                Choose route to show its all bus stops :<br />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="routeName" 
                    DataValueField="routeName" Width="150px">
                </asp:DropDownList>
                            <br />
                    </td>
                </tr>
                <tr>
                    <td align="center">
    <asp:Button ID="ButtonShowRoutes" runat="server" Text="Show" BackColor="#6699FF" 
                    Font-Bold="True" ForeColor="White" Width="150px" 
                            onclick="ButtonShowRoutes_Click" />
                            <br />
                    </td>
                </tr>
            </table>
        </td>
        <td>
        <asp:GridView ID="GridViewShowRoutes" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FROM" HeaderText="FROM" ReadOnly="True" 
                    SortExpression="FROM" />
                <asp:BoundField DataField="TIME SHIFT" HeaderText="TIME SHIFT" 
                    SortExpression="TIME SHIFT" />
            </Columns>
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
<br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
        SelectCommand="SP_ShowRoute" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="routeName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
        SelectCommand="SELECT [routeName] FROM [Routes]"></asp:SqlDataSource>
</asp:Content>
