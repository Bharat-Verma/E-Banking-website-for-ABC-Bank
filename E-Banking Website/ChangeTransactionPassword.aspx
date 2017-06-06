<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangeTransactionPassword.aspx.cs" Inherits="ChangeTransactionPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <b>
        <br style="color: #FF99FF" />
        <span style="color: #FF99FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="font-weight: normal; color: #0099FF">&nbsp;Enter Current Transaction Password&nbsp;</span><span style="color: #FF99FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="180px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Textbox empty" ControlToValidate="TextBox1" ForeColor="Lime" ValidationGroup="f">*</asp:RequiredFieldValidator>
        </span></b>
    </p>
    <p style="color: #FF99CC">
        <span style="color: #FF99FF">
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
        </span><span style="color: #0099FF">&nbsp;Enter New Transaction Password </span>
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <span style="color: #FF99FF">
        <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="180px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="textbox empty" ControlToValidate="TextBox2" ForeColor="Lime" ValidationGroup="f">*</asp:RequiredFieldValidator>
        </span></b>
    </p>
    <p style="color: #FF99CC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FFFFFF" />
    <br />
    <p style="color: #FF99CC">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Black" Height="35px" style="font-weight: 700; margin-left: 0px;" Text="OK" Width="144px" OnClick="Button1_Click1" BorderColor="Yellow" ForeColor="Red" ValidationGroup="f" CssClass="auto-style1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="Red" Height="35px" style="font-weight: 700; margin-bottom: 0px" Text="BACK" Width="144px" OnClick="Button1_Click2" BorderColor="Yellow" CssClass="auto-style1" PostBackUrl="~/PersonalDetails.aspx" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="color: #FF99CC">
        &nbsp;</p>
</asp:Content>

