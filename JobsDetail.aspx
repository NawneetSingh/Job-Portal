<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="JobsDetail.aspx.cs" Inherits="JobsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="iJid" HeaderText="Job ID:" InsertVisible="False" ReadOnly="True" SortExpression="iJid" />
            <asp:BoundField DataField="vJobTitle" HeaderText="Job Title:" SortExpression="vJobTitle" />
            <asp:BoundField DataField="tDescription" HeaderText="Description:" SortExpression="tDescription" />
            <asp:BoundField DataField="dLastDate" HeaderText="Last Date Of Applying:" SortExpression="dLastDate" />
            <asp:BoundField DataField="iNoOfPost" HeaderText="No Of Post:" SortExpression="iNoOfPost" />
            <asp:BoundField DataField="vRequiredQualification" HeaderText="Required Qualification:" SortExpression="vRequiredQualification" />
            <asp:BoundField DataField="vRequiredExp" HeaderText="Required Exp:" SortExpression="vRequiredExp" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JR9VG22\SQLEXPRESS1;Initial Catalog=Jobportal;User ID=sa;Password=123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbljobs] WHERE ([iJid] = @iJid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="iJid" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="btnapply" runat="server" OnClick="btnapply_Click" Text="Apply Now" />
</asp:Content>

