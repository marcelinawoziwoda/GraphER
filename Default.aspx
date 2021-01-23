<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="Stylesheet" href="HyperlinkHover.css" type="text/css" />
        <link rel="Stylesheet" href="Master.css" type="text/css" />

   


    <div class="jumbotron">
       <img class="img-responsive" src="/images/Grapher logo-non.png"> 
    </div>

    <!--

        <div class="carousel-item">
  <img src="" alt="...">
  <div class="carousel-caption d-none d-md-block">
    <h5>...</h5>
    <p>...</p>
  </div>
    </div>
        
    -->
   <div class="row">
        <div class="col-md-4">
            <div class ="shadow">
                <div class="shadow-no-4">
            <h2>O nas</h2>
            
            <p>
                <asp:Button Text ="Kliknij i sprawdź" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="175px"  CausesValidation="false"/>
            </p>
                    </div>
                </div>
        </div>
        <div class="col-md-4">
            <div class ="shadow">
                <div class="shadow-no-4">
            <h2>Jak używać GraphER'a?</h2>
            
            <p>
                <asp:Button Text ="Kliknij i sprawdź" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="175px"  CausesValidation="false"/>
            </p>
                    </div>
        </div>
            </div>
        <div class="col-md-4">
            <div class ="shadow">
                <div class="shadow-no-4">
            <h2>Regulamin</h2>
            
            <p>
                <asp:Button Text ="Kliknij i sprawdź" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="175px"  CausesValidation="false"/>
            </p>
        </div>
            </div>
            
    </div>
       </div>

</asp:Content>
