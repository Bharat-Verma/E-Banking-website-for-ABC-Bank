<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
        <br />
        <span style="color: #FF99FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <span style="color: #0099FF">Enter Your Current Password</span><span style="color: #FF99FF"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="180px" TextMode="Password" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </b></span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Textbox empty" SetFocusOnError="True" ControlToValidate="TextBox1" ForeColor="Lime" ValidationGroup="m">*</asp:RequiredFieldValidator>
    </p>
    <p style="color: #FF99CC">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #0066CC">New Password&nbsp;&nbsp;</span> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="180px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Textbox empty" SetFocusOnError="True" ControlToValidate="TextBox2" ForeColor="Lime" ValidationGroup="m">*</asp:RequiredFieldValidator>
    </p>
    <p style="color: #FF99CC">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White"></asp:Label>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="font-weight: 700; color: #FFFFFF" />
    <p style="color: #FF99CC">
        &nbsp;</p>
    <p style="color: #FF99CC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="Red" Height="35px" style="font-weight: 700; margin-bottom: 0px" Text="OK" Width="144px" OnClick="Button1_Click1" BorderColor="Yellow" ValidationGroup="m" CssClass="auto-style1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="Red" Height="35px" style="font-weight: 700; margin-bottom: 0px" Text="BACK" Width="144px" OnClick="Button1_Click2" BorderColor="Yellow" CssClass="auto-style1" PostBackUrl="~/PersonalDetails.aspx" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>



</asp:Content>

