<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        Please Enter Your Login-ID Which is Registered with our Job-Portal.</p>
    <p>
        <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login ID:&nbsp;<asp:TextBox ID="txtmailid" runat="server"></asp:TextBox>
        <asp:Button ID="btnsubmit" runat="server" height="22px" OnClick="btnsubmit_Click" Text="Submit" />
    </p>
</asp:Content>

