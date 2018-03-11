<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <asp:Label ID="lblerror" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
<br />
<table cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
        <td>&nbsp;&nbsp;<table cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" Font-Size="Small" ForeColor="#333333" GridLines="None" Height="50px" Width="100%" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="vName" HeaderText="Name:" SortExpression="vName" />
                            <asp:BoundField DataField="vAddress" HeaderText="Address:" SortExpression="vAddress" />
                            <asp:BoundField DataField="vCountry" HeaderText="Country:" SortExpression="vCountry" />
                            <asp:BoundField DataField="vPhone" HeaderText="Phone:" SortExpression="vPhone" />
                            <asp:BoundField DataField="vMailId" HeaderText="Mail Id:" SortExpression="vMailId" />
                            <asp:BoundField DataField="vCollegeName" HeaderText="College Name:" SortExpression="vCollegeName" />
                            <asp:BoundField DataField="vUniversityName" HeaderText="University Name:" SortExpression="vUniversityName" />
                            <asp:BoundField DataField="vDegree" HeaderText="Degree:" SortExpression="vDegree" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                </td>
                <td style="vertical-align: top">
                    <img alt="" src="Images/job.png" style="border-style: solid; width: 307px; height: 225px" /></td>
            </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-JR9VG22\SQLEXPRESS1;Initial Catalog=Jobportal;User ID=sa;Password=123" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblusers] WHERE ([vLoginId] = @vLoginId)">
                <SelectParameters>
                    <asp:SessionParameter Name="vLoginId" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

