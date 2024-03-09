<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ecoimpactafrica.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        /* CSS Styles for About Page */
        body {
            background-image: url('https://princetondg.com/wp-content/uploads/2021/10/Increasing-Need-for-Data-Centers-to-Provide-Visibility-on-Carbon-Footprint.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .about-container {
            max-width: 500px;
            margin: 20px 0 20px 20px; /* Adjusted margin to move the container to the left */
            padding: 20px;
            background-color: rgba(20, 68, 68, 0.1); /* Adjusted background color */
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .about-container h2 {
            color: #7BFEFF;
            font-family: cursive;
            text-align: left;
        }

        .about-container p {
            color: #7BFEFF;
            text-align: justify;
            line-height: 1.6;
        }
    </style>

    <div class="about-container">
        <header>
    </header>
    <main>
        <section>
            <h2>Our Mission</h2>
            <p>Here at Carbon Footprint Organization, our mission is clear: to promote environmental sustainability. We've developed the Carbon Footprint Tracker to help individuals and businesses understand and reduce their carbon footprint.</p>
        </section>
        <section>
            <h2>Who We Are</h2>
            <p>Carbon Footprint Organization is a passionate team of environmental enthusiasts dedicated to making a positive impact on the world. We believe that through innovation and education, we can inspire meaningful change and combat climate change.</p>
        </section>
        <section>
            <h2>Why We Created</h2>
            <p>We created the Carbon Footprint Tracker because we recognized the need for accessible tools that empower individuals and businesses to take action against climate change. Our goal is to make it easy for everyone to understand their environmental impact and make informed decisions to reduce it.</p>
        </section>
        
    </main>
    
    </div>
</asp:Content>
