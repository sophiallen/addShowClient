<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addShowArtist.aspx.cs" Inherits="addShowArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show / Artist</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Add New Show</h1>
        <table>
            <tr>
                <td>Show Name</td>
                <td><asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowNameReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ShowNameTextBox" ValidationGroup="newshow"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Show Date:</td>
                <td><asp:TextBox ID="ShowDateTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowDateReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ShowDateTextBox" ValidationGroup="newshow"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Show Time:</td>
                <td><asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowTimeReqValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ShowTimeTextBox" ValidationGroup="newshow"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Ticket Info:</td>
                <td><asp:TextBox ID="TicketInfoTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="TicketInfoReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="TicketInfoTextBox" ValidationGroup="newshow"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="AddShowSubmit" runat="server" Text="AddShow" OnClick="AddShowSubmit_Click" ValidationGroup="newshow" /></td>
                <td><asp:Label ID="AddShowFeedback" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>

        <h1>Add New Artist</h1>
        <table>
            <tr>
                <td>Artist Name:</td>
                <td><asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ArtistNameReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ArtistNameTextBox" ValidationGroup="newartist"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Artist Email:</td>
                <td><asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationGroup="newartist" ControlToValidate="ArtistEmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>Artist Website:</td>
                <td><asp:TextBox ID="ArtistWebsiteTextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="ArtistSubmitBtn" runat="server" Text="Add Artist" OnClick="ArtistSubmitBtn_Click" ValidationGroup="newartist"/></td>
                <td><asp:Label ID="AddArtistFeedback" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>

        <h1>Add Show Detail</h1>
        <table>
            <tr>
                <td>Select Show:</td>
                <td>
                    <asp:DropDownList ID="ShowDropDownList" runat="server"></asp:DropDownList></td>
                <td>
                    <asp:RequiredFieldValidator ID="ShowRequired" runat="server" ErrorMessage="Required" ControlToValidate="ShowDropDownList" ValidationGroup="addshowdetail"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Select Artist:</td>
                <td><asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList></td>
                <td><asp:RequiredFieldValidator ID="ArtistRequired" runat="server" ErrorMessage="Required" ControlToValidate="ArtistDropDownList" ValidationGroup="addshowdetail"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Artist Start Time:</td>
                <td><asp:TextBox ID="ShowDetailStartTimeTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowDetStartTimeReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ShowDetailStartTimeTextBox" ValidationGroup="addshowdetail"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="AddShowDetailBtn" runat="server" Text="Add Show Detail" OnClick="AddShowDetailBtn_Click" ValidationGroup="addshowdetail" /></td>
                <td><asp:Label ID="AddShowDetFeedback" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
