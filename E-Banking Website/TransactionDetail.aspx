<%@ Page Title="Transaction details" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="TransactionDetail.aspx.cs" Inherits="TransactionDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="height: 651px">

        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="auto-style6"><span class="auto-style8">Transaction Details</span></span><br />
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ALIGN="CENTER" Height="333px" Width="913px" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" PageSize="4" BorderStyle="None" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="WITHDRAWLS" HeaderText="Withdrawls" SortExpression="WITHDRAWLS" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" >
<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="DEPOSIT" HeaderText="Deposit" SortExpression="DEPOSIT" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="BALANCE" HeaderText="Balance" SortExpression="BALANCE" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="STATEMENT_DATE" HeaderText="Transaction Date" SortExpression="STATEMENT_DATE" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle BorderColor="#FFFF99" BorderWidth="6px" ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BANKConnectionString %>" SelectCommand="SELECT [WITHDRAWLS], [DEPOSIT], [STATEMENT_DATE], [BALANCE] FROM [STATEMENT] WHERE ([ACCNUMBER] = @ACCNUMBER) ORDER BY [STATEMENT_DATE] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="ACCNUMBER" SessionField="ACCNUMBER" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" align="center" Text="Back" OnClick="Button1_Click" BackColor="Black" BorderColor="Yellow" ForeColor="Silver" Height="40px" style="font-weight: 700; font-size: x-large" Width="120px" />
    </div>
</asp:Content>

