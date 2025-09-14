<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="vendor.aspx.cs" Inherits="Sociatyacc.vendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style4 {
        width: 78%;
        height: 298px;
        border: 1px solid #CCFFFF;
        margin-left: 204px;
    }
    .auto-style5 {
        width: 340px;
    }
    .auto-style6 {
        margin-left: 0px;
    }
        .auto-style8 {
        margin-left: 317px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #FFCCFF">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="219px" ImageUrl="~/images/vendor.png" Width="309px" />
    </p>
    <p>
        Information of vendor&nbsp;</p>
    <table class="auto-style4" style="border-style: ridge; border-width: thin; background-color: #CCCCFF;">
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label3" runat="server" Text="vendor name"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label4" runat="server" Text="Types of sales/service"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label5" runat="server" Text="Charges"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label6" runat="server" Text="Additional info"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label8" runat="server" Text="Pay frequency"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: ridge; border-width: thin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" CssClass="auto-style6" Text="Submit" Width="142px" OnClick="Button1_Click" />
            </td>
        </tr>
</table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="83px" OnClick="Button2_Click" Text="view data" Width="173px" />
    </p>
    <p class="auto-style8">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1157px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="vendorname" HeaderText="vendorname" SortExpression="vendorname" />
                <asp:BoundField DataField="vendortype" HeaderText="vendortype" SortExpression="vendortype" />
                <asp:BoundField DataField="charges" HeaderText="charges" SortExpression="charges" />
                <asp:BoundField DataField="additionalinfo" HeaderText="additionalinfo" SortExpression="additionalinfo" />
                <asp:BoundField DataField="payFrequency" HeaderText="payFrequency" SortExpression="payFrequency" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SocietyManagementConnectionString8 %>" DeleteCommand="DELETE FROM [vendorInfo] WHERE [Id] = @original_Id AND (([societyid] = @original_societyid) OR ([societyid] IS NULL AND @original_societyid IS NULL)) AND (([vendorname] = @original_vendorname) OR ([vendorname] IS NULL AND @original_vendorname IS NULL)) AND (([vendortype] = @original_vendortype) OR ([vendortype] IS NULL AND @original_vendortype IS NULL)) AND (([charges] = @original_charges) OR ([charges] IS NULL AND @original_charges IS NULL)) AND (([additionalinfo] = @original_additionalinfo) OR ([additionalinfo] IS NULL AND @original_additionalinfo IS NULL)) AND (([payFrequency] = @original_payFrequency) OR ([payFrequency] IS NULL AND @original_payFrequency IS NULL))" InsertCommand="INSERT INTO [vendorInfo] ([Id], [societyid], [vendorname], [vendortype], [charges], [additionalinfo], [payFrequency]) VALUES (@Id, @societyid, @vendorname, @vendortype, @charges, @additionalinfo, @payFrequency)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [vendorInfo]" UpdateCommand="UPDATE [vendorInfo] SET [societyid] = @societyid, [vendorname] = @vendorname, [vendortype] = @vendortype, [charges] = @charges, [additionalinfo] = @additionalinfo, [payFrequency] = @payFrequency WHERE [Id] = @original_Id AND (([societyid] = @original_societyid) OR ([societyid] IS NULL AND @original_societyid IS NULL)) AND (([vendorname] = @original_vendorname) OR ([vendorname] IS NULL AND @original_vendorname IS NULL)) AND (([vendortype] = @original_vendortype) OR ([vendortype] IS NULL AND @original_vendortype IS NULL)) AND (([charges] = @original_charges) OR ([charges] IS NULL AND @original_charges IS NULL)) AND (([additionalinfo] = @original_additionalinfo) OR ([additionalinfo] IS NULL AND @original_additionalinfo IS NULL)) AND (([payFrequency] = @original_payFrequency) OR ([payFrequency] IS NULL AND @original_payFrequency IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_societyid" Type="Int32" />
                <asp:Parameter Name="original_vendorname" Type="String" />
                <asp:Parameter Name="original_vendortype" Type="String" />
                <asp:Parameter Name="original_charges" Type="String" />
                <asp:Parameter Name="original_additionalinfo" Type="String" />
                <asp:Parameter Name="original_payFrequency" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="societyid" Type="Int32" />
                <asp:Parameter Name="vendorname" Type="String" />
                <asp:Parameter Name="vendortype" Type="String" />
                <asp:Parameter Name="charges" Type="String" />
                <asp:Parameter Name="additionalinfo" Type="String" />
                <asp:Parameter Name="payFrequency" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="societyid" Type="Int32" />
                <asp:Parameter Name="vendorname" Type="String" />
                <asp:Parameter Name="vendortype" Type="String" />
                <asp:Parameter Name="charges" Type="String" />
                <asp:Parameter Name="additionalinfo" Type="String" />
                <asp:Parameter Name="payFrequency" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_societyid" Type="Int32" />
                <asp:Parameter Name="original_vendorname" Type="String" />
                <asp:Parameter Name="original_vendortype" Type="String" />
                <asp:Parameter Name="original_charges" Type="String" />
                <asp:Parameter Name="original_additionalinfo" Type="String" />
                <asp:Parameter Name="original_payFrequency" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
