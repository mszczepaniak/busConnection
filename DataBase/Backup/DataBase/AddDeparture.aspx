<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDeparture.aspx.cs" Inherits="DataBase.AddDeparture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 437px;
        }
        .style4
        {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style2">
        <tr>
            <td class="style3">
                <table class="style2">
                    <tr>
                        <td class="style4">
                            Choose route:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="routeName" 
                                DataValueField="routeName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
                                SelectCommand="SELECT * FROM [Routes]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Departure hour:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxDepartureHour" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:CheckBox ID="CheckBoxDirection" runat="server" 
                                Text="Direction( checked - true)" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="ButtonAdd" runat="server" Text="Add new departure" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" style="margin-left: 92px" CellPadding="4" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
                    SelectCommand="SP_AddDeparture" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="routeName" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="CheckBoxDirection" Name="direction" 
                            PropertyName="Checked" Type="Boolean" />
                        <asp:ControlParameter ControlID="TextBoxDepartureHour" DbType="Time" 
                            Name="departure" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>
