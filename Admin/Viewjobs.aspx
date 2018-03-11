<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Viewjobs.aspx.cs" Inherits="Admin_Viewjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
        <Columns>
            <asp:BoundField DataField="iJid" HeaderText="Job Id" InsertVisible="False" ReadOnly="True" SortExpression="iJid" />
            <asp:BoundField DataField="vJobTitle" HeaderText="Job Title" SortExpression="vJobTitle" />
            <asp:BoundField DataField="tDescription" HeaderText="Description" SortExpression="tDescription" />
            <asp:BoundField DataField="dLastDate" HeaderText="Last Date For Applying" SortExpression="dLastDate" />
            <asp:BoundField DataField="iNoOfPost" HeaderText="No Of Post" SortExpression="iNoOfPost" />
            <asp:BoundField DataField="vRequiredQualification" HeaderText="Qualification Required" SortExpression="vRequiredQualification" />
            <asp:BoundField DataField="vRequiredExp" HeaderText="Exp Required" SortExpression="vRequiredExp" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" onclick="return Confirm('Do U Really want to delete ?');" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","Viewjobs.aspx?dele={0}") %>'>Delete</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.iJid","EditJobs.aspx?edit={0}") %>'>Edit</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server">Delete</asp:HyperLink>
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:Label ID="lblerror" runat="server" ForeColor="#FF3300"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JR9VG22\SQLEXPRESS1;Initial Catalog=Jobportal;User ID=sa;Password=123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tbljobs]"></asp:SqlDataSource>
</asp:Content>

