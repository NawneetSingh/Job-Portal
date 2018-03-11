<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewResume.aspx.cs" Inherits="Admin_ViewResume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        View Resumes:</p>
    <p>
        <asp:Label ID="lblerror" runat="server"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="vName" HeaderText="Name" SortExpression="vName" />
                <asp:BoundField DataField="vPhone" HeaderText="Phone" SortExpression="vPhone" />
                <asp:BoundField DataField="vMailId" HeaderText="Mail Id" SortExpression="vMailId" />
                <asp:BoundField DataField="v10th" HeaderText="10th" SortExpression="v10th" />
                <asp:BoundField DataField="v12th" HeaderText="12th" SortExpression="v12th" />
                <asp:BoundField DataField="vGraduation" HeaderText="Graduation" SortExpression="vGraduation" />
                <asp:BoundField DataField="vPostGraduation" HeaderText="Post Graduation" SortExpression="vPostGraduation" />
                <asp:BoundField DataField="vJobId" HeaderText="vJobId" SortExpression="vJobId" />
                <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container,"DataItem.vResume","../Resume/{0}") %>'>Download</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"Dataitem.iRid","ViewResume.aspx?del={0}") %>'>Delete</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JR9VG22\SQLEXPRESS1;Initial Catalog=Jobportal;User ID=sa;Password=123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblresume]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    </p>
</asp:Content>

