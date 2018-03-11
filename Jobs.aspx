<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" Font-Size="Small" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="vJobTitle" HeaderText="Job Title" SortExpression="vJobTitle" />
        <asp:BoundField DataField="tDescription" HeaderText="Description" SortExpression="tDescription" />
        <asp:BoundField DataField="dLastDate" HeaderText="Last Date" SortExpression="dLastDate" />
        <asp:BoundField DataField="iNoOfPost" HeaderText="No Of Post" SortExpression="iNoOfPost" />
        <asp:BoundField DataField="vRequiredQualification" HeaderText="Required Qualification" SortExpression="vRequiredQualification" />
        <asp:BoundField DataField="vRequiredExp" HeaderText="Required Exp" SortExpression="vRequiredExp" />
        <asp:TemplateField HeaderText="Details">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","JobsDetail.aspx?id={0}") %>'>Details</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Apply">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","ResumeBuilder.aspx?id={0}") %>'>Apply Now</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JR9VG22\SQLEXPRESS1;Initial Catalog=Jobportal;User ID=sa;Password=123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbljobs] ORDER BY [vJobTitle]"></asp:SqlDataSource>
</asp:Content>

