<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="[pokjhgfcxcfghjkl.aspx.cs" Inherits="Project6._pokjhgfcxcfghjkl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <meta charset="utf-8"/>
 <%--   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="Ela Admin - HTML5 Admin Template"/>--%>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="aaaaasdfCSS/css/cs-skin-elastic.css" rel="stylesheet" />
    <link href="aaaaasdfCSS/css/style.css" rel="stylesheet" />
  
   <%-- <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png"/>
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png"/>--%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css"/>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet"/>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
   <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <asp:LinkButton ID="Dashboard" runat="server"><i class="menu-icon fa fa-laptop"></i>Dashboard </asp:LinkButton>
                        <%--<a href="index.html"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>--%>
                    </li>
                    <%--<li class="menu-title"><i class="menu-icon fa fa-laptop"></i>Dashboard</li> <%--/.menu-title --%>
                     <li class="menu-item-has-children dropdown">
                         <hr />
                    </li>

                    <li class="menu-item-has-children dropdown">
                        
                        <asp:LinkButton ID="Beneficiary" runat="server" CssClass="dropdown-toggle"> <i class="fa-solid fa-people-line menu-icon"></i> Beneficiary</asp:LinkButton>

                    </li>
                    <li class="menu-item-has-children dropdown">
                        <asp:LinkButton ID="Doners" runat="server" CssClass="dropdown-toggle" ><i class="menu-icon fa-solid fa-hand-holding-dollar"></i>Doners</asp:LinkButton>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <asp:LinkButton ID="Donations" runat="server" CssClass="dropdown-toggle"><i class="menu-icon fa-solid fa-hand-holding-medical"></i>Donations</asp:LinkButton>
                    </li>

                  
                    <li class="menu-item-has-children">  
                    <asp:LinkButton ID="Waiting" runat="server" CssClass="dropdown-toggle"><i class="fa-solid fa-circle-pause menu-icon "></i>Waiting Donations</asp:LinkButton>
                    </li>
                   <li class="menu-title"></li> 
                    <li class="menu-item-has-children dropdown">
                         <hr />
                    </li>
                   
                    <li class="menu-item-has-children dropdown">
                     <asp:LinkButton ID="Logout" runat="server" CssClass="dropdown-toggle"><i class="fa-solid fa-right-from-bracket menu-icon"></i>Logout</asp:LinkButton>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>

        </div>
    </form>
</body>
</html>