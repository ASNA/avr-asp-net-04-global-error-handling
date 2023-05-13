<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" AutoEventWireup="false" CodeFile="customer-number.aspx.vr" Inherits="views_customer_number" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <div class="container">

        <div class="row">
            <div class="col">
            </div>
            <div class="col">
                <div class="mb-3">
                    <label for="customernumber" class="form-label">Customer number</label>
                    <asp:TextBox cssclass="form-control" ID="textboxCustomerNumber" name="customernumber" runat="server" required placeholder="Customer number"></asp:TextBox>
                    <asp:CustomValidator ID="customvalidatorCustomerNumber" runat="server" ErrorMessage="error msg not provided for custom validator" 
                        CssClass="alert alert-danger p-1" 
                                Display="Dynamic"
                                ControlToValidate="textboxCustomerNumber" 
                                ValidateEmptyText="True"></asp:CustomValidator>

                </div>
                <div style="text-align: center;">
                    <asp:Button ID="buttonPostBackUrl" 
                                runat="server" 
                                Text="OK-postbackurl" 
                                CssClass="btn btn-primary" 
                                style="min-width: 8rem;" 
                                PostBackUrl="customer-form.aspx"/>
                    <asp:Button ID="buttonPostBack" 
                                runat="server" 
                                Text="OK-postback" 
                                CssClass="btn btn-primary" 
                                style="min-width: 8rem;" />
                </div>

            </div >
            <div class="col">
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="Server">
</asp:Content>

