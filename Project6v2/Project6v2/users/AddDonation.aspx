<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddDonation.aspx.cs" Inherits="Project6v2.users.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
 
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function message() {
            Swal.fire(
                'Good job!',
                'Inserted Successfily',
                'success'
            )
        }

    </script>
    <style>
        .newdivmarg {
            margin-top:-52px;
        }
         .divv {
           width:100%;
           font-family:'Times New Roman';
           font-size:30px;
           text-align:center;
           font-style:italic;
           font-weight:bold;
       }
        .ContDIV{
            width:40%;
            margin-left:30%;
        }
        body{
    background-color: #dee9ff;
}

.registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #fff;
    max-width: 600px;
    margin: auto;
    padding: 50px 70px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .form-icon{
	text-align: center;
    background-color: #06283D;
    border-radius: 50%;
    font-size: 40px;
    color: white;
    width: 100px;
    height: 100px;
    margin: auto;
    margin-bottom: 50px;
    line-height: 100px;
}

.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .create-account{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #06283D;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .social-media{
    max-width: 600px;
    background-color: #fff;
    margin: auto;
    padding: 35px 0;
    text-align: center;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    color: #9fadca;
    border-top: 1px solid #dee9ff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .social-icons{
    margin-top: 30px;
    margin-bottom: 16px;
}

.registration-form .social-icons a{
    font-size: 23px;
    margin: 0 3px;
    color: #5691ff;
    border: 1px solid;
    border-radius: 50%;
    width: 45px;
    display: inline-block;
    height: 45px;
    text-align: center;
    background-color: #fff;
    line-height: 45px;
}

.registration-form .social-icons a:hover{
    text-decoration: none;
    opacity: 0.6;
}

@media (max-width: 576px) {
    .registration-form form{
        padding: 50px 20px;
    }

    .registration-form .form-icon{
        width: 70px;
        height: 70px;
        font-size: 30px;
        line-height: 70px;
    }
        @media only screen and (min-device-width:0px) and (max-device-width:480px) {

            
    .ContDIV {
    width: 80%;
    margin-left: 10%;
}
        }

}



    </style>

   
    <div class="registration-form">
         
       <div class="divv">
           <asp:Label ID="Label1" runat="server" Text="Add Donation"></asp:Label>
       </div>
        <br /><br />
            <div class="form-icon">
               <%--<i class="fa-solid fa-plus" style="color:white"></i>--%>
                <i class="fa-solid fa-hand-holding-dollar" style="color:white"></i>
<%--                <i class="fa-sharp fa-solid fa-plus-large" style="color:white"></i>--%>
<%--                <i class="fa-regular fa-square-plus"></i>--%>
            </div>
            <div class="ContDIV">
            <div class="form-group">
                <asp:TextBox runat="server" ID="ServiceName" CssClass="form-control item" placeholder="Donation Name"/>
                <%--<input type="text" class="form-control item" id="username" placeholder="Username">--%>
            </div>
            <div class="form-group">
                 <textarea runat="server" Class="form-control item" id="Discription" cols="40" rows="2"  placeholder="Description"></textarea>

                <%--<input type="password" class="form-control item" id="password" placeholder="Password">--%>
            </div>
            <div class="form-group row">
                <div class="col-4">
                    <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="cold">Category</asp:Label>
                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="Bed">Bed</asp:ListItem>
                    <asp:ListItem Value="machine">Machine</asp:ListItem>
                    <asp:ListItem Value="other">other</asp:ListItem>
                </asp:DropDownList>
                </div>
                 <div class="col-4">
                      <asp:Label runat="server" AssociatedControlID="quantity" CssClass="cold">Quantity</asp:Label>

                     <asp:TextBox runat="server" ID="quantity" CssClass="form-control form-control2" TextMode="Number"  />
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="quantity"
                    CssClass="text-danger" ErrorMessage="The quantity field is required." />
                </div>
                 <div class="col-4">
                      <asp:Label runat="server" AssociatedControlID="DropDownList2" CssClass="cold">Status</asp:Label>
                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                    <asp:ListItem Value="new">New</asp:ListItem>
                    <asp:ListItem Value="used">Used</asp:ListItem>
                </asp:DropDownList>
                </div>
               
            </div>
                <div class="form-group row newdivmarg" id="othercat" runat="server" visible="false">
                    <div class="col-4"> </div>

                     <div class="col-4">
                    <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="cold" >Category</asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></div>

                     <div class="col-4"> </div>

                </div>
            <div class="form-group">
                <label for="formFileDisabled" class="form-label custom-file-upload">Disabled file input example</label>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload1" runat="server" ErrorMessage="image is requierd"></asp:RequiredFieldValidator>
                <%--<asp:Button ID="show" runat="server" Text="Show" CssClass="btn btn-block create-account" style="width:90px; height:30px; font-size:15px;" OnClick="show_Click"/>
                     <asp:Image ID="Image1" runat="server" Height="40px" Width="120px"/>--%>
            </div>
           
            <div class="form-group">
                <asp:Button ID="add" runat="server" Text="Add Donation"  CssClass="btn btn-block create-account" OnClick="add_Click"/>
            </div>
                </div>
       
        
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    <script src="assets/js/script.js"></script>
</asp:Content>
