<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="CreateNewAccount.aspx.cs" Inherits="CreateNewAccount" %>




<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style33"><strong>Fill the form below for New Bank Account Creation</strong></span><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style7">&nbsp;&nbsp; </span><span class="auto-style6"><span class="auto-style5">
                <br />
                </span></span><b><span class="auto-style3"/><br />
                    <table class="auto-style18">
                        <tr>
                            <td class="auto-style24">Customer Type:</td>
                            <td class="auto-style20">&nbsp; <asp:RadioButton ID="RadioButton1" runat="server" Text="Public" CssClass="auto-style30" ForeColor="Black" OnCheckedChanged="RadioButton1_CheckedChanged" />
                    <span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:RadioButton ID="RadioButton2" runat="server" Text="Staff" CssClass="auto-style30" OnCheckedChanged="RadioButton2_CheckedChanged" ForeColor="Black" />
                    <span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Senior Citizen" CssClass="auto-style30" ForeColor="Black" />
                    <span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Minor" CssClass="auto-style30" ForeColor="Black" />
                    <span class="auto-style13">&nbsp;&nbsp;
                    </span></td>
                        </tr>
                        </span><span class="auto-style14"/>
                        <tr>
                            <td class="auto-style25">*Name:</td>
                            </span><span class="auto-style3"/>
                            <td class="auto-style26">
                    <asp:TextBox ID="TextBox1" runat="server" Width="260px" CssClass="auto-style15" Height="22px"></asp:TextBox>
                    <b><span class="auto-style13"> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter Name</asp:RequiredFieldValidator>
                    </span></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27" >*Father&#39;s Name:</td>
                            <td class="auto-style31">
                    <asp:TextBox ID="TextBox4" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox4" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter Father's Name</asp:RequiredFieldValidator>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Date of Birth:</td>
                            <td class="auto-style31">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style16" Height="22px" Width="260px"></asp:TextBox>
                    <b><span class="auto-style13"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter DOB</asp:RequiredFieldValidator>
                    </span>
                                </b>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Gender:</td>
                            <td class="auto-style22">
                    <b>
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Male" CssClass="auto-style30" ForeColor="Black" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="Female" CssClass="auto-style30" OnCheckedChanged="RadioButton4_CheckedChanged" ForeColor="Black" />
                                </b>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Nationality:</td>
                            <td class="auto-style20"><b><span class="auto-style3"/>
                    <asp:TextBox ID="TextBox25" runat="server" CssClass="auto-style16" Height="22px" Width="260px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox25" CssClass="auto-style13" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter Nationality</asp:RequiredFieldValidator>
                                </span></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Mother&#39;s Name:</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBox6" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    <span class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox6" ErrorMessage="Empty" ForeColor="black" Font-Size="Large">Please Enter Mother's Name</asp:RequiredFieldValidator>
                    </span>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Marital Status:</td>
                            <td class="auto-style20">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="264px" Height="22px">
                                    <asp:ListItem Value="1">Married</asp:ListItem>
                                    <asp:ListItem Value="2">Single</asp:ListItem>
                                    <asp:ListItem Value="3">Widowed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Correspondance Address:</td>
                            <td class="auto-style20"><b><span class="auto-style3"/>
                                <asp:TextBox ID="TextBox26" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox26" CssClass="auto-style13" ErrorMessage="choose an option" ForeColor="black" Font-Size="Large">Please Enter Corrs Address</asp:RequiredFieldValidator>
                                </span></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Permanent Address:</td>
                            <td class="auto-style20"><b><span class="auto-style3"/>
                                <asp:TextBox ID="TextBox27" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox27" ErrorMessage="Empty" ForeColor="black" Font-Size="Large">Please Enter Perm Address</asp:RequiredFieldValidator>
                                </span></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Street Name:</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBox10" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">District: </td>
                            <td class="auto-style32">
                    <asp:TextBox ID="TextBox11" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*State:</td>
                            <td class="auto-style20"><b><span class="auto-style3"/>
                    <span class="auto-style4">
                    <asp:TextBox ID="TextBox28" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox28" ErrorMessage="Empty" ForeColor="black" Font-Size="Large">Please Enter State</asp:RequiredFieldValidator>
                    </span>
                                </span></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Zip Code:</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style16" Height="22px" Width="260px" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox12" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter ZIP</asp:RequiredFieldValidator>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*City:</td>
                            <td class="auto-style20"><b><span class="auto-style3"/>
                                <asp:TextBox ID="TextBox29" runat="server" CssClass="auto-style16" Height="22px" Width="260px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox29" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter City</asp:RequiredFieldValidator>
                                </span></b>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Phone Number:</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style16" Height="22px" Width="260px" OnTextChanged="TextBox13_TextChanged"></asp:TextBox>
                    <span class="auto-style9"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter Phone Number</asp:RequiredFieldValidator>
                    </span></td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Landmark:</td>
                            <td class="auto-style31">
                    <asp:TextBox ID="TextBox18" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">*Email Address:</td>
                            <td class="auto-style31">
                    <asp:TextBox ID="TextBox22" runat="server" Width="260px" CssClass="auto-style16" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox22" ErrorMessage="empty" ForeColor="black" Font-Size="Large">Please Enter Email Address</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox22" ErrorMessage="invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="black" Font-Size="Large">Please Enter a valid Email Address</asp:RegularExpressionValidator>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Fax No.:</td>
                            <td class="auto-style31">
                    <asp:TextBox ID="TextBox23" runat="server" CssClass="auto-style16" Height="22px" MaxLength="40" Width="260px"></asp:TextBox>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28"></td>
                            <td class="auto-style29"></td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" Width="197px" BackColor="Black" CssClass="auto-style2" ForeColor="Yellow" Height="30px" />
                            </td>
                            <td class="auto-style20">
                    <span class="auto-style3"/>
                    <b>
                    <span class="auto-style2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Width="197px" BackColor="Black" CssClass="auto-style2" ForeColor="Yellow" PostBackUrl="~/Login.aspx" ValidationGroup="nnn" Height="30px" />
                    </span></b>
                    
                                

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                &nbsp;</td>
                            <td class="auto-style20">
                                &nbsp;</td>
                        </tr>
                    </table>
                    
</asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1
    {
        font-weight: bold;
        font-size: large;
    }
    .auto-style2
    {
        font-size: large;
    }
        .auto-style3
        {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4
        {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
            color: #FFFFFF;
        }
        .auto-style5 {
            text-decoration: underline;
            font-size: xx-large;
            color: #000000;
        }
        .auto-style6 {
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
            color: #CC0000;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
            color: #000066;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }
        .auto-style13 {
            font-size: x-large;
            color: #000066;
        }
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style15 {
            font-size: x-large;
            color: #CC0066;
        }
        .auto-style16 {
            font-size: x-large;
            margin-left: 0px;
            color: #CC0066;
        }
        .auto-style18 {
            width: 100%;
        }
        .auto-style19 {
            width: 208px;
            font-weight: bold;
            font-size: large;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style20 {
            width: 650px;
        }
        .auto-style22 {
            width: 650px;
            height: 23px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style24 {
            width: 208px;
            text-align: right;
            color: #000000;
            font-size: large;
        }
        .auto-style25 {
            width: 208px;
            text-align: right;
            color: #000000;
            font-size: large;
            height: 28px;
        }
        .auto-style26 {
            width: 650px;
            height: 28px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style27 {
            width: 208px;
            text-align: right;
            font-size: large;
            color: black;
        }
        .auto-style28 {
            width: 208px;
            height: 13px;
            text-align: right;
            font-size: large;
        }
        .auto-style29 {
            width: 650px;
            height: 13px;
        }
        .auto-style30 {
            font-size: large;
            color: #000066;
        }
        .auto-style31 {
            width: 650px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style32 {
            width: 650px;
            font-size: x-large;
            color: #FFFFFF;
            font-weight: bold;
            margin-left: 0px;
        }
        .auto-style33 {
            font-size: x-large;
            color: #99FF66;
            text-decoration: underline;
        }
    </style>
</asp:Content>



