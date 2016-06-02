<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Log In</h1>
        <table>
            <tr>
                <td>Venue Username</td>
                <td>
                    <asp:TextBox ID="VenueUsernameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Venue Password</td>
                <td>
                    <asp:TextBox ID="VenuePasswdTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" /></td>
                <td>
                    <asp:Label ID="LoginErrorLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="RegisterLinkBtn" runat="server" PostBackUrl="~/VenueRegistration.aspx">Register New Venue</asp:LinkButton>
    </div>
    </form>
</body>
</html>
