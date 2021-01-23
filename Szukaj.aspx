<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.aspx.cs" Inherits="WebApplication4.Szukaj" %>

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


    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/images/favico.png" rel="shortcut icon" type="image/x-icon" />



<style>
        
.panel {
    box-shadow: 1px 10px 10px 10px #333333;
    border-radius: 25px;
    background-image: url("images/background.png");
    background-repeat: no-repeat;
    background-size: cover;
}
</style>

</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
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
                <%--Site Scripts--%>
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

                    <a class="navbar-brand" runat="server" href="~/" >
        <img style="max-width:200px; margin-top: -46px;" src="/images/logo.png"> </a>
                    <!-- <a class="navbar-brand" runat="server" href="~/" style="font-size:x-large;">GraphER</a> -->
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/About.aspx" style="font-size: small">Informacje</a></li>
                        <li><a runat="server" href="~/Contact.aspx" style="font-size: small">Kontakt</a></li>
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><input type="text" style="margin-top:10px;" class="form-control search-slt" placeholder="Wyszukaj.."></li>
                        <li> &nbsp;&nbsp;   </li>
                        <li><asp:Button Text ="Szukaj" style="margin-top:9px;" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="100px" PostBackUrl="~/Szukaj.aspx" /></li>
                   <li> &nbsp;&nbsp;   </li>
                             <a class="navbar-brand" runat="server" href="~/Logowanie.aspx">
                             <img style="max-width:35px; margin-top: -7px;" src="/images/ikona.png" alt="Kliknij, by przejść do konta." title="Kliknij, by przejść do konta.">
                            <!--<asp:Image ID="Image_YES" runat="server" Width="30px" ImageUrl="~/images/logged_icon_yes.png" Visible="false"/> -->
                        </a>
                        
                    </ul>
                    
                </div>
  
  


</div>
</div>
        <div>
        </div>
    </form>
</body>
</html>
