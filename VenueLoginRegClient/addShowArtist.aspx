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
                <td><asp:RequiredFieldValidator ID="ShowNameReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ShowNameTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Show Date:</td>
                <td><asp:TextBox ID="ShowDateTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowDateReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ShowDateTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Show Time:</td>
                <td><asp:TextBox ID="ShowTimeTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowTimeReqValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ShowTimeTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Ticket Info:</td>
                <td><asp:TextBox ID="TicketInfoTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="TicketInfoReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="TicketInfoTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="AddShowSubmit" runat="server" Text="AddShow" OnClick="AddShowSubmit_Click" /></td>
                <td><asp:Label ID="AddShowFeedback" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>

        <h1>Add New Artist</h1>
        <table>
            <tr>
                <td>Artist Name:</td>
                <td><asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ArtistNameReqValidator" runat="server" ErrorMessage="Required" ControlToValidate="ArtistNameTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="ArtistSubmitBtn" runat="server" Text="Add Artist"/></td>
            </tr>
        </table>

        <h1>Add Show Detail</h1>
        <table>
            <tr>
                <td>Select Show:</td>
                <td>
                    <asp:DropDownList ID="ShowDropDownList" runat="server"></asp:DropDownList></td>
                <td>
                    <asp:RequiredFieldValidator ID="ShowRequired" runat="server" ErrorMessage="Required" ControlToValidate="ShowDropDownList"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Select Artist:</td>
                <td><asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList></td>
                <td><asp:RequiredFieldValidator ID="ArtistRequired" runat="server" ErrorMessage="Required" ControlToValidate="ArtistDropDownList"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Artist Start Time:</td>
                <td><asp:TextBox ID="ShowDetailStartTimeTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="ShowDetStartTimeReqValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ShowDetailStartTimeTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Button ID="AddShowDetailBtn" runat="server" Text="Add Show Detail" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
