<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ecoimpactafrica.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* CSS Styles for Contact Page */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            color: white;
            display: flex;
            align-items: center; /* Vertically center the content */
        }

        body {
            background-image: url('https://princetondg.com/wp-content/uploads/2021/10/Increasing-Need-for-Data-Centers-to-Provide-Visibility-on-Carbon-Footprint.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        main {
            padding: 40px;
        }

        address {
            color: white;
        }

        a {
            color: #7BFEFF;
        }

     
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <address>
            One Microsoft Way<br />
            <abbr title="Phone number">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">carbonfoot@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>

  
</asp:Content>
