<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewJobs.aspx.cs" Inherits="Admin_AddNewJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        ADD NEW JOBS:</p>
    <p>
        <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="right">Job title:</td>
            <td>
                <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txttitle" ErrorMessage="Title Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top">Description:</td>
            <td>
                <asp:TextBox ID="txtDes" runat="server" Height="98px" TextMode="MultiLine" Width="183px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDes" ErrorMessage="Description Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">Last Of Applying: </td>
            <td>
                <asp:TextBox ID="txtapply" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtapply" ErrorMessage="Last Date required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">No Of&nbsp; Post:</td>
            <td>
                <asp:TextBox ID="txtpost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpost" ErrorMessage="Post Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">Qualification Required:</td>
            <td>
                <asp:TextBox ID="txtqual" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtqual" ErrorMessage="Qualification Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">Exprience Required:</td>
            <td>
                <asp:TextBox ID="txtexp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtexp" ErrorMessage="Exp Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td align="right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

