<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ResumeBuilder.aspx.cs" Inherits="ResumeBuilder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <table width="100%" border="0" cellspacing="2" cellpadding="2">
        <tr>
            <td align="left" style="width: 56%; height: 29px;">&nbsp;</td>
            <td style="height: 29px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="20px" />
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 56%; height: 29px;"></td>
            <td style="height: 29px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 56%">
                <div align="left" style="color: #800000">
                    PERSONAL INFORMATION</div>
            </td>
            <td></td>
        </tr>
        <tr>
            <td align="right" style="width: 56%">*Name :</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" valign="top" style="width: 56%">Address :</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Height="63px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 56%">*Country :</td>
            <td>&nbsp;<asp:DropDownList ID="ddlcountry" runat="server" Height="16px" Width="178px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlcountry" ErrorMessage="Please Select Country" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 56%">*Phone :</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone" ErrorMessage="Please Enter Phone No" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 56%">*Mail ID :</td>
            <td>
                <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtmail" ErrorMessage="Please Enter Mail ID" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="Left" style="width: 56%; color: #800000;">QUALIFICATION&nbsp; DETAILS</td>
            <td></td>
        </tr>
        <tr>
            <td align="Right" style="width: 56%">*10th :</td>
            <td>
                <asp:TextBox ID="txt10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="Right" style="width: 56%">*12th :</td>
            <td>
                <asp:TextBox ID="txt12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="Right" style="width: 56%">Graduation:</td>
            <td>
                <asp:TextBox ID="txtgraduation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="Right" style="width: 56%">Post Graduation:</td>
            <td>
                <asp:TextBox ID="txtpostgraduation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="Right" style="width: 56%">
                <h3 style="text-align: left; color: #800000;">Resume File</h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="Right" style="width: 56%; vertical-align: top; font-size: small; color: #000000;">Select Resume File:<br />
                Please Select a .doc/.docx/.pdf/.text file only</td>
            <td>
                <asp:FileUpload ID="Uploadfile" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Uploadfile" ErrorMessage="Please Select Resume" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:Label ID="LblFileError" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 56%"></td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Width="81px" OnClick="btnsubmit_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

