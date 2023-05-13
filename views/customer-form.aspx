<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" AutoEventWireup="false" CodeFile="customer-form.aspx.vr" Inherits="CustomerForm" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
    <%--#
// HttpContext.Current.IsDebuggingEnabled is true when the application 
// is running under debug. This lets you conditionally include different 
// code for debug/production. In this case the same code is included but 
// it would be good if the CSS were combined and minified for production.
// If you did that the combined and minified CSS would be specified 
// for the production version.
#--%>
    <%
    If (HttpContext.Current.IsDebuggingEnabled)     
    %>
    <link rel="stylesheet" href="/public/css/one-column-layout.css">
    <link rel="stylesheet" href="/public/css/grid.css">
    <%
    Else
    %>
    <link rel="stylesheet" href="/public/css/one-column-layout.css">
    <link rel="stylesheet" href="/public/css/grid.css">
    <%
    EndIf 
    %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">

    <div class="container">
        <h2>Customer Form</h2>
        <header>
            header
        </header>

        <main>

            <div>
                <asp:Panel ID="panelInput" runat="server">
                    <div class="row mt-3">
                        <div class="col-12 mt-3">
                            <label for="field_CMCustNo" class="form-label">Customer Number</label>
                            <asp:TextBox ID="field_CMCustNo" runat="server" placeholder="Name" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-12 mt-3">
                            <label for="field_CMName" class="form-label">Name</label>
                            <asp:TextBox ID="field_CMName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Name required" ControlToValidate="field_CMName"></asp:RequiredFieldValidator>

                            <asp:CustomValidator ID="customvalidatorCMName" runat="server" ErrorMessage="CustomValidator" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ControlToValidate="field_CMName" ValidateEmptyText="True"></asp:CustomValidator>
                        </div>
                        <div class="col-12 mt-3">
                            <label for="field_CMAddr1" class="form-label">Address</label>
                            <asp:TextBox ID="field_CMAddr1" runat="server" PlaceHolder="City" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Address required" ControlToValidate="field_CMAddr1"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-6 mt-3">
                            <label for="field_CMCity" class="form-label">City</label>
                            <asp:TextBox ID="field_CMCity" runat="server" PlaceHolder="City" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="City required" ControlToValidate="field_CMCity"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-6 mt-3">
                            <label for="field_CMState" class="form-label">State</label>
                            <asp:DropDownList ID="field_CMState" runat="server" CssClass="form-control form-select"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-6 mt-3">
                            <label for="field_CMPostCode" class="form-label">Zip</label>
                            <asp:TextBox ID="field_CMPostCode" runat="server" PlaceHolder="Zip code" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Zip code required" ControlToValidate="field_CMPostCode"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="field_CMPostCode" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Zip code must be in the format nnnnn or nnnnn-nnnn" ValidationExpression="^\d{5}(-\d{4})?$"></asp:RegularExpressionValidator>

                            <%-- See this page to try out this regex: /^\d{5}(-\d{4})?$/ https://regex101.com/r/lC1xQy/1 --%>
                        </div>
                        <div class="col-6 mt-3">
                            <label for="field_CMCntry" class="form-label">Country</label>
                            <asp:TextBox ID="field_CMCntry" runat="server" PlaceHolder="Country" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Country required" ControlToValidate="field_CMCntry"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="row">
                        <div class="row mt-3">
                            <div class="col-12 mt-3">
                                <label for="field_CMFax"
                                    class="form-label">
                                    Fax
                                </label>
                                <asp:TextBox ID="field_CMFax"
                                    runat="server"
                                    placeholder="Fax number"
                                    CssClass="form-control"
                                    ReadOnly="false">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="row mt-3">
                            <div class="col-12 mt-3">
                                <label for="field_CMPhone"
                                    class="form-label">
                                    Phone number
                                </label>
                                <asp:TextBox ID="field_CMPhone"
                                    runat="server"
                                    placeholder="Phone number"
                                    CssClass="form-control"
                                    ReadOnly="false">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 mt-3">
                            <div class="form-check">
                                <asp:CheckBox ID="field_CMActive" runat="server" PlaceHolder="Active" CssClass="form-control" />
                                <label class="form-check-label" for="field_CMActive">
                                    Active
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 mt-3">
                        <asp:Button ID="buttonCancel" runat="server" Text="Cancel" CssClass="btn btn-danger ms-3" CausesValidation="False" />
                        <asp:Button ID="buttonUpdateCustomer" runat="server" Text="Update" CssClass="btn btn-success" />
                    </div>
                </asp:Panel>
            </div>


        </main>

        <footer>
            footer
        </footer>
    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PageScripts" runat="Server">
    <script>
        applib.removeAspNetCheckboxWrapper('input[type="radio"],input[type="checkbox"]');
    </script>
</asp:Content>
