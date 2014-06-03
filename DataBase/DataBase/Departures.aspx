<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departures.aspx.cs" Inherits="DataBase.Departures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="departureId" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="departureId" HeaderText="departureId" 
            InsertVisible="False" ReadOnly="True" SortExpression="departureId" />
        <asp:BoundField DataField="routeId" HeaderText="routeId" 
            SortExpression="routeId" />
        <asp:CheckBoxField DataField="directionAccordingToRoute" 
            HeaderText="directionAccordingToRoute" 
            SortExpression="directionAccordingToRoute" />
        <asp:BoundField DataField="departureHour" HeaderText="departureHour" 
            SortExpression="departureHour" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RozkladyConnect %>" 
    SelectCommand="SELECT * FROM [Departures]"></asp:SqlDataSource>
</asp:Content>
