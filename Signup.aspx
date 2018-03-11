<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

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
    <td style="height: 29px">
        &nbsp;</td>
    </tr>
    <tr>
    <td align="left" style="width: 56%; color: #800000;">LOGIN INFORMATION</td>
    <td></td>
    </tr>
  <tr>
    <td style="width: 56%"><div align="right">*Login ID : </div></td>
    <td width="43%">
        <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlogin" ErrorMessage="Please Enter Correct Login Id" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td style="width: 56%; height: 15px;"><div align="right">*Password : </div></td>
    <td style="height: 15px" class="auto-style1">
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Please Enter Correct Password" ForeColor="Red">*</asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td style="width: 56%; height: 24px;"><div align="right">*Re-Type Password :</div></td>
    <td style="height: 24px">
        <asp:TextBox ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrepassword" ErrorMessage="Please Enter Valid Password" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrepassword" ErrorMessage="Please Enter Same Password as Entered Above" ForeColor="Red">*</asp:CompareValidator>
      </td>
  </tr>
  <tr>
    <td style="width: 56%"><div align="left" style="color: #800000">PERSONAL INFORMATION</div></td>
    <td> </td>
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
  <td align="Left" style="width: 56%; color: #800000;">EDUCATIONAL DETAILS</td>
  <td></td>
  </tr>
  <tr>
  <td align="Right" style="width: 56%">College Name :</td>
  <td>
      <asp:TextBox ID="txtcollege" runat="server"></asp:TextBox>
      </td>
  </tr>
   <tr>
  <td align="Right" style="width: 56%">University Name :</td>
  <td>
      <asp:TextBox ID="txtuniversity" runat="server"></asp:TextBox>
       </td>
  </tr>
   <tr>
  <td align="Right" style="width: 56%">Degree :</td>
  <td>
      <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="161px">
          <asp:ListItem>Select</asp:ListItem>
          <asp:ListItem>B.Tech</asp:ListItem>
      </asp:DropDownList>
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

