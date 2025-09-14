<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="owner.aspx.cs" Inherits="Sociatyacc.owner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 8px;
        }
    .auto-style4 {
        width: 78%;
        height: 298px;
        border: 1px solid #CCFFFF;
        margin-left: 204px;
    }
    .auto-style5 {
        width: 95px;
    }
    .auto-style6 {
        margin-left: 0px;
    }
        .auto-style7 {
            margin-left: 206px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #FFCCFF">
        <asp:Image ID="Image2" runat="server" CssClass="auto-style2" Height="201px" ImageUrl="~/images/owner.jpg" Width="301px" />
    </p>
    <p>
        Enter here Owner information</p>
    <p>
        &nbsp;</p>
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
                <asp:Label ID="Label2" runat="server" Text="Flat  number"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label3" runat="server" Text="society id"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label4" runat="server" Text="Owner name"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label5" runat="server" Text="CoOwner name"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label6" runat="server" Text="Contact number"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label8" runat="server" Text="isResiding"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label9" runat="server" Text="isActive"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: ridge; border-width: thin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" CssClass="auto-style6" Text="Submit" Width="142px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Aqua" OnClick="Button2_Click" Text="Delete" Width="102px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#66FFFF" OnClick="Button4_Click" Text="update" Width="101px" />
            </td>
        </tr>
</table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" Height="74px" OnClick="Button3_Click" Text="View data" Width="153px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style7" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1152px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="flatId" HeaderText="flat number" SortExpression="flatId" />
                <asp:BoundField DataField="societyId" HeaderText="societyId" SortExpression="societyId" />
                <asp:BoundField DataField="OwnerName" HeaderText="OwnerName" SortExpression="OwnerName" />
                <asp:BoundField DataField="CoOwnerName" HeaderText="CoOwnerName" SortExpression="CoOwnerName" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:CheckBoxField DataField="isResiding" HeaderText="isResiding" SortExpression="isResiding" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocietyManagementConnectionString8 %>" SelectCommand="SELECT * FROM [Owner]"></asp:SqlDataSource>
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
