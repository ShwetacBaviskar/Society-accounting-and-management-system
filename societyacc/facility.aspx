<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="facility.aspx.cs" Inherits="Sociatyacc.facility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style4 {
        width: 78%;
        height: 365px;
        border: 1px solid #CCFFFF;
        margin-left: 204px;
    }
    .auto-style5 {
        width: 340px;
    }
        .auto-style6 {
            margin-left: 204px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #FF99FF">
        <asp:Image ID="Image2" runat="server" Height="313px" ImageUrl="~/images/facility.jpg" Width="651px" />
    </p>
    <p style="font-size: 35px">
&nbsp;&nbsp;&nbsp; Information about facility</p>
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
                <asp:Label runat="server" Text="Society id"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label3" runat="server" Text="Facility name"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: ridge; border-width: thin">
                <asp:Label ID="Label4" runat="server" Text="Charge per day"></asp:Label>
            </td>
            <td style="border-style: ridge; border-width: thin">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="164px" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="border-style: ridge; border-width: thin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/back.png" OnClick="ImageButton1_Click" Width="73px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="submit" Height="37px" OnClick="Button1_Click" Width="112px" BackColor="#66FFFF" />
            </td>
        </tr>
</table>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button2" runat="server" Height="78px" OnClick="Button2_Click1" Text="view data" Width="210px" />
    </p>
    <p class="auto-style6">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1139px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="SocietyId" HeaderText="SocietyId" SortExpression="SocietyId" />
                <asp:BoundField DataField="FacilityName" HeaderText="FacilityName" SortExpression="FacilityName" />
                <asp:BoundField DataField="ChargesPerDay" HeaderText="ChargesPerDay" SortExpression="ChargesPerDay" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SocietyManagementConnectionString8 %>" DeleteCommand="DELETE FROM [FacilityInfo] WHERE [Id] = @original_Id AND (([SocietyId] = @original_SocietyId) OR ([SocietyId] IS NULL AND @original_SocietyId IS NULL)) AND (([FacilityName] = @original_FacilityName) OR ([FacilityName] IS NULL AND @original_FacilityName IS NULL)) AND (([ChargesPerDay] = @original_ChargesPerDay) OR ([ChargesPerDay] IS NULL AND @original_ChargesPerDay IS NULL))" InsertCommand="INSERT INTO [FacilityInfo] ([Id], [SocietyId], [FacilityName], [ChargesPerDay]) VALUES (@Id, @SocietyId, @FacilityName, @ChargesPerDay)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FacilityInfo]" UpdateCommand="UPDATE [FacilityInfo] SET [SocietyId] = @SocietyId, [FacilityName] = @FacilityName, [ChargesPerDay] = @ChargesPerDay WHERE [Id] = @original_Id AND (([SocietyId] = @original_SocietyId) OR ([SocietyId] IS NULL AND @original_SocietyId IS NULL)) AND (([FacilityName] = @original_FacilityName) OR ([FacilityName] IS NULL AND @original_FacilityName IS NULL)) AND (([ChargesPerDay] = @original_ChargesPerDay) OR ([ChargesPerDay] IS NULL AND @original_ChargesPerDay IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_SocietyId" Type="Int32" />
                <asp:Parameter Name="original_FacilityName" Type="String" />
                <asp:Parameter Name="original_ChargesPerDay" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="SocietyId" Type="Int32" />
                <asp:Parameter Name="FacilityName" Type="String" />
                <asp:Parameter Name="ChargesPerDay" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SocietyId" Type="Int32" />
                <asp:Parameter Name="FacilityName" Type="String" />
                <asp:Parameter Name="ChargesPerDay" Type="Double" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_SocietyId" Type="Int32" />
                <asp:Parameter Name="original_FacilityName" Type="String" />
                <asp:Parameter Name="original_ChargesPerDay" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
