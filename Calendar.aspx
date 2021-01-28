<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="WebApplication4.Calendar" %>


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
                        <li><asp:Button Text ="Szukaj" style="margin-top:9px;" CssClass="btn btn-primary" Font-size="Larger"  runat="server" Width="110px"  /></li>

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
                                 
                                
                                <img class="img-responsive" src="/images/kalendarz.png" > 
                                
                            </div>
                              
                        </header>

                        <div class ="panel-body">

                            <br />




                            <div class="row">
                                <div class ="col-md-4 col-md-offset-4">
                                    <div class ="form-group">
                                        <div class="col-md-8 col-md-offset-2" >
                                            
                                        
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                
                            </div>
                           
                       </div>

                        </section>
                    </div>
                </div>

     </section>
    

        <asp:GridView ID="GridView2" runat="server" DataKeyNames="id" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="1161px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="rezerwacja_czas_stop" HeaderText="rezerwacja_czas_stop" SortExpression="rezerwacja_czas_stop" />
            <asp:BoundField DataField="rezerwacja_czas_start" HeaderText="rezerwacja_czas_start" SortExpression="rezerwacja_czas_start" />
            <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
            <asp:BoundField DataField="rezerwacja_data" HeaderText="rezerwacja_data" SortExpression="rezerwacja_data" />
            <asp:BoundField DataField="email_specjalista" HeaderText="email_specjalista" SortExpression="email_specjalista" />
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GraphERConnectionString %>" SelectCommand="SELECT [rezerwacja_czas_stop], [rezerwacja_czas_start], [opis], [rezerwacja_data], [email_specjalista], [id] FROM [Rezerwacja] WHERE ([email_klient] = @email_klient)"
        DeleteCommand="delete FROM Rezerwacja where id=@id">
        <SelectParameters>
            <asp:SessionParameter Name="email_klient" SessionField="email" Type="String" />
        </SelectParameters>
        <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    </asp:SqlDataSource>
    <asp:Calendar ID="Calendar1" align="center"  runat="server" BackColor="#222222" Font-Size="15pt" ForeColor="#cebb68" CellPadding="10" CellSpacing="10" NextMonthText="Następny" PrevMonthText="Poprzedni" ShowGridLines="True" >
        <DayHeaderStyle Font-Bold="True" Font-Size="25pt" ForeColor="White"   />
        <DayStyle  font-size="25pt"/>
        <NextPrevStyle Font-Bold="True" Font-Size="21pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle  ForeColor="White" />
        <TitleStyle   Font-Bold="True"  Font-Size="25pt" BackColor="#222222" ForeColor="White" Height="18pt" />
        <TodayDayStyle  ForeColor="White" backColor="#cfbd6a"/>
    </asp:Calendar>

 <div class="row">
    <div class ="col-md-4 col-md-offset-1">
              <div class ="form-group">
<asp:Label Text ="Wpisz e-mail specjalisty" runat="server" Font-Bold="true" Font-Size="Small" /> 
<asp:TextBox ID="email_specjalista" runat="server" Enabled="true" TextMode="Email" CssClass="form-control input-sm"  />
                                     
 <asp:Button  ID="dostepnosc" runat="server"  CssClass="btn btn-primary" CausesValidation="True"  Font-size="Larger"  Width="225px" Text="Sprawdź dostępność"  OnClick="Button1_Click" />
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" visible="False"  DataSourceID="SqlDataSource1">
                      <Columns>
                          <asp:BoundField DataField="rezerwacja_data" HeaderText="rezerwacja_data" SortExpression="rezerwacja_data" />
                          <asp:BoundField DataField="rezerwacja_czas_start" HeaderText="rezerwacja_czas_start" SortExpression="rezerwacja_czas_start" />
                          <asp:BoundField DataField="rezerwacja_czas_stop" HeaderText="rezerwacja_czas_stop" SortExpression="rezerwacja_czas_stop" />
                      </Columns>
                  </asp:GridView>
                  <br />
                  <asp:Label ID="czas_start" Visible="false" runat="server" Text="Godzina początkowa" Font-Bold="true"></asp:Label>
                  <br/>
                  <Input type="time" ID="godz_pocz" runat="server" textmode="Time" visible="false" />
                  <br/>
                  <asp:Label ID="czas_koniec" runat="server" Visible="false" Text="Godzina końca" Font-Bold="true"></asp:Label>
                  <br/>
                  <Input type="time" ID="godz_kon" runat="server" textmode="Time" visible="false"/>
                  <br/>
                  <asp:Button ID="rezerwuj" runat="server" OnClick="Button2_Click" CssClass="btn btn-primary" CausesValidation="True"  Font-size="Larger"  Width="225px" Text="Rezerwuj" Visible="false" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GraphERConnectionString %>" SelectCommand="SELECT [rezerwacja_data], [rezerwacja_czas_start], [rezerwacja_czas_stop] FROM [Rezerwacja] WHERE ([email_specjalista] = @email_specjalista)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="email_specjalista" Name="email_specjalista" PropertyName="Text" Type="String" />
                      </SelectParameters>
                  </asp:SqlDataSource>
           
              </div>

      </div>                             
  </div>
   




    <footer>
                <br />
                <br />
                <br />
                <p>&copy; <%: DateTime.Now.Year %> - GraphER designed by Marcelina Woziwoda</p>
            
    </footer>
     
    </div>

 </form>

</body>
</html>
