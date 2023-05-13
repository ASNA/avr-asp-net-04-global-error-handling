<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" AutoEventWireup="false" CodeFile="login.aspx.vr" Inherits="views_login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">

    <div class="container">
        <div class="form-group mt-3">
            <label for="user">User</label>
            <asp:TextBox placeholder="User name (godzilla)" CssClass="form-control" ID="user" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="form-text error-message" ID="userRequiredValidator" ControlToValidate="user" runat="server" ErrorMessage="Please enter user name" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group mt-3">
            <label for="password">Password</label>
            <asp:TextBox placeholder="Password (mothra)" CssClass="form-control" ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="form-text error-message" ID="passwordRequiredValidator" ControlToValidate="password" runat="server" ErrorMessage="Please enter your password" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group form-check mt-3">
            <asp:CheckBox CssClass="form-check-input" ID="rememberme" runat="server" ClientIDMode="Static" />
            <label class="form-check-label" for="rememberme">Remember me</label>
        </div>
        <br />
        <asp:Button CssClass="btn btn-primary mt-3" ID="buttonlogin" runat="server" Text="Login" />
        <asp:CustomValidator CssClass="alert alert-danger" ID="loginFailedValidator" runat="server" ErrorMessage="Login failed" Display="Dynamic"></asp:CustomValidator>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" Runat="Server">

<script>
    applib.removeAspNetCheckboxWrapper('input[type="checkbox"]');
</script>
</asp:Content>

