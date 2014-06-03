<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="DataBase._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 331px;
    }
        .style7
    {
        width: 100%;
    }
    .style8
    {
        width: 474px;
    }
    .style9
    {
        width: 154px;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        How can I go to...</h2>
<table class="style7">
    <tr>
        <td class="style8">
            <table class="style7">
                <tr>
                    <td class="style9">
                            <strong>From:</strong></td>
                    <td>
                            <asp:DropDownList ID="DropDownListFrom" runat="server" 
                                DataSourceID="SqlDataSource3" DataTextField="busStopName" 
                                DataValueField="busStopName" Width="150px">
                            </asp:DropDownList>
                            </td>
                </tr>
                <tr>
                    <td class="style9">
                            <strong>To:</strong></td>
                    <td>
                            <asp:DropDownList ID="DropDownListTo" runat="server" 
                                DataSourceID="SqlDataSource3" DataTextField="busStopName" 
                                DataValueField="busStopName" Width="150px">
                            </asp:DropDownList>
                            </td>
                </tr>
                <tr>
                    <td class="style9">
                            <strong>Departure Hour: 
                        </strong>
                            </td>
                    <td>
                            <asp:TextBox ID="TextBoxTime" runat="server" Width="150px">09:00:00</asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="style9">
                            <asp:CheckBox 
                     ID="CheckBoxIsMain" runat="server" Text="Is Main City ?" />
                        </td>
                    <td>
                           <asp:Button ID="ButtonFind" runat="server"
            Text="Find!" Width="150px" BackColor="#6699FF" Font-Bold="True" ForeColor="White" /> 
                        </td>
                </tr>
                <tr>
                    <td class="style9">
                            <strong>More departures:
                        </strong>
                        </td>
                    <td>
                            <asp:Button ID="ButtonMoreDepartures" runat="server" onclick="Button1_Click" 
                            Text="More Departures..." Width="150px" BackColor="#6699FF" Font-Bold="True" 
                                ForeColor="White" /> 
                        </td>
                </tr>
            </table>
            <br />
            <br />
    
                <asp:HyperLink ID="HyperLinkMagnifyingGlass" runat="server" 
                    NavigateUrl="~/MagnifyingGlass.aspx">See also the map through magnifying glass</asp:HyperLink>
    
            <br />
            <br />
&nbsp;<asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    
                </AnonymousTemplate>
                <LoggedInTemplate>
                    ADMIN PANEL<br/>
                    <asp:HyperLink ID="HyperLinkRoute" runat="server" NavigateUrl="~/AddRoute.aspx">Add new route...</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLinkLeg" runat="server" NavigateUrl="~/AddLeg.aspx">Add new leg...</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLinkAddDepartures" runat="server" 
                        NavigateUrl="~/AddDeparture.aspx">Add new departures...</asp:HyperLink>
                </LoggedInTemplate>
            </asp:LoginView>
    
            </td>
        <td>
                         <asp:ImageButton ID="ImageButton1" runat="server" Height="400px" 
                        ImageUrl="~/mapaFaerunuZtrasami.jpg" PostBackUrl="~/Map.aspx" 
                    Width="500px" style="margin-left: 52px" />
                </td>
    </tr>
</table>
<p>
        <table class="style1">
            <tr>
                <td class="style2">
                    <div style="overflow-x:auto;width:900px;overflow-y: auto;height:150px" >
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" 
                            Width="300px" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
                            SelectCommand="SELECT [busStopName] FROM [BusStops]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
                            SelectCommand="SP_CalculateRoutes3" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListFrom" Name="from" PropertyName="SelectedValue" 
                                    Type="String" />
                                <asp:ControlParameter ControlID="DropDownListTo" Name="to" PropertyName="SelectedValue" 
                                    Type="String" />
                                <asp:ControlParameter ControlID="TextBoxTime" Name="departure" 
                                    PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="CheckBoxIsMain" 
                                    Name="searchChangesInMainCities" PropertyName="Checked" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
                        SelectCommand="SP_CalculateRoutes" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListFrom" Name="from" PropertyName="SelectedValue" 
                                Type="String" />
                            <asp:ControlParameter ControlID="DropDownListTo" Name="to" PropertyName="SelectedValue" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBoxTime" Name="departure" 
                                PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="CheckBoxIsMain" DefaultValue="0" 
                                Name="searchChangesInMainCities" PropertyName="Checked" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                                        &nbsp;</td>
            </tr>
        </table>
    </p>
    </asp:Content>
