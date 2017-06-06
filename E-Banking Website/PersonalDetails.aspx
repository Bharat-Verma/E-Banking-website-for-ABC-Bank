 <%@ Page Title="Personal Details" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="PersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p style="color: #CC99FF">
        +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <table style="width: 100%">
        <tr>
            <td style="text-align: right; width: 493px"> <span style="color: #0099CC">Permanent Address:
    </span>
            </td>
            <td> <span style="color: #0099CC">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </span>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 493px; color: #0099CC;">Correspondance Address: </td>
            <td><asp:Label ID="Label3" runat="server" Text="Label" style="color: #0099CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 30px; width: 493px; color: #0099CC;">City: </td>
            <td style="height: 30px">
    <asp:Label ID="Label4" runat="server" Text="Label" style="color: #0099CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 493px; color: #0099CC; height: 31px;">Zip Code: </td>
            <td style="height: 31px">
        <asp:Label ID="Label5" runat="server" Text="Label" style="color: #0099CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 493px; color: #0099CC;">Telephone No.:</td>
            <td>
        <asp:Label ID="Label6" runat="server" Text="Label" style="color: #0099CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 493px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 493px">
    <asp:Button ID="Button1" runat="server" BackColor="Black" Height="40px" Text="CHANGE PASSWORD" Width="240px" OnClick="Button1_Click" BorderColor="Yellow" ForeColor="Red" style="font-weight: 700" />
            </td>
            <td>
    <asp:Button ID="Button2" runat="server" BackColor="Black" Height="40px" Text="CHANGE TRANSACTION PASSWORD" Width="240px" OnClick="Button2_Click" BorderColor="Yellow" ForeColor="Red" style="font-weight: 700" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="Black" BorderColor="Yellow" ForeColor="Red" PostBackUrl="~/LoggedInHome.aspx" style="font-weight: 700; font-size: large" Text="Back" Height="40px" Width="240px" />
            </td>
        </tr>
    </table>
    
    </asp:Content>

