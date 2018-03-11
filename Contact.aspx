<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">

     <table width="100%" border="0" cellspacing="5" cellpadding="5">
  <tr>
    <td width="65%" align="center" valign="top">Fantastic Five<br />
    #49/17,4th Cross,Opp.Prasantha Hospital<br />
    Hotel Archana Grand Road,Bomanahalli<br />
    Bangalore-68
    Email:<a href="Nawneet051.nalanda@gmail.com">Nawneet051.nalanda@gmail.com</a></td>
    <td width="35%"><img src="Images/contact.jpg" width="235" height="215" alt="Conatct" /></td>
  </tr>
  <tr>
    <td colspan="2"><hr / size="0"></td>
    </tr>
    <tr>
    <td colspan="2"><table width="100%" border="0" cellspacing="5" cellpadding="5">
    <tr>
    <td colspan="2" style="color:#FF00FF; background-color:#0C0">Post Your Query Here....Always Ready To Hear From Our Well Wishers </td>
    </tr>
      <tr>
        <td width="42%" align="right">Name :</td>
        <td width="58%"><input  type="text" name="txtname" /></td>
      </tr>
      <tr>
        <td align="right">Phone No :</td>
        <td><input  type="text" name="txtphone" /></td>
      </tr>
      <tr>
        <td align="right">Mail ID :</td>
        <td><input  type="text" name="txtmail" /></td>
      </tr>
      <tr>
        <td align="right" valign="top">Query</td>
        <td><textarea cols="30" rows="5"></textarea></td>
      </tr>
      <tr>
        <td align="right"></td>
        <td><input type="button" name="btnsubmit" value="Submit" /></td>
      </tr>
    </table></td>
    </tr>
</table>

 </td>
  </tr>
</table></td>
  </tr>




 </asp:Content>

