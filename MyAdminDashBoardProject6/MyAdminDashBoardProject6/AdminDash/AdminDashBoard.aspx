<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="MyProject6.AdminDashBoard"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

     <meta charset="utf-8"/>
 <%--   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="Ela Admin - HTML5 Admin Template"/>--%>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="AdminCSS/css/cs-skin-elastic.css" rel="stylesheet" />
    <link href="AdminCSS/css/style.css" rel="stylesheet" />
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

       .flex-wrapper {
            display: flex;
            flex-flow: row nowrap;
        }

        .single-chart {
            width: 33%;
            justify-content: space-around;
        }

        .circular-chart {
            display: block;
            margin: 10px auto;
            max-width: 80%;
            max-height: 250px;
        }

        .circle-bg {
            fill: none;
            stroke: #eee;
            stroke-width: 3.8;
        }

        .circle {
            fill: none;
            stroke-width: 2.8;
            stroke-linecap: round;
            animation: progress 1s ease-out forwards;
        }

        @keyframes progress {
            0% {
                stroke-dasharray: 0 100;
            }
        }

        .circular-chart.orange .circle {
            stroke: #ab8ce4;
        }

        .circular-chart.green .circle {
            stroke: #4CC790;
        }

        .circular-chart.blue .circle {
            stroke: #3c9ee5;
        }

        .percentage {
            fill: #666;
            font-family: sans-serif;
            font-size: 0.5em;
            text-anchor: middle;
        }

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
        .gridmarginleft{
            margin-left:32.2%;
        }
         .divv {
           width:55%;
           margin-left:32.2%;
           text-align:center;
/*          
*/       }
          .donmar{
               margin-left:32.2%;
               width:55%
           }
       @media only screen and (min-device-width:0px) and (max-device-width:480px) {

       }

       @media (min-width: 481px) and (max-width:768px) {
           .divv {
    width: 55%;
    margin-left: 22.2%;
    text-align: center;
}

           .gridmarginleft{
            margin-left:17%;
        }
           .donmar{
               margin-left:10%;
               width:80%;
               
           }
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

      <div>
            

    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                   <li class="active">
                        <asp:LinkButton ID="Dashboard" runat="server" OnClick="Dashboard_Click"><i class="menu-icon fa fa-laptop"></i>Dashboard </asp:LinkButton>
                        <%--<a href="index.html"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>--%>
                    </li>
                    <%--<li class="menu-title"><i class="menu-icon fa fa-laptop"></i>Dashboard</li> <%--/.menu-title --%>
                     <li class="menu-item-has-children dropdown">
                         <hr />
                    </li>

                    <li class="menu-item-has-children dropdown">
                        
                        <asp:LinkButton ID="Beneficiary" runat="server" CssClass="dropdown-toggle" OnClick="Beneficiary_Click"> <i class="fa-solid fa-people-line menu-icon"></i> Beneficiary</asp:LinkButton>

                    </li>
                    <li class="menu-item-has-children dropdown">
                        <asp:LinkButton ID="Doners" runat="server" CssClass="dropdown-toggle" OnClick="Doners_Click"><i class="menu-icon fa-solid fa-hand-holding-dollar"></i>Doners</asp:LinkButton>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <asp:LinkButton ID="Donations" runat="server" CssClass="dropdown-toggle" OnClick="Donations_Click"><i class="menu-icon fa-solid fa-hand-holding-medical"></i>Donations</asp:LinkButton>
                    </li>

                  
                    <li class="menu-item-has-children">  
                    <asp:LinkButton ID="Waiting" runat="server" CssClass="dropdown-toggle" OnClick="Waiting_Click" ><i class="fa-solid fa-circle-pause menu-icon "></i>Waiting Donations</asp:LinkButton>
                    </li>
                   <li class="menu-title"></li> 
                    <li class="menu-item-has-children dropdown">
                         <hr />
                    </li>
                   
                    <li class="menu-item-has-children dropdown">
                     <asp:LinkButton ID="Logout" runat="server" CssClass="dropdown-toggle" OnClick="Logout_Click"><i class="fa-solid fa-right-from-bracket menu-icon"></i>Logout</asp:LinkButton>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
            <div id="right-panel1" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"/></a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"/></a>
                                      
<%--                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>--%>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                         <%--  <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"/>
                            <i class="fa-solid fa-qrcode user-avatar "></i>
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                            <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>--%>
<%--                        <button class="search-trigger"><i class="fa fa-search"></i></button>--%>
                      
                       <%-- <div class="dropdown for-notification">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="count bg-danger">3</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="notification">
                                <p class="red">You have 3 Notification</p>
                                <a class="dropdown-item media" href="#">
                                    <i class="fa fa-check"></i>
                                    <p>Server #1 overloaded.</p>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <i class="fa fa-info"></i>
                                    <p>Server #2 overloaded.</p>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <i class="fa fa-warning"></i>
                                    <p>Server #3 overloaded.</p>
                                </a>
                            </div>
                        </div>--%>

                       <%-- <div class="dropdown for-message">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="message" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-envelope"></i>
                                <span class="count bg-primary">4</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="message">
                                <p class="red">You have 4 Mails</p>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left"><img alt="avatar" src="images/avatar/1.jpg"/></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Jonathan Smith</span>
                                        <span class="time float-right">Just now</span>
                                        <p>Hello, this is an example msg</p>
                                    </div>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left"><img alt="avatar" src="images/avatar/2.jpg"/></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Jack Sanders</span>
                                        <span class="time float-right">5 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                    </div>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left"><img alt="avatar" src="images/avatar/3.jpg"/></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Cheryl Wheeler</span>
                                        <span class="time float-right">10 minutes ago</span>
                                        <p>Hello, this is an example msg</p>
                                    </div>
                                </a>
                                <a class="dropdown-item media" href="#">
                                    <span class="photo media-left"><img alt="avatar" src="images/avatar/4.jpg"/></span>
                                    <div class="message media-body">
                                        <span class="name float-left">Rachel Santos</span>
                                        <span class="time float-right">15 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                    </div>
                                </a>
                            </div>--%>
                        </div>
                    </div>

                 <%--   <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<%--                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar"/>--%>
                         <%--   <i class="fa-solid fa-qrcode user-avatar rounded-circle"></i>
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                            <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>--%>

<%--                </div>--%>
            </div>
        </header></div>

<%--           **********************************--%>

            
             <div runat="server" id="ADMIN">
    <div id="right-panel" class="right-panel">
      
      
        <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
                <!-- Widgets  -->
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-1">
                                        <i class="fa-solid fa-users-between-lines"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="NUMbe" runat="server" Text="" style="font-size:25px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Beneficiary</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="fa-solid fa-people-carry-box"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="NUMdr" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Doners</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-3">
                                       <i class="fa-solid fa-hand-holding-dollar"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><asp:Label ID="Numdn" runat="server" Text="" style="font-size:30px;"></asp:Label></div>
                                            <div class="stat-heading" style="font-size:30px;">Donations</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                   
                </div>
                <!-- /Widgets -->
                <!--  Traffic  -->
<%--                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">Traffic </h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="card-body">
                                         <canvas id="TrafficChart"></canvas>   
                                        <div id="traffic-chart" class="traffic-chart">

                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="card-body">
                                        <div class="progress-box progress-1">
                                            <h4 class="por-title">Visits</h4>
                                            <div class="por-txt">96,930 Users (40%)</div>
                                            <div class="progress mb-2" style="height: 5px;">
                                                <div class="progress-bar bg-flat-color-1" role="progressbar" style="width: 40%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                        <div class="progress-box progress-2">
                                            <h4 class="por-title">Bounce Rate</h4>
                                            <div class="por-txt">3,220 Users (24%)</div>
                                            <div class="progress mb-2" style="height: 5px;">
                                                <div class="progress-bar bg-flat-color-2" role="progressbar" style="width: 24%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                        <div class="progress-box progress-2">
                                            <h4 class="por-title">Unique Visitors</h4>
                                            <div class="por-txt">29,658 Users (60%)</div>
                                            <div class="progress mb-2" style="height: 5px;">
                                                <div class="progress-bar bg-flat-color-3" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                        <div class="progress-box progress-2">
                                            <h4 class="por-title">Targeted  Visitors</h4>
                                            <div class="por-txt">99,658 Users (90%)</div>
                                            <div class="progress mb-2" style="height: 5px;">
                                                <div class="progress-bar bg-flat-color-4" role="progressbar" style="width: 90%;" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div> <!-- /.card-body -->
                                </div>
                            </div> <!-- /.row -->
                            <div class="card-body"></div>
                        </div>
                    </div><!-- /# column -->
                </div>--%>
                <!--  /Traffic -->
                <br /><br />
                        <div class="flex-wrapper" style="background-color:white">
        <div class="single-chart">
            <svg viewBox="0 0 36 36" class="circular-chart green">
                <path class="circle-bg"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <path id="percent1" runat="server" class="circle"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <text id="firstPercent" runat="server" x="18" y="20.35" class="percentage"></text>
            </svg>
            <h4  style="text-align:center">Beneficiary</h4>
        </div>
 <div class="single-chart">
            <svg viewBox="0 0 36 36" class="circular-chart orange">
                <path class="circle-bg"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <path id="percent3" class="circle" runat="server"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <text id="thirdPercent" runat="server" x="18" y="20.35" class="percentage"></text>
            </svg><h4 style="text-align:center">Doners</h4>
        </div>
       <div class="single-chart">
            <svg viewBox="0 0 36 36" class="circular-chart blue">
                <path class="circle-bg"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <path id="percent2" runat="server" class="circle"
                    d="M18 2.0845
          a 15.9155 15.9155 0 0 1 0 31.831
          a 15.9155 15.9155 0 0 1 0 -31.831" />
                <text id="secPercent" runat="server" x="18" y="20.35" class="percentage"></text>
            </svg>         <h4  style="text-align:center">Donations</h4>

        </div>
       
    </div>
    <div style="display: flex; justify-content: space-around; width: 100%;">
       <%-- <h4>Beneficiary</h4>--%>
<%--         <h4>Donations</h4>--%>
        <%--<h4>Doners</h4>--%>
    </div>
    <br />
    <br />
    <br />
    <br />

    
                <div class="clearfix"></div>
                        </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
        <div class="clearfix"></div>
        <!-- Footer -->
        <footer class="site-footer">
            <div class="footer-inner bg-white">
                <div class="row">
                    <div class="col-sm-6">
                        Copyright &copy; 2018 Ela Admin
                    </div>
                    <div class="col-sm-6 text-right">
                        Designed by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /.site-footer -->
    </div>
    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
                 <script src="AdminCSS/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
                 <script src="AdminCSS/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
                 <script src="AdminCSS/js/init/fullcalendar-init.js"></script>
                 <script src="AdminCSS/js/init/chartjs-init.js"></script>
    <!--Local Stuff-->
    <script>
        jQuery(document).ready(function ($) {
            "use strict";

            // Pie chart flotPie1
          

            $.plot('#flotPie1', piedata, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        innerRadius: 0.65,
                        label: {
                            show: true,
                            radius: 2 / 3,
                            threshold: 1
                        },
                        stroke: {
                            width: 0
                        }
                    }
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            });
            // Pie chart flotPie1  End
            // cellPaiChart
            var cellPaiChart = [
                { label: "Direct Sell", data: [[1, 65]], color: '#5b83de' },
                { label: "Channel Sell", data: [[1, 35]], color: '#00bfa5' }
            ];
            $.plot('#cellPaiChart', cellPaiChart, {
                series: {
                    pie: {
                        show: true,
                        stroke: {
                            width: 0
                        }
                    }
                },
                legend: {
                    show: false
                }, grid: {
                    hoverable: true,
                    clickable: true
                }

            });
            // cellPaiChart End
            // Line Chart  #flotLine5
            var newCust = [[0, 3], [1, 5], [2, 4], [3, 7], [4, 9], [5, 3], [6, 6], [7, 4], [8, 10]];

            var plot = $.plot($('#flotLine5'), [{
                data: newCust,
                label: 'New Data Flow',
                color: '#fff'
            }],
                {
                    series: {
                        lines: {
                            show: true,
                            lineColor: '#fff',
                            lineWidth: 2
                        },
                        points: {
                            show: true,
                            fill: true,
                            fillColor: "#ffffff",
                            symbol: "circle",
                            radius: 3
                        },
                        shadowSize: 0
                    },
                    points: {
                        show: true,
                    },
                    legend: {
                        show: false
                    },
                    grid: {
                        show: false
                    }
                });
            // Line Chart  #flotLine5 End
            // Traffic Chart using chartist
            if ($('#traffic-chart').length) {
                var chart = new Chartist.Line('#traffic-chart', {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                    series: [
                        [0, 18000, 35000, 25000, 22000, 0],
                        [0, 33000, 15000, 20000, 15000, 300],
                        [0, 15000, 28000, 15000, 30000, 5000]
                    ]
                }, {
                    low: 0,
                    showArea: true,
                    showLine: false,
                    showPoint: false,
                    fullWidth: true,
                    axisX: {
                        showGrid: true
                    }
                });

                chart.on('draw', function (data) {
                    if (data.type === 'line' || data.type === 'area') {
                        data.element.animate({
                            d: {
                                begin: 2000 * data.index,
                                dur: 2000,
                                from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
                                to: data.path.clone().stringify(),
                                easing: Chartist.Svg.Easing.easeOutQuint
                            }
                        });
                    }
                });
            }
            // Traffic Chart using chartist End
            //Traffic chart chart-js
            if ($('#TrafficChart').length) {
                var ctx = document.getElementById("TrafficChart");
                ctx.height = 150;
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
                        datasets: [
                            {
                                label: "Visit",
                                borderColor: "rgba(4, 73, 203,.09)",
                                borderWidth: "1",
                                backgroundColor: "rgba(4, 73, 203,.5)",
                                data: [0, 2900, 5000, 3300, 6000, 3250, 0]
                            },
                            {
                                label: "Bounce",
                                borderColor: "rgba(245, 23, 66, 0.9)",
                                borderWidth: "1",
                                backgroundColor: "rgba(245, 23, 66,.5)",
                                pointHighlightStroke: "rgba(245, 23, 66,.5)",
                                data: [0, 4200, 4500, 1600, 4200, 1500, 4000]
                            },
                            {
                                label: "Targeted",
                                borderColor: "rgba(40, 169, 46, 0.9)",
                                borderWidth: "1",
                                backgroundColor: "rgba(40, 169, 46, .5)",
                                pointHighlightStroke: "rgba(40, 169, 46,.5)",
                                data: [1000, 5200, 3600, 2600, 4200, 5300, 0]
                            }
                        ]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: false
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        }

                    }
                });
            }
            //Traffic chart chart-js  End
           
        });
    </script>

        </div>

      
<%--            *************************************--%>

         <%--   <div id="BENEFICIERY" runat="server">
                <br /><br />
                 <div class="divv">
                <asp:Label ID="Label1" runat="server" Text="Beneficiary Information" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br />
                
                 <br />
                <div class="divv">
                <asp:TextBox ID="SerSearch" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="serser" runat="server" BackColor="#39B5E0" BorderColor="#39B5E0" ForeColor="black" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/></div>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" 
                SelectCommand="SELECT AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, AspNetUsers.UserStatus, AspNetUserRoles.UserId, AspNetUserRoles.RoleId FROM AspNetUsers INNER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId AND AspNetUserRoles.RoleId = 3"
                UpdateCommand="UPDATE AspNetUsers SET UserStatus = @UserStatus WHERE (Id = @Id)"
                >
                <UpdateParameters>
                    <asp:Parameter Name="UserStatus" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,UserId,RoleId" DataSourceID="SqlDataSource1" CssClass="table table-striped gridmarginleft" Width="55%" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Beneficiary" SortExpression="UserName">
                        <EditItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNumber">
                        <EditItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="UserStatus">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="Trusted">Trusted</asp:ListItem>
                                <asp:ListItem Value="UnTrusted">UnTrusted</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserStatus") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="#39B5E0" BorderColor="#39B5E0" Font-Names="Times New Roman" Font-Size="17px" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" BackColor="#39B5E0" />
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>

               </ContentTemplate></asp:UpdatePanel>
               
            </div>--%>


<%--            *************************************************************--%>
         <%--    <div id="DONOR" runat="server">
                <br /><br />
                 <div class="divv">
                <asp:Label ID="Label8" runat="server" Text="Doner Information" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br />
                
                 <br />
                <div class="divv">
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" BackColor="#39B5E0" BorderColor="#39B5E0" ForeColor="black" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/></div>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" 
                SelectCommand="SELECT AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, AspNetUsers.UserStatus, AspNetUserRoles.UserId, AspNetUserRoles.RoleId FROM AspNetUsers INNER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId AND AspNetUserRoles.RoleId = 2"
                UpdateCommand="UPDATE AspNetUsers SET UserStatus = @UserStatus WHERE (Id = @Id)"
                >
                <UpdateParameters>
                    <asp:Parameter Name="UserStatus" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id,UserId,RoleId" DataSourceID="SqlDataSource2" CssClass="table table-striped gridmarginleft" Width="55%" OnRowUpdating="GridView2_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Donor" SortExpression="UserName">
                        <EditItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNumber">
                        <EditItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="UserStatus">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Value="Trusted">Trusted</asp:ListItem>
                                <asp:ListItem Value="UnTrusted">UnTrusted</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserStatus") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="#39B5E0" BorderColor="#39B5E0" Font-Names="Times New Roman" Font-Size="17px" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" BackColor="#39B5E0" />
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            </div>--%>
<%--            *************************************************************--%>
<%--        <div id="DONATION" runat="server">
            <br /><br />
            <div class="divv">
                <asp:Label ID="Label15" runat="server" Text="Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br />
                
                 <br />
                <div class="divv">
                <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" BackColor="#39B5E0" BorderColor="#39B5E0" ForeColor="black" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/></div>
                <br /><br />
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" 
                SelectCommand="SELECT * FROM [Services] WHERE ([Status] = @Status)" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" 
                InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" 
                UpdateCommand="UPDATE [Services] SET [Status] = @Status WHERE [ServiceID] = @ServiceID">
                <DeleteParameters>
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProviderID" Type="String" />
                    <asp:Parameter Name="ServiceName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="ServiceTime" Type="DateTime" />
                    <asp:Parameter Name="CategoryName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="LeftQuantity" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Accept" Name="Status" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProviderID" Type="String" />
                    <asp:Parameter Name="ServiceName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="ServiceTime" Type="DateTime" />
                    <asp:Parameter Name="CategoryName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="LeftQuantity" Type="Int32" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource3" CssClass="table table-striped donmar"  OnRowUpdating="GridView3_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="ServiceID" InsertVisible="False" SortExpression="ServiceID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ServiceID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ServiceID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Donation" SortExpression="ServiceName">
                        <EditItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("ServiceName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ServiceName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" SortExpression="Image">
                        <EditItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" SortExpression="Description">
                        <EditItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time" SortExpression="ServiceTime">
                        <EditItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("ServiceTime") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("ServiceTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" SortExpression="CategoryName">
                        <EditItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                        <EditItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Left Quantity" SortExpression="LeftQuantity">
                        <EditItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("LeftQuantity") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("LeftQuantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem Value="Accept">Accept</asp:ListItem>
                                <asp:ListItem Value="Reject">Reject</asp:ListItem>
                                <asp:ListItem Value="Wait">Wait</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:CommandField ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="#39B5E0" BorderColor="#39B5E0" Font-Names="Times New Roman" Font-Size="17px" />
                    </asp:CommandField>
                </Columns>
                
                     <HeaderStyle HorizontalAlign="Center" BackColor="#39B5E0" />
                <RowStyle HorizontalAlign="Center" />
               
            </asp:GridView>
        </div>

        <div id="WAITINGdiv" runat="server">
             <br /><br />
            <div class="divv">
                <asp:Label ID="Label16" runat="server" Text="Waiting Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br />
                
                 <br />
                <div class="divv">
                <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" BackColor="#39B5E0" BorderColor="#39B5E0" ForeColor="black" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/></div>
                <br /><br />
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" 
                SelectCommand="SELECT * FROM [Services] WHERE ([Status] = @Status)" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" 
                InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" 
                UpdateCommand="UPDATE [Services] SET [ProviderID] = @ProviderID, [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [Status] = @Status, [ServiceTime] = @ServiceTime, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
                <DeleteParameters>
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProviderID" Type="String" />
                    <asp:Parameter Name="ServiceName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="ServiceTime" Type="DateTime" />
                    <asp:Parameter Name="CategoryName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="LeftQuantity" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="wait" Name="Status" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProviderID" Type="String" />
                    <asp:Parameter Name="ServiceName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="ServiceTime" Type="DateTime" />
                    <asp:Parameter Name="CategoryName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="LeftQuantity" Type="Int32" />
                    <asp:Parameter Name="ServiceID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource4" CssClass="table table-striped donmar"  OnRowCommand="GridView4_RowCommand" EmptyDataText="You Don't Have Requests" >
                <Columns>
                    <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" InsertVisible="False" ReadOnly="True" SortExpression="ServiceID" />
                    <asp:BoundField DataField="ServiceName" HeaderText="Donation" SortExpression="ServiceName" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:TemplateField HeaderText="Image" SortExpression="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:TemplateField HeaderText="Time" SortExpression="ServiceTime">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ServiceTime") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ServiceTime") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="ACC" runat="server" CausesValidation="false" CommandName="Accepted" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle BackColor="#00CC00" BorderColor="#00CC00" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="REJ" runat="server" CausesValidation="false" CommandName="Rejected" Text="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle BackColor="#FF3300" BorderColor="#FF3300" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                    </asp:TemplateField>
                </Columns>
                
                     <HeaderStyle HorizontalAlign="Center" BackColor="#39B5E0" />
                <RowStyle HorizontalAlign="Center" />
               
            </asp:GridView>
        </div>--%>
          </div>
    </form>
</body>
</html>
