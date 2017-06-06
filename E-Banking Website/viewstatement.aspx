<%@ Page Title="View user statement" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="viewstatement.aspx.cs" Inherits="viewstatement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 521px; color: #FFCC66;" aria-haspopup="False" aria-orientation="vertical" aria-valuemax="3">

        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#CCFF66"></asp:Label>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Align="center"  DataSourceID="SqlDataSource1" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ACCNUMBER" HeaderText="ACCNUMBER" SortExpression="ACCNUMBER" />
                <asp:BoundField DataField="WITHDRAWLS" HeaderText="WITHDRAWLS" SortExpression="WITHDRAWLS" />
                <asp:BoundField DataField="DEPOSIT" HeaderText="DEPOSIT" SortExpression="DEPOSIT" />
                <asp:BoundField DataField="BALANCE" HeaderText="BALANCE" SortExpression="BALANCE" />
                <asp:BoundField DataField="STATEMENT_DATE" HeaderText="DATE" SortExpression="STATEMENT_DATE" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BANKConnectionString %>" SelectCommand="SELECT * FROM [STATEMENT] WHERE ([ACCNUMBER] = @ACCNUMBER) ORDER BY [STATEMENT_DATE] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="ACCNUMBER" SessionField="ACCNUMBER" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="OK" align="center" Height="33px" OnClick="Button1_Click" Width="105px" BackColor="Black" BorderColor="Yellow" ForeColor="Red" style="font-weight: 700; font-size: x-large" />

    </div>
</asp:Content>

