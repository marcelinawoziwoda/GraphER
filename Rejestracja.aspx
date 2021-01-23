<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="WebApplication4.Rejestracja" %>

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
        
<div class="container body-content">
    
     <section id="wrapper">
            <div class ="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           
                            <div class ="col-md-4 col-md-offset-4">
                           
                                
                                <img class="img-responsive" src="/images/rejestracja.png" > 
                                
                            </div>
                              
                        </header>

                        <div class ="panel-body">
                            
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Imię" runat="server" Font-Bold="true" Font-Size="Small"/>
                                        <asp:TextBox ID="imie" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Wprowadź imię" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imie" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Nazwisko" runat="server" Font-Bold="true" Font-Size="Small"/>
                                        <asp:TextBox ID="nazwisko" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Wprowadź nazwisko" />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nazwisko" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                  
                                        </div>
                                </div>
                            </div>
 

                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="E-mail" runat="server" Font-Bold="true" Font-Size="Small"/>
                                            <asp:Label ID="Label1" runat="server" Visible="false" Font-Size="X-Small" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="email" runat="server" Enabled="true" TextMode="Email" CssClass="form-control input-sm" placeholder="Wprowadź e-mail" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Numer telefonu" runat="server" Font-Bold="true" Font-Size="Small"/>
                                        <asp:TextBox ID="telefon" runat="server" Enabled="true" TextMode="Phone" CssClass="form-control input-sm" placeholder="###-###-###" MaxLength='9'/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="telefon" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    
                                    </div>
                                </div>
                            </div>

                            


                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Hasło" runat="server" Font-Bold="true" Font-Size="Small"/>
                                        <asp:TextBox ID="haslo" runat="server" Enabled="true" TextMode="Password" CssClass="form-control input-sm" placeholder="Wprowadź hasło" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="haslo" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                    
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text ="Powtórz hasło" runat="server" Font-Bold="true" Font-Size="Small" />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToCompare="haslo" ControlToValidate="haslo2" Font-Bold="true" ErrorMessage="Hasła się różnią." Font-Size="X-Small" ForeColor="Red" ></asp:CompareValidator>
                                        <asp:TextBox ID="haslo2" runat="server" Enabled="true" TextMode="Password" CssClass="form-control input-sm" placeholder="Wprowadz ponownie hasło" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="haslo2" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                        </div>
                                </div>
                            </div>



                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="False" Text="            Zaznacz, jeśli rejestrujesz się jako usługodawca" TextAlign="Right"  />

                                    </div>
                                </div>
                                
                            </div>

                            
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label ID="check1" Text ="Nazwa firmy" runat="server" Visible="true" Font-Bold="true" Font-Size="Small" />
                                        <asp:TextBox ID="firma" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Wprowadz nazwę firmy" Visible="true"/>
                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:Label Text="Rodzaj usług" runat="server" Font-Bold="true" Font-Size="Small">
                            <asp:DropDownList ID="usluga" runat="server" CssClass="form-control input-sm">
                                <asp:ListItem Text="  " />
                                <asp:ListItem Text="fotograf" />
                                <asp:ListItem Text="grafik" />
                                <asp:ListItem Text="kamerzysta" />
                                <asp:ListItem Text="inne" />

                             </asp:DropDownList>
                                        
                                        </asp:Label>
                                    </div>
                                </div>
                            </div>

                            <div class="row" >
                             <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                         <asp:Label Text="Region działalności" runat="server" Font-Bold="true" Font-Size="Small">
                                         <asp:DropDownList ID="region" runat="server" CssClass="form-control input-sm" >
                                <asp:ListItem Text=" " />
                                <asp:ListItem Text="Wybierz wszystkie" />
                                <asp:ListItem Text="dolnośląskie" />
                                <asp:ListItem Text="kujawsko-pomorskie" />
                                <asp:ListItem Text="lubelskie" />
                                <asp:ListItem Text="lubuskie" />
                                <asp:ListItem Text="łódzkie" />
                                <asp:ListItem Text="małopolskie" />
                                <asp:ListItem Text="mazowieckie" />
                                <asp:ListItem Text="opolskie" />
                                <asp:ListItem Text="podkarpackie" />
                                <asp:ListItem Text="podlaskie" />
                                <asp:ListItem Text="pomorskie" />
                                <asp:ListItem Text="śląskie" />
                                <asp:ListItem Text="świętokrzyskie" />
                                <asp:ListItem Text="warmińsko-mazurskie" />
                                <asp:ListItem Text="wielkopolskie" />
                                <asp:ListItem Text="zachodniopomorskie" />
                                        </asp:DropDownList>
                                        <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="region" ErrorMessage="Wymagane pole." Font-Size="X-Small" ForeColor="Red" ></asp:RequiredFieldValidator>
                                             -->
                                        </asp:Label>

                                    </div>
                                </div>
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="False" Font-size="10px" Text="Przyjmuję do wiadomości, że GraphER wykorzystuje moje dane osobowe zgodnie z Polityką prywatności oraz Polityką dotyczącą plików cookie i podobnych technologii." />
                                              <br />
                                        
                                        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="False" Font-size="10px" Text="Wyrażam zgodę na używanie przez aplikację GraphER środków komunikacji elektronicznej oraz telekomunikacyjnych urządzeń końcowych w celu przesyłania mi informacji." />
                                        
                                    </div>
                                </div>
                                </div>
                                </div>

            
                            <br />
   

                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div class="row" >
                                    <div class ="col-md-4 col-md-offset-1">
                                        <div class ="form-group">
                                         <div class="col-md-8 col-md-offset-2">
                                                <asp:Label Text="*Klikając zarejestruj się, akceptujesz " runat="server" Font-Size="10px" /><asp:HyperLink ID="HyperLink2" runat="server" cssClass="HyperLinkHover" Font-Size="9px" runat="server">regulamin.</asp:HyperLink> 
                                               <br />
                                             
                                           <asp:Button ID="Rejestracja_button" Text ="Zarejestruj się"  CssClass="btn btn-primary" CausesValidation="True"  Font-size="Larger" runat="server" Width="225px" OnClick="Rejestracja_button_Click" />
                                              <br />
                                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GraphERConnectionString %>" SelectCommand="SELECT * FROM [Rejestracja_G]"></asp:SqlDataSource>
                                             <br /> 
                                             <asp:Label Text="Masz już konto? " runat="server"  /> <asp:HyperLink ID="HyperLink1" cssClass="HyperLinkHover" runat="server" NavigateUrl="~/Logowanie.aspx" >Zaloguj się.</asp:HyperLink>

                                                 
                                           
                                          </div>
                                    </div>
                                </div>
                                    <div class ="col-md-4 col-md-offset-1">
                                        <div class ="form-group">
                                         <div class="col-md-8 col-md-offset-2">
                                     
                                           <asp:Button Text ="Logowanie Facebook" ID="Button4" CssClass="btn btn-primary waves-effect waves-light" BorderColor="white" BackColor="#4267B2" runat="server" Font-size="Larger" Width="225px" CausesValidation="False" />
                                             <br />
                                              <br />
                                          
                                             
                                        
                                           <asp:Button Text ="Logowanie Gmail" ID="Button5" CssClass="btn btn-primary waves-effect waves-light" runat="server" BorderColor="white" BackColor="#DD4B39" Font-size="Larger"  Width="225px"  CausesValidation="False" />
                                          
                                          
                                                 <br />
                                             <br />

                    
                                             <asp:Button Text ="Logowanie Instagram" ID="Button1" CssClass="btn btn-primary waves-effect waves-light" runat="server" BorderColor="white" BackColor="#bc2a8d" Font-size="Larger"  Width="225px"  CausesValidation="False" />
                                           <br />
                                             
                                             <br />
                                         </div>
                                    </div>
                                </div>
                                </div>

                        </section>
                       </div>
                
        </div>
        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GraphERConnectionString %>" InsertCommand="INSERT INTO [Rezerwacja] ([email_specjalista], [email_klient], [rezerwacja_data], [rezerwacja_czas_start], [rezerwacja_czas_stop], [opis]) VALUES (@email_specjalista, @email_klient, @rezerwacja_data, @rezerwacja_czas_start, @rezerwacja_czas_stop, @opis)" SelectCommand="SELECT * FROM [Rezerwacja]" >
    
                <InsertParameters>
                    <asp:Parameter Name="email_specjalista" Type="String" />
                    <asp:Parameter Name="email_klient" Type="String" />
                    <asp:Parameter Name="rezerwacja_data" Type="String" />
                    <asp:Parameter DbType="Time" Name="rezerwacja_czas_start" />
                    <asp:Parameter DbType="Time" Name="rezerwacja_czas_stop" />
                    <asp:Parameter Name="opis" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email_specjalista" Type="String" />
                    <asp:Parameter Name="email_klient" Type="String" />
                    <asp:Parameter Name="rezerwacja_data" Type="String" />
                    <asp:Parameter DbType="Time" Name="rezerwacja_czas_start" />
                    <asp:Parameter DbType="Time" Name="rezerwacja_czas_stop" />
                    <asp:Parameter Name="opis" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
        </section>
       




            
    
    
    
    <footer>
                <p>&copy; <%: DateTime.Now.Year %> - GraphER designed by Marcelina Woziwoda</p>
            
    </footer>
</div>

    </form>
    
</body>
</html>
