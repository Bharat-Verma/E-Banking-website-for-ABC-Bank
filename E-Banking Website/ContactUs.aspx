<%--Contact--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <tr>
        <td>
                                <h2>How to contact us</h2>
                        <p style="width: 219px; height: 95px">
                            If you ever have any questions or comments about our products,
        please be sure to contact us in whatever way is most convenient to you.
                        </p>

            <table class="nav-justified">
                <tr>
                    <td style="width: 266px; height: 36px;">
                        <asp:Label ID="lbl_CusDis_sel_cust" runat="server" Text="Phone:" Font-Bold="True"></asp:Label>
                        <br />
                    </td>
                    <td style="height: 36px">1-800-555-0400<br />
                        Weekdays, 8 to 5 Central Time<br />

                    </td>
                </tr>
                <tr>
                    <td style="width: 266px">
                        <asp:Label ID="lbl_CusDis_cust_add" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
                    </td>
                    <td>

                        <asp:HyperLink CssClass="hyperlink" runat="server"
                            NavigateUrl="mailto:abcbankinfo@abcbank.com"> 
                abcbankinfo@abcbank.com</asp:HyperLink>

                    </td>
                </tr>
                <tr>
                    <td style="width: 266px; height: 22px;">

                        <asp:Label ID="lbl_CusDis_cust_add0" runat="server" Text="Fax:" Font-Bold="True"></asp:Label>

                    </td>
                    <td style="height: 22px">1-559-555-2732<br />

                    </td>
                </tr>
                <tr>
                    <td style="width: 266px">

                        <asp:Label ID="lbl_CusDis_cust_add1" runat="server" Text="Address:" Font-Bold="True"></asp:Label>

                        <br />
                        <br />

                    </td>
                    <td>ABC Bank Corp.<br />
                        1500 N. Main Street<br />
                        Chicago, Illinois 60861</td>
                </tr>
            </table>
        </td>
    </tr>
</asp:Content>

