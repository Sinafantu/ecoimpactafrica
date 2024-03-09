<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Electricityconsumption.aspx.cs" Inherits="ecoimpactafrica.Electricityconsumption" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/snackbarjs/1.1.0/snackbar.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/snackbarjs/1.1.0/snackbar.min.js"></script>

    <style>
        /* CSS Styles for the form */
        body {
            background-image: url('https://princetondg.com/wp-content/uploads/2021/10/Increasing-Need-for-Data-Centers-to-Provide-Visibility-on-Carbon-Footprint.jpg'); /* Replace 'your-background-image-url.jpg' with the URL of your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color:#7BFEFF;
        }

        .container {
            margin-top: 10px;
        }

        .card {
            padding: 20px; /* Adjusted padding */
            background-color: rgba(255, 255, 255, 0.0); /* Adjusted background color with opacity */
            color:#7BFEFF;
        }

        h2 {
            color:#7BFEFF;
            text-align: center;
        }
       
        .panel {
               color:#7BFEFF;      
            padding: 20px;
        }
        
        .btn-success {
            background-color: #7BFEFF;
            border-color: #7BFEFF;
            color: #000;
            width: 100%; /* Set button width to 100% */
        }
    </style>

    <div class="container">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-4"> <!-- Changed column width to 12 -->
                        <div class="card p-2" style="color:#7BFEFF;">
                            <h2>Electricity Consumption</h2>
                            <hr />
                            <div style="color:white;">
<asp:Literal runat="server" ID="ResultMessage" />

                            </div>
                            <div class="panel">
                                <div class="form-group">
                                    <label for="DropDownList2">Energy Source</label><br />
                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control input-sm" runat="server">
                                        <asp:ListItem Text="Select" />
                                        <asp:ListItem Text="Grid" />
                                        <asp:ListItem Text="Solar" />
                                        <asp:ListItem Text="Wind" />
                                        <asp:ListItem Text="Electric" />
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="TextBox1">Electricity Usage</label><br />
                                    <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="TextBox1" class="form-control input-sm" placeholder="kwh "></asp:TextBox>
                                </div>
                                <div class="form-group text-center">
                                    <asp:Button Text="Submit" ID="btnSubmitElectricity" OnClick="btnSubmitElectricity_Click" CssClass="btn btn-lg btn-success" Width="250px" runat="server"/>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </div>

    <script type="text/javascript">
        function showSnackbar() {
            toastr.success('Data submitted successfully!');
        }
    </script>
</asp:Content>
