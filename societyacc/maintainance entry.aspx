<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="maintainance entry.aspx.cs" Inherits="Sociatyacc.maintainance_entry" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style4 {
        width: 78%;
        height: 446px;
        border: 1px solid #CCFFFF;
        margin-left: 204px;
    }
    .auto-style5 {
        width: 340px;
    }
    .auto-style6 {
        margin-left: 0px;
    }
        .auto-style7 {
            margin-left: 214px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;<asp:Image ID="Image2" runat="server" Height="318px" ImageUrl="~/images/mainenance entry.jpg" Width="566px" />
    </p>
    <p style="font-size: 35px">
        Maintenance entry</p>
    <table class="auto-style4" style="border-style: ridge; border-width: thin; background-color: #CCCCFF;">
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label2" runat="server" Text="Society id"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label3" runat="server" Text="Flat number"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label8" runat="server" Text="Amount"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label5" runat="server" Text="Month"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox5" runat="server" autocomplete="off" TextMode="Month"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
&nbsp; 
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Paid" />
                &nbsp;&nbsp;
                write here amount paid or not</td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label9" runat="server" Text="Paid date"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox6" runat="server" autocomplete="off" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: ridge; border-width: thin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" CssClass="auto-style6" Text="Submit" Width="142px" OnClick="Button1_Click" />
            </td>
        </tr>
</table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Height="70px" OnClick="Button4_Click" Text="View data" Width="184px" />
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowCustomPaging="True" AllowPaging="True" CssClass="auto-style7" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1273px" Visible="False">
            <Columns>
                <asp:BoundField DataField="societyid" HeaderText="societyid" SortExpression="societyid" />
                <asp:BoundField DataField="flatnumber" HeaderText="flatnumber" SortExpression="flatnumber" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                <asp:BoundField DataField=" Paid_date" HeaderText=" Paid_date" SortExpression=" Paid_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocietyManagementConnectionString8 %>" SelectCommand="SELECT * FROM [maintainace__entry]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#3399FF" BorderStyle="Dotted" ForeColor="Black" Height="97px" OnClick="Button3_Click" Text="To Generate report in pdf click here" Width="526px" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
