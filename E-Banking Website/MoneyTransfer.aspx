


<%@ Page Title="MoneyTransfer" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="MoneyTransfer.aspx.cs" Inherits="MoneyTransfer"%>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <div><%-- style="height: 739px; font-size: x-large; background-image: url('/images/wood-simple-and-beautifull-texture-1391578.jpg');">--%>
      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="" style="color: #FFFFFF"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="White"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" style="color: #FFFFFF" Text="Label"></asp:Label>
    <br />
    <br />
        <br />
        <table style="width: 100%">
            <tr>
                <td style="width: 423px; text-align: right"><span style="color: #33CCFF"> Your Current Account Balance:</span></td>
                <td style="width: 545px"><span class="auto-style9"><span style="color: #33CCFF"> $<asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style9" style="color: #33CCFF"></asp:Label>
                    </span>
        </span></td>
            </tr>
            <tr>
                <td style="width: 423px; text-align: right"><span class="auto-style9"><span style="color: #00CCFF">Tranfer Funds to </span> </span><span class="auto-style2"><span class="auto-style6"><span class="auto-style8"><span style="font-size: medium; color: #00CCFF">(Enter Account Number)</span><span style="color: #00CCFF"><span style="color: #33CCFF">:</span></span><span style="font-size: medium; color: #00CCFF">&nbsp; </span></span></span> </span></td>
                <td style="width: 545px"> <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="231px" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Text box empty" style="color: #00FF00" ValidationGroup="pop">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 423px; text-align: right; color: #00CCFF">Amount:</td>
                <td style="width: 545px"><span class="auto-style9" style="color: #00CCFF">$<asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="219px"  ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Text box empty" style="color: #00FF00" ValidationGroup="pop">*</asp:RequiredFieldValidator>
                    </span></td>
            </tr>
            <tr>
                <td style="width: 423px; text-align: right"><span class="auto-style9"><span style="color: #00CCFF"> Enter your Transaction Password(UserID):</span></span></td>
                <td style="width: 545px"><asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="231px"  TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Text box empty" style="color: #66FF33" ValidationGroup="pop">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 423px">&nbsp;</td>
                <td style="width: 545px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 423px; text-align: right">
    <asp:Button ID="Button2" runat="server" Height="35px" Text="Transfer Amount" Width="210px" OnClick="Button2_Click" ValidationGroup="pop" BackColor="Black" BorderColor="Yellow" ForeColor="#CC0000" style="font-weight: 700; font-size: large" />
                </td>
                <td style="text-align: left; width: 545px">
        <asp:Button ID="Button3" runat="server" BackColor="Black" BorderColor="Yellow" ForeColor="Red" Height="35px" OnClick="Button3_Click" style="font-weight: 700; font-size: large" Text="Back" Width="90px" />
                </td>
            </tr>
            <tr>
                <td style="width: 423px">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FFFFFF; margin-top: 0px; font-size: large; margin-bottom: 0px;" Width="194px" />
                </td>
                <td style="width: 545px">&nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


              

    
</div>
</asp:Content>









