<%@ Page Title="Login Page" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<head>
    <style type="text/css">
        .auto-style1 {
            height: 484px;
            margin-left: 0px;
            width: 644px;
        }

        .auto-style2 {
            width: 641px;
            height: 410px;
        }

        .auto-style3 {
            width: 325px;
            height: 410px;
        }

        .auto-style4 {
            height: 621px;
        }

        .auto-style6 {
            margin-left: 0px;
        }

        .auto-style7 {
            height: 23px;
        }

        .auto-style8 {
            width: 109px;
            height: 410px;
        }

        .auto-style9 {
            margin-top: 0px;
        }

        .auto-style10 {
            height: 248px;
        }

        .auto-style11 {
            width: 109px;
            height: 248px;
        }

        .auto-style12 {
            height: 48px;
        }

        .auto-style13 {
            width: 109px;
            height: 48px;
        }
    </style>
</head>

<table class="auto-style4">    
<tr>
        <td class="auto-style11">&nbsp;</td>
    
        <td class="auto-style10" colspan="2">
            <a href="Home.aspx"><asp:Image ID="Image1" runat="server" Height="246px" Width="974px" ImageUrl="~/images/banner_1_login.png" title="ABC Bank" CssClass="auto-style9" />
            </a>
        </td>
    
    </tr>
<tr>
        <td class="auto-style8"></td>
    
        <td class="auto-style3">
            <h3><asp:HyperLink CssClass="hyperlink" runat="server" NavigateUrl="~/Home.aspx" Font-Bold="True" Font-Size="Large">Go to Home Page</asp:HyperLink></h3>
            <h2>Login Page</h2>
            <h3>Do not have an account??</h3>
          <br />
            <b><span >Create Account: </span></b><a href="CreateNewAccount.aspx">Fill Application Form</a>
            <br />
            <br />
&nbsp;<b><span >You have to login first in order to: </span>
                <br />
                </b>&nbsp;<b><br />
                <span >&nbsp;1. Transfer Funds<br />
            </span><br />
                <span >&nbsp;2. View Statement</span><br />
                <span >
            <br />
            &nbsp;3. Utility Payment</span></b></td>
    
        <td class="auto-style2">
            <form ID="form1" runat="server"><div  style="background-image: url('/images/15WUk.jpg'); background-repeat: repeat; background-attachment: inherit; color: #800000; margin-bottom: 3px;" class="auto-style1">
<span style="font-weight: bold; font-size: x-large; color: #FF6600;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABC Bank User Login</span>
<span style="font-weight: bold; font-size: medium; color:#000000">
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp; Username: </span><span style="font-size: medium;" >
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="145px" OnTextChanged="TextBox1_TextChanged" BorderColor="#FF0066" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter user name" ValidationGroup="ii" ForeColor="Black">*</asp:RequiredFieldValidator>
            <br />
            <br />    
            </span><span style="font-weight: bold; font-size: medium; color:#000000">&nbsp; Password:&nbsp; </span>
            <asp:TextBox ID="TextBox2" runat="server" Height="28px" TextMode="Password" Width="145px" BorderColor="#FF0066" CssClass="auto-style6" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter password" ValidationGroup="ii" ForeColor="Black">*</asp:RequiredFieldValidator>
            <br />
                <br />
&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ii" ForeColor="Black" />
            <br />
                    <div style="margin-left: 80px">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="116px" Height="31px" style="font-weight: 500; color: #000000" ValidationGroup="ii" />
            </div>
            <br />
            <br />
            <b><span style="font-weight: 700; color: #000000">&nbsp; Create Account: </span></b><a href="CreateNewAccount.aspx">Fill Application Form</a><br />
&nbsp;<b><span style="font-weight: 700; color: #000000">
                <br />
&nbsp; Admin Login: </span></b><a href="Admin.aspx">Go to Admin Login Page</a>
            <br />
            <br />
                
        </div>
                </form>
            </td>
    </tr>
    <tr>
        <td </td>
    
        <td class="auto-style7" colspan="2"
            align="center" valign="middle" class="copyright" style="background-color:#4cff00; color: #000000">Copyright © 2016 <asp:HyperLink CssClass="hyperlink" runat="server"
                            NavigateUrl="~/Home.aspx" ID="HyperLink1">abcbankonline.com</asp:HyperLink> All Rights Reserved</td>
    
    </tr>
    </table>       


