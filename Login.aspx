<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">

     <table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="47%">&nbsp;</td>
    <td width="53%">
        <asp:Label ID="lblerror" runat="server" ForeColor="Red" Font-Size="Small"></asp:Label>
      </td>
  </tr>
  <tr>
    <td width="47%"><div align="right">Login ID : </div></td>
    <td width="53%">
        <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlogin" ErrorMessage="Please Enter valid LoginId">*</asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td><div align="right">Password : </div></td>
    <td>
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Enter Valid Password">*</asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td><div align="right">
        <asp:CheckBox ID="chkrm" runat="server" />
        </div></td>
    <td>Remember Password </td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>&nbsp;<asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Login" />
      </td>
  </tr>
  <tr>
  <td></td>
  <td><a href="ForgetPassword.aspx">Forgot Password</a></td>
  </tr>
  <tr>
  <td></td>
  <td><a href="Signup.aspx">New User</a></td>
  </tr>
</table>  






</asp:Content>

