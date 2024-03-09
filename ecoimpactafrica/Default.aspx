<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecoimpactafrica._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* CSS Styles for Home Page */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Lato'; /* Changing to Montserrat font family */
            background-image: url('https://princetondg.com/wp-content/uploads/2021/10/Increasing-Need-for-Data-Centers-to-Provide-Visibility-on-Carbon-Footprint.jpg');
            background-size: cover;
            background-position: left; /* Aligning background to left */
            background-attachment: fixed; /* Keeps the background fixed while scrolling */
            height: 100vh; /* Set height to full viewport height */
            display: flex;
            justify-content: flex-start; /* Aligning container to left */
            align-items: center;
            color: #7BFEFF; /* Changing text color */
        }

        .home-container {
            max-width: 600px;
            width: 80%; /* Adjust width as needed */
            padding: 20px;
            /* Semi-transparent black background */
               box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .home-container h1,
        .home-container p {
            color: #7BFEFF; /* Changing text color */
        }

        /* CSS Styles for Button */
        .btn-success {
            background-color: #7BFEFF; /* Changing button color */
            color: black; /* Changing button text color */
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            font-family: 'Montserrat'; /* Applying Montserrat font to the button */
        }
    </style>

    <div class="home-container">
        <h1>Calculate Your Carbon Footprint</h1>
        <p>Discover the environmental impact of your daily activities and find ways to reduce your carbon footprint.</p>
                <a href="Transport.aspx" class="btn btn-lg btn-success">Calculate</a>
    </div>
</asp:Content>
