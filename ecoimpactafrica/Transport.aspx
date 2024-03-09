<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transport.aspx.cs" Inherits="ecoimpactafrica.Transport" %>
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
        }

        .card {
            padding: 20px; /* Add padding to the card */
            background-color: rgba(255, 255, 255, 0.0); /* Adjusted background color with opacity */
            border-radius: 10px; /* Rounded corners */
        }
        div{
            color:#7BFEFF;
        }

        h2 {
            text-align: center;
            color:#7BFEFF;
        }

        .btn-success {
            background-color: #7BFEFF; /* Change button color */
            border-color: #7BFEFF; /* Change button border color */
            color: #000; /* Change button text color */
            width: 10%; /* Set button width to 100% */
        }
    </style>

    <div class="container mt-5">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-4"> <!-- Changed column width to 12 -->
                        <div class="card p-6">
                            <h2>Transport Emissions</h2>
                            <br />
                             <div class="col-lg-12">
      <h6><asp:Literal runat="server" ID="ResultMessage" /></h6>
      
  </div>
                            <br />
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="txtregion" style ="color:#7BFEFF ">Vehicle Type</label><br />
                                    <asp:DropDownList ID="txtregion" CssClass="form-control input-sm" runat="server" style ="width:100%">
                                        <asp:ListItem Text="Select" />
                                        <asp:ListItem Text="Car" />
                                        <asp:ListItem Text="Bus" />
                                        <asp:ListItem Text="Truck" />
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label for="txtcell" style ="color:#7BFEFF">Distance Travelled</label><br />
                                    <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtcell" class="form-control input-sm" placeholder="km "></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="DropDownList1" style ="color:#7BFEFF">Fuel Type</label><br />
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control input-sm" runat="server">
                                        <asp:ListItem Text="Select" />
                                        <asp:ListItem Text="Gasoline" />
                                        <asp:ListItem Text="Diesel" />
                                        <asp:ListItem Text="Petrol" />
                                        <asp:ListItem Text="Electric" />
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label for="txtfuelconsumed" style ="color:#7BFEFF">Fuel Efficiency</label><br />
                                    <asp:TextBox runat="server" required="required" TextMode="Number" Enabled="True" name="BrandName" ID="txtfuelconsumed" class="form-control input-sm" placeholder="Mile"></asp:TextBox>
                                </div>
                                <div class="form-group text-center">
                                    <asp:Button Text="Submit" ID="btnSubmitTransport" OnClick="btnSubmitTransport_Click" CssClass="btn btn-lg btn-success" Width="250px" runat="server"/>
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
