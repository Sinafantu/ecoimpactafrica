<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ecoimpactafrica.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        body {
                        background-image: url('https://princetondg.com/wp-content/uploads/2021/10/Increasing-Need-for-Data-Centers-to-Provide-Visibility-on-Carbon-Footprint.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

       .container-bg {
    background-color: rgba(20, 68, 68, 0.1); /* Background color with 50% opacity */
    padding: 50px;
    width: 50%;
}

        #loginForm {
            margin-top: 50px;
            text-align: left; /* Align everything to the left */
            color: white; /* Text color */
        }
        
        #loginForm h4 {
            text-align: center;
            color: #7BFEFF;
            margin-bottom: 20px;
        }

        #loginForm .form-group {
            margin-bottom: 20px;
        }

        #loginForm .btn-login {
            width: 100%;
            background-color: #7BFEFF;
            color: white;
        }

        #loginForm .btn-login:hover {
            background-color: forestgreen;
        }

        #socialLoginForm {
            margin-top: 20px;
        }
        label {
            color: #7BFEFF;
        }
        
    </style>

    <main aria-labelledby="title">
        <div class="container-bg">
            <div class="row" ">
                <div class="col-md-12">
                    <section id="loginForm">
                        <div class="form-group row">
                            <h4 style="font-family: cursive;color: #7BFEFF;">Welcome! Please sign in to your account</h4>
                            <hr />
                            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="FailureText" />
                                </p>
                            </asp:PlaceHolder>
                        </div>
                        <div class="form-group row">
                            <label for="Email" class="col-md-2 col-form-label">Email</label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="Password" class="col-md-2 col-form-label">Password</label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="offset-md-2 col-md-10">
                                <div class="checkbox">
                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                    <label for="RememberMe">Remember me?</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="offset-md-2 col-md-10">
                                <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-login" style="background-color: #7BFEFF;color:#000;" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <p>
     <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" >Register as a new user</asp:HyperLink>
 </p>
                            <p>
                                <%-- Enable this once you have account confirmation enabled for password reset functionality
                                <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                                --%>
                            </p>
                        </div>
                    </section>
                </div>

                <div class="col-md-4">
                    <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
                </div>
            </div>
        </div>
    </main>
</asp:Content>
