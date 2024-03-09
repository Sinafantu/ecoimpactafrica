<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ecoimpactafrica.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        /* CSS Styles for Register Page */
        body {
            background-image: url('https://princetondg.com/wp-content/uploads/2021/10/Increasing-Need-for-Data-Centers-to-Provide-Visibility-on-Carbon-Footprint.jpg'); /* Replace 'your-background-image-url.jpg' with the URL of your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white; /* Text color */
        }

        main {
            padding: 20px;
        }

        .form-group label {
            color: #7BFEFF ; /* Label text color */
        }

        .form-control {
            background-color: rgba(0, 0, 0, 0.5); /* Background color for form controls with 50% opacity */
            color: #7BFEFF; /* Text color for form controls */
            border: none; /* Remove border */
        }

        .btn {
            background-color: #343a40;
            margin-top:30px;/* Button background color */
            color: #7BFEFF; /* Button text color */
        }

        .btn:hover {
            background-color: #212529; /* Hover background color */
        }
        h4{
color: #7BFEFF; 
        }
        p{
            color: #7BFEFF; 
        }
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="row">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 col-form-label">Email</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 col-form-label">Password</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 col-form-label">Confirm password</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="row">
            <div class="offset-md-2 col-md-4">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-outline-dark" />
            </div>
        </div>
    </main>
</asp:Content>
