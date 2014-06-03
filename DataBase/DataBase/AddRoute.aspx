<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRoute.aspx.cs" Inherits="DataBase.Admin" %>
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
        .style5
        {
            width: 433px;
        }
        .style9
        {
            width: 466px;
        }
        .style10
        {
            width: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
      <br />
      <table class="style2">
          <tr>
              <td class="style9">
            <table class="style2">
                <tr>
                    <td>
                            <asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/Default.aspx">Go Back</asp:HyperLink>
                        </td>
                </tr>
                <tr>
                    
                                <td bgcolor="gray" class="style10">
                                   <font color="white">ROUTE PANEL  </font>
                                </td>
                       
                            </tr>
                <tr>
                                <td class="style10">
                                    ROUTE NAME</td>
                                <td class="style5">
                                    <asp:TextBox ID="TextBoxAddRoute" runat="server" style="margin-left: 2px"></asp:TextBox>
                                </td>
                            </tr>
                <tr>
                    <td class="style10">
                        <asp:Button ID="ButtonAddRoute" runat="server" Text="Add new route"  />
                        </td>
                    <td class="style5">
                        &nbsp;</td>
                </tr>

            </table>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
        SelectCommand="SP_AddRoute" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxAddRoute" Name="route" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
              </td>
              <td>
                <asp:GridView ID="GridViewSelectRoutes" runat="server" 
                      AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="routeId" DataSourceID="SqlDataSource4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="routeId" HeaderText="routeId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="routeId" />
                        <asp:BoundField DataField="routeName" HeaderText="routeName" 
                            SortExpression="routeName" />
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
&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>
