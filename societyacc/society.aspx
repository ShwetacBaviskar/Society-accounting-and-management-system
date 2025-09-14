<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="society.aspx.cs" Inherits="Sociatyacc.society" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 416px;
        }
    .auto-style4 {
        width: 78%;
        height: 569px;
        border: 1px solid #CCFFFF;
        margin-left: 204px;
    }
    .auto-style5 {
            width: 180px;
        }
        .auto-style6 {
            margin-left: 215px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style8 {
            width: 822px;
        }
        .auto-style9 {
            height: 415px;
            width: 1367px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image2" runat="server" Height="363px" ImageUrl="~/images/build.jpg" Width="680px" />
            </td>
            <td style="font-size: 35px; background-color: #FFCCFF">Enter here society information</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table class="auto-style4" style="border-style: ridge; border-width: thin; background-color: #CCCCFF;">
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label runat="server" Text="id"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin" class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label2" runat="server" Text="Society Name"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin" class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin" class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" autocomplete="off" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label4" runat="server" Text="Register number"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin" class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                &nbsp;<asp:Label ID="Label6" runat="server" Text="PAN number"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin" class="auto-style8">
                <asp:TextBox ID="TextBox5" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: ridge; border-width: thin" class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="submit" Height="38px" Width="159px" BackColor="#66FFFF" />
            </td>
        </tr>
</table>
    <p class="auto-style9">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style6" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="188px" Width="1147px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="SocietyName" HeaderText="SocietyName" SortExpression="SocietyName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="RegistrationNumber" HeaderText="RegistrationNumber" SortExpression="RegistrationNumber" />
                <asp:BoundField DataField="PANNumber" HeaderText="PANNumber" SortExpression="PANNumber" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocietyManagementConnectionString8 %>" SelectCommand="SELECT * FROM [societyinfo]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
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
    <p>
    </p>
</asp:Content>
