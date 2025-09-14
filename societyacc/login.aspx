<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Sociatyacc.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 795px;
        }
        .auto-style3 {
            width: 100%;
            height: 237px;
        }
        .auto-style4 {
            margin-left: 0px;
            margin-top: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border: 1cm double #666699; font-size: 35px; background-color: #FFFFCC;">
            &nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" CssClass="auto-style4" Height="60px" ImageUrl="~/images/login.jpg" Width="151px" />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Login Here"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="521px" ImageUrl="~/images/soen.jpg" Width="910px" />
                        <br />
                    </td>
                    <td>
            <table class="auto-style3" style="border: medium inset #333399; font-size: 35px; background-color: #FF00FF;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="213px" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="28px" Width="210px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter valid password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BackColor="#99CCFF" Height="38px" Width="95px" />
                    </td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if you are not register?
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx" ForeColor="#0066FF">Register Here</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
