<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Registration Form</h2>
    <table>
        <tr>
            <td>Enter First Name:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Enter Last Name:</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is Required.">
                </asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Enter Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Required."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must be a valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>Enter Street Address:</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Street Address is Required."></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Enter City:</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" ErrorMessage="City is Required."></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Enter State:</td>
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" ErrorMessage="State is Required."></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Enter Zip:</td>
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvZip" runat="server" ControlToValidate="txtZip" ErrorMessage="Zip Code is Required."></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Enter Phone:</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Using Format: ." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>Enter Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="Passwords must match"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirm" ErrorMessage="You must confirm password"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
            <td>
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label></td>       
        </tr>
    </table>
</asp:Content>

