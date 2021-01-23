<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SideMasterLog.aspx.cs" Inherits="WebApplication4.SideMasterLog" %>

<!DOCTYPE html>

<html lang="pl">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> GrapER - znajdź specjalistę!</title>
    
        <link rel="Stylesheet" href="HyperlinkHover.css" type="text/css" />
        <link rel="Stylesheet" href="Master.css" type="text/css" />

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/images/favico.png" rel="shortcut icon" type="image/x-icon" />
        
</head>
<body>
    <form runat="server">
<asp:ScriptManager runat="server">
<Scripts>
      <asp:ScriptReference Name="MsAjaxBundle" />
      <asp:ScriptReference Name="jquery" />
      <asp:ScriptReference Name="bootstrap" />
      <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
      <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
      <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
      <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
      <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
      <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
      <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
      <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
        <asp:ScriptReference Name="WebFormsBundle" />
</Scripts>
</asp:ScriptManager>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" runat="server" href="~/SideMasterLog.aspx" >
        <img style="max-width:200px; margin-top: -46px;" src="/images/logo.png"> </a>
                    <!-- <a class="navbar-brand" runat="server" href="~/" style="font-size:x-large;">GraphER</a> -->
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/About_log.aspx" style="font-size: small">Informacje</a></li>
                        <li><a runat="server" href="~/Contact_log.aspx" style="font-size: small">Kontakt</a></li>
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-middle">
                        <li><input type="text" style="margin-top:10px;" class="form-control search-slt" placeholder="Wyszukaj.."></li>
                        <li> &nbsp;&nbsp;   </li>
                        <li><asp:Button Text ="Szukaj" style="margin-top:9px;" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="110px" PostBackUrl="~/Szukaj_log.aspx" /></li>
                        
                        </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a runat="server" href="~/User.aspx" style="font-size: small">Mój profil</a></li>
                        <li><a runat="server"  href="~/Calendar.aspx" style="font-size: small">Mój kalendarz</a></li>

                                           <li> &nbsp;&nbsp;   </li>
                             <li><a runat="server" href="~/Logowanie.aspx"  style="font-size: small; color:#d2c270;">Wyloguj się&nbsp;<img style="max-width:35px; margin-top: -7px;" src="/images/ikona.png" title="Kliknij, by się wylogować."></a></li>
                        <li><asp:Label ID="label_log"  runat="server" visible="false"/></li>
                    </ul>
                    
                </div>
  

</div>
</div>
        <div class="container body-content" >
            <div class="jumbotron" style="background-color:black">
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
            <br />

            <footer>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GraphERConnectionString %>" SelectCommand="SELECT [email] FROM [Rejestracja_G]"></asp:SqlDataSource>

                <p>&copy; <%: DateTime.Now.Year %> - GraphER designed by Marcelina Woziwoda</p>
            </footer>
        </div>

    </form>
    
</body>
</html>
