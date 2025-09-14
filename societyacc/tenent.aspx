<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tenent.aspx.cs" Inherits="Sociatyacc.tenent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style4 {
        width: 78%;
        height: 424px;
        border: 1px solid #CCFFFF;
        margin-left: 204px;
    }
    .auto-style5 {
        width: 67px;
    }
    .auto-style6 {
        margin-left: 0px;
    }
        .auto-style7 {
            margin-left: 196px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #FFCCFF">
        &nbsp;<asp:Image ID="Image2" runat="server" Height="299px" ImageUrl="~/images/tenent.jpg" Width="482px" />
    </p>
    <p style="font-size: 35px">
        Information of Tenant&nbsp;</p>
    <table class="auto-style4" style="border-style: ridge; border-width: thin; background-color: #CCCCFF;">
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label runat="server" Text="id" ID="Label7"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label2" runat="server" Text="flat number"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label3" runat="server" Text="Society id"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label4" runat="server" Text="Tenant name"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label5" runat="server" Text="Parmanent Address"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label8" runat="server" Text="isActive"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="active" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: ridge; border-width: thin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" CssClass="auto-style6" Text="Submit" Width="142px" OnClick="Button1_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#66FFFF" OnClick="Button2_Click" Text="Delete" Width="137px" />
            </td>
        </tr>
</table>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="82px" OnClick="Button3_Click" Text="view data" Width="171px" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style7" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1175px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="flat_number" HeaderText="flat_number" SortExpression="flat_number" />
                <asp:BoundField DataField="society_id" HeaderText="society_id" SortExpression="society_id" />
                <asp:BoundField DataField="tenant_name" HeaderText="tenant_name" SortExpression="tenant_name" />
                <asp:BoundField DataField="permanant_address" HeaderText="permanant_address" SortExpression="permanant_address" />
                <asp:CheckBoxField DataField="isActive" HeaderText="isActive" SortExpression="isActive" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocietyManagementConnectionString8 %>" SelectCommand="SELECT * FROM [tenant]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
