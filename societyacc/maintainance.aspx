<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="maintainance.aspx.cs" Inherits="Sociatyacc.maintainance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #FFFFCC">
        <asp:Image ID="Image2" runat="server" Height="348px" ImageUrl="~/images/maintenance a.jpg" Width="920px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TreeView ID="TreeView1" runat="server" Height="305px" Width="317px">
            <Nodes>
                <asp:TreeNode Text="Maintenance" Value="Maintenance">
                    <asp:TreeNode NavigateUrl="~/facility.aspx" Text="Facility info" Value="Facility info"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/maintenance info.aspx" Text="Maintenance info" Value="Maintenance info"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/maintainance entry.aspx" Text="Maintenance entry" Value="Maintenance entry"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </p>
    <p>
    </p>
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
