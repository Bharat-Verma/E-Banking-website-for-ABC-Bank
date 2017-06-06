<%@ Page Title="Balance Enquiry" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BalanceEnquiry.aspx.cs" Inherits="BalanceEnquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 549px">


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#CCFF66"></asp:Label>
        <br />
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Align="center" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="STATEMENT_DATE" HeaderText="DATE" SortExpression="STATEMENT_DATE" />
                <asp:BoundField DataField="BALANCE" HeaderText="BALANCE" SortExpression="BALANCE" />
                <asp:BoundField DataField="DEPOSIT" HeaderText="DEPOSIT" SortExpression="DEPOSIT" />
                <asp:BoundField DataField="WITHDRAWLS" HeaderText="WITHDRAWLS" SortExpression="WITHDRAWLS" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />

            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BANKConnectionString %>" SelectCommand="SELECT TOP 3 [STATEMENT_DATE], [BALANCE], [DEPOSIT], [WITHDRAWLS] FROM [STATEMENT] WHERE ([ACCNUMBER] = @ACCNUMBER) ORDER BY [STATEMENT_DATE] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="ACCNUMBER" SessionField="ACCNUMBER" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        
        <asp:Button ID="Button1" runat="server" Height="34px" Align="center"  Text="OK" Width="119px" OnClick="Button1_Click1" BackColor="Black" BorderColor="#FF0066" ForeColor="Red" style="font-weight: 700; font-size: x-large" />


    </div>
</asp:Content>

