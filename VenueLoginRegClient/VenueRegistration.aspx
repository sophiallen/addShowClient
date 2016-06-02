<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VenueRegistration.aspx.cs" Inherits="VenueRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register New Venue</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Register New Venue</h1>
        <table>
            <tr>
                <td>Venue Name</td>
                <td><asp:TextBox ID="VenNameTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="NameRequiredValidate" runat="server" ErrorMessage="Required" ControlToValidate="VenNameTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><asp:TextBox ID="VenAddrsTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="AddressValidate" runat="server" ErrorMessage="Required" ControlToValidate="VenAddrsTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>City</td>
                <td><asp:TextBox ID="VenCityTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="CityValidate" runat="server" ErrorMessage="Required" ControlToValidate="VenCityTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>State</td>
                <td><asp:TextBox ID="VenStateTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="StateValidate" runat="server" ErrorMessage="Required" ControlToValidate="VenStateTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><asp:TextBox ID="VenZipTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="ZipValidate" runat="server" ErrorMessage="Required" ControlToValidate="VenZipTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ZipCodeCheck" runat="server" ErrorMessage="&amp;nbsp;  Invalid Zip Code" ControlToValidate="VenZipTextBox" ValidationExpression="\d{5}?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><asp:TextBox ID="VenPhoneTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="PhoneValidator" runat="server" ErrorMessage="Required" ControlToValidate="VenPhoneTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Email (will act as your username)</td>
                <td><asp:TextBox ID="VenEmailTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Required   " ControlToValidate="VenEmailTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegExValidator" runat="server" ErrorMessage="&amp;nbsp; Invalid Email" ControlToValidate="VenEmailTextBox" EnableClientScript="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Web Page</td>
                <td><asp:TextBox ID="VenWebpgTextBox" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="WebPageValidator" runat="server" ErrorMessage="Required" ControlToValidate="VenWebpgTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Age Restriction</td>
                <td><asp:TextBox ID="VenAgeRstTextBox" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="VenPassTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="PasswdValidator" runat="server" ErrorMessage="Required" ControlToValidate="VenPassTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox ID="VenConfirmPassTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="PassConfirmValidator" runat="server" ErrorMessage="Required" ControlToValidate="VenConfirmPassTextBox"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="PassMatchValidator" runat="server" ErrorMessage="Passwords Must Match" ControlToCompare="VenPassTextBox" ControlToValidate="VenConfirmPassTextBox"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Register:</td>
                <td>
                    <asp:Button ID="RegSubmitBtn" runat="server" Text="Submit" OnClick="RegSubmitBtn_Click"/></td>
                <td>
                    <asp:Label ID="RegrationErrorLabel" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
