<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="WebApplication4.Logowanie" %>

<!DOCTYPE html>

<html lang="pl">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> GrapER - znajdź specjalistę!</title>



      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                <link rel="Stylesheet" href="HyperlinkHover.css" type="text/css" />
        <link rel="Stylesheet" href="Master.css" type="text/css" />
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

                    <a class="navbar-brand" runat="server" href="~/"  >
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
        
<div class="container body-content">

 <section id="wrapper">
            <div class ="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           
                            <div class ="col-md-4 col-md-offset-4">
                                 
                                
                                <img class="img-responsive" src="/images/logowanie.png" > 
                                
                            </div>
                              
                        </header>

                        <div class ="panel-body">
                            
                                <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2">

                                            <asp:Button Text ="Logowanie Facebook" ID="Button4" CssClass="btn btn-primary waves-effect waves-light" BorderColor="white" BackColor="#4267B2" runat="server" Font-size="Larger" Width="225px" CausesValidation="False" />
                                                                      
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            <br />
                                <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2">
                              
                                           <asp:Button Text ="Logowanie Gmail" ID="Button5" CssClass="btn btn-primary waves-effect waves-light" runat="server" BorderColor="white" BackColor="#DD4B39" Font-size="Larger" Width="225px"  CausesValidation="False" />
                                          </div>
                                        </div>
                                    </div>
                                </div>
                               <br />
                                <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2">
                                                           
                                           <asp:Button Text ="Logowanie Instagram" ID="Button1" CssClass="btn btn-primary waves-effect waves-light" runat="server" BorderColor="white" BackColor="#bc2a8d" Font-size="Larger"  Width="225px"  CausesValidation="False" />
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            <br />
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2">
                                        <asp:Label Text ="E-mail" runat="server" Font-Bold="true" Font-Size="Small" />
                                        <asp:TextBox ID="login1" runat="server" Enabled="true" TextMode="Email" CssClass="form-control input-sm"  Width="225px" placeholder="Wprowadź e-mail" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="login1" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    </div>
                                    </div>
                                </div>
                                
                            </div>

                           
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2">
                                        <asp:Label Text ="Hasło" runat="server" Font-Bold="true" Font-Size="Small"/>
                                        <asp:TextBox ID="haslo_log" runat="server" Enabled="true" TextMode="Password" CssClass="form-control input-sm"  Width="225px" placeholder="Wprowadź hasło" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="haslo_log" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    </div>
                                    </div>
                                </div>
                                
                            </div>



                            <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2" >
                                            
                                        <asp:Button Text ="Zaloguj się" ID="Logowanie_button" CssClass="btn btn-primary" Font-size="Larger"  Width="225px" runat="server" OnClick="Logowanie_button_Click" />
                                            <br />
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GraphERConnectionString %>" SelectCommand="SELECT [email], [haslo] FROM [Rejestracja_G]"></asp:SqlDataSource>
                                            <asp:Label ID="Label1" Visible="false" runat="server"  Font-Size="X-Small" ForeColor="Red" Font-Bold="true"></asp:Label>
                                            <br />
                                        
                                       <asp:Label Text="Nie masz konta? " runat="server"  /> <asp:HyperLink ID="HyperLink2" cssClass="HyperLinkHover" runat="server" NavigateUrl="~/Rejestracja.aspx" >Zarejestruj się.</asp:HyperLink>


                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                            </div>
                           
                       </div>
                       
                        
                            
                    </section>
                </div>
                </div>

            

        </section>
       




            
    
    
    
    <footer>
                <p>&copy; <%: DateTime.Now.Year %> - GraphER designed by Marcelina Woziwoda</p>
            
    </footer>
</div>

    </form>
    
</body>
</html>
