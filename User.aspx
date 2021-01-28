<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="WebApplication4.User" %>

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
      * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 800px;
  position: relative;
  margin: auto;
        top: 30px;
        left: -3px;
    }

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 5px;
  width: 5px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}  
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
                        <li><asp:Button Text ="Szukaj" style="margin-top:9px;" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="110px" CausesValidation="false"  /></li>

                        </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a runat="server" href="~/User.aspx" style="font-size: small">Mój profil</a></li>
                        <li><a runat="server"  href="~/Calendar.aspx" style="font-size: small">Mój kalendarz</a></li>

                                           <li> &nbsp;&nbsp;   </li>
                             <li><a runat="server" href="~/Logowanie.aspx" style="font-size: small; color:#d2c270;">Wyloguj się&nbsp;<img style="max-width:35px; margin-top: -7px;" src="/images/ikona.png" title="Kliknij, by się wylogować."></a></li>
                        <li><asp:Label ID="label_log"  runat="server" visible="false"/></li>
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
                           
                                
                                <img class="img-responsive" src="/images/profil.png" > 
                                
                            </div>
                              
                        </header>

                        <div class ="panel-body">
                            
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Imię" Font-Bold="true" runat="server" />
                                        <asp:TextBox ID="imie" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Wprowadź imię" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imie" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Nazwisko" Font-Bold="true" runat="server" />
                                        <asp:TextBox ID="nazwisko" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Wprowadź nazwisko" />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nazwisko" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                  
                                        </div>
                                </div>
                            </div>
 

                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="E-mail" Font-Bold="true" runat="server" />
                                            <asp:Label ID="Label1" runat="server" Visible="false" Font-Size="X-Small" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="email" runat="server" Enabled="true" TextMode="Email" CssClass="form-control input-sm" placeholder="Wprowadź e-mail" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Numer telefonu" Font-Bold="true" runat="server" />
                                        <asp:TextBox ID="telefon" runat="server" Enabled="true" TextMode="Phone" CssClass="form-control input-sm" placeholder="###-###-###" MaxLength='9'/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="telefon" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    
                                    </div>
                                </div>
                            </div>

                            


                            
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label ID="check1" Font-Bold="true" Text ="Nazwa firmy" runat="server" Visible="true"/>
                                        <asp:TextBox ID="firma" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Wprowadz nazwę firmy" Visible="true"/>
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text="Rodzaj usług" Font-Bold="true" runat="server">
                                        <asp:TextBox ID="TextBox_usl" runat="server" Font-Bold="false" Enabled="true" CssClass="form-control input-sm" placeholder="Region działalności" Visible="true"/>

                                        
                                        </asp:Label></div></div></div><div class="row" >
                             <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                         <asp:Label Text="Region działalności" Font-Bold="true" runat="server">
                                         <asp:TextBox ID="TextBox_reg" runat="server" Enabled="true" CssClass="form-control input-sm" Font-Bold="false" placeholder="Region działalności" Visible="true"/>
                                       
                                        </asp:Label></div></div><div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                         <asp:Label Text="Napisz coś o sobie:" Font-Bold="true" runat="server">
                                         <asp:TextBox ID="TextBox_o_mnie" runat="server" Enabled="true" Font-Bold="false" CssClass="form-control input-sm" placeholder="Informacje" Visible="true" MaxLength="500" TextMode="MultiLine" />
                                       
                                        </asp:Label></div></div></div><div class="container body-content">


            <div class ="row">
                <div class="col-lg-12">
                
                        <header class="panel-heading">
                           
                            <div class ="col-md-4 col-md-offset-4">
                                 
                                <asp:Label Text="Kliknij, by dodać pliki.." Font-Bold="true" runat="server"></asp:Label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                
                            </div>
                              
                        </header>

                        <div class ="panel-body">

                            <br />




                            <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2" >

                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Zatwierdź" CssClass="btn btn-primary" Font-size="Larger" Width="225px" /><br />
   
                                                <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/img.jpg" style="width:60%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/img2.jpg" style="width:60%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/img3.jpg" style="width:60%">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                            </div>
                           
                       </div>

                    </div>
                </div>
    
    </div>

                                </div>

            
                            



                        </section>
                       </div>
                
        </div>
        
        </section>
    </div>

 

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 6000); // Change image every 2 seconds
    }
</script>
                    </form>
</body>
</html>
