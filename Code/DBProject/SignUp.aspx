<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DBProject.SignUp" %>
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">

        <title>UBIT Health Care Hospital</title>

        <script type="text/javascript">
            //----------------------Function1-----------------------------//
            function validateEmail(Email) {
                if (Email == "") {
                    alert("Email missing. Enter Email.");
                    return false;
                }

                else if (Email.indexOf("@") == -1 || Email.indexOf(".com") == -1) {
                    alert("Please enter correct email address");
                    return false;
                }

                else {
                    var location = Email.indexOf("@");

                    if (Email[0] == '@' || Email[location + 1] == '.') {
                        alert("Your email address seems incorrect. Please correct it");
                        return false;
                    }

                    var emailPat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    var EmailmatchArray = Email.match(emailPat);

                    if (EmailmatchArray == null) {
                        alert("Your email address seems incorrect. Please correct it");
                        return false;
                    }
                }

                return true;
            }

            //----------------------Function2-----------------------------//
            function validateS() {
                var Name = document.getElementById('<%=sName.ClientID %>').value;
                var Bdate = document.getElementById('<%=sBirthDate.ClientID %>').value;
                var Email = document.getElementById('<%=sEmail.ClientID %>').value;
                var phone = document.getElementById('<%=Phone.ClientID %>').value;
                var pass = document.getElementById('<%=sPassword.ClientID %>').value;
                 var cpass     = document.getElementById('<%=scPassword.ClientID %>').value;
                 
                 /*Logic for validation code*/
        
                 if (Name == "")
                 {
                     alert("Please Enter Name.");
                     return false;
                 }
        
                 var arrDbirth = Bdate.split("-");
        
                 if (Bdate == "")
                 {
                     alert("Enter Birth Date.");
                     return false;
                 }
        
                 else if ((Bdate == arrDbirth[0]) || (arrDbirth[0].length != 2) || arrDbirth[1].length != 2 || arrDbirth[2].length != 4 || !arrDbirth[0].match(/^[0-9]*$/) || !arrDbirth[1].match(/^[0-9]*$/) || !arrDbirth[2].match(/^[0-9]*$/) || Number(arrDbirth[0]) > 31 || Number(arrDbirth[1]) > 12)
                 {
                     alert("Birth Date Format Incorrect or out of Range.");
                     return false;
                 }
        
                 if (!validateEmail(Email))
                     return false;
        
        
                 if (pass == "" || cpass == "")
                 {
                     alert("Password field is empty.");
                     return false;
                 }
        
                 else if (pass != cpass)
                 {
                     alert("Passwords do not match.");
                     return false;
                 }
                    
        
                 if (phone.length != 11)
                 {
                     alert("Phone number should be of 11 digits.");
                     return false;
                 }
                
        
                 if (Request.Form["Gender"] == null)
                 {
                     alert("Gender not selected.");
                     return false;
                 }
                
                 return true;
             }
        
        
             //----------------------Function2-----------------------------//
             function validateL() 
             {
                 var Email        = document.getElementById('<%=loginEmail.ClientID %>').value;
                 var Password     = document.getElementById('<%=loginPassword.ClientID %>').value;
                 
                 /*now the validation code*/
        
                 if (!validateEmail(Email))
                     return false;
        
        
                 if (Password == "")
                 {
                     alert("Please Enter Password.");
                     return false;
                 }
        
                 return true;
             }
        
             //------------------------------------------------------------------//
             //------------------------------------------------------------------//
             //------------------------------------------------------------------//
        </script>


        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="assets/css/form-elements.css" />
        <link rel="stylesheet" href="assets/css/style.css" />

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png" />

        <style>
            .wrapper{
      overflow: hidden;
      background: #fff;
      max-width: 1170px;
      padding: 18px;
      border-radius: 15px;
      box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
    }
    
    .wrapper .slide-controls{
      position: relative;
      display: flex;
      height: 50px;
      width: 100%;
      overflow: hidden;
      margin: 30px 0 10px 0;
      justify-content: space-between;
      border: 1px solid lightgrey;
      border-radius: 15px;
    }
    .slide-controls .slide{
      height: 100%;
      width: 100%;
      color: #fff;
      font-size: 18px;
      font-weight: 500;
      text-align: center;
      line-height: 48px;
      cursor: pointer;
      z-index: 1;
      transition: all 0.6s ease;
    }
    .slide-controls label.signup{
      color: #000;
    }
    .slide-controls .slider-tab{
      position: absolute;
      height: 100%;
      width: 50%;
      left: 0;
      z-index: 0;
      border-radius: 15px;
      background: -webkit-linear-gradient(left,#003366,#004080,#0059b3
    , #0073e6);
      transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
    }
    .slide-controls input[type="radio"]{
      display: none;
    }
    #signup:checked ~ .slider-tab{
      left: 50%;
    }
    #signup:checked ~ label.signup{
      color: #fff;
      cursor: default;
      user-select: none;
    }
    #signup:checked ~ label.login{
      color: #000;
    }
    #login:checked ~ label.signup{
      color: #000;
    }
    #login:checked ~ label.login{
      cursor: default;
      user-select: none;
    }
    .wrapper .form-container{
      width: 100%;
      overflow: hidden;
    }
    .form-container .form-inner{
      display: flex;
      width: 200%;
    }
        </style>

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript">
           
            $(document).ready(function () {
                $("div.sign_up").hide();
                $(".login").click(function () {
                    $("div.sign_up").hide();
                    $("div.login").show();
                });
                $(".signup").click(function () {
                    $("div.login").hide();
                    $("div.sign_up").show();
                });
            });
        </script>

    </head>



    <body>
        <form id="SignUpPage" runat="server">
            <div>
                <!-- Top content -->

                <div class="top-content">
                    <div>
                        <!-- class="inner-bg" -->
                        <div class="container">

                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2 text">

                                    <h1 style="padding-top: 0px; margin-top: 0px"><strong>UBIT Health Care Hospital</strong></h1>

                                    <div class="description">
                                        <p>
                                            <strong>"Login &amp; Registration Form"</strong> for Health Care Patients.
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper">
                                <div class="form-container" style="max-height: 830px;">
                                    <div class="slide-controls">
                                        <input type="radio" name="slide" id="login" checked>
                                        <input type="radio" name="slide" id="signup">
                                        <label for="login" class="slide login">Login</label>
                                        <label for="signup" class="slide signup">Signup</label>
                                        <div class="slider-tab"></div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 login cntrBlock">
                                            <div class="form-box">
                                                <div class="form-top">
                                                    <div class="form-top-left">

                                                        <h3>Just Sign in</h3>
                                                        <p>Welcome Back, Already has Account</p>
                                                    </div>

                                                    <div class="form-top-right">
                                                        <i class="fa fa-key"></i>
                                                    </div>
                                                </div>

                                                <div class="form-bottom">

                                                    <!-- login start here -->

                                                    <div class="form-group ">

                                                        <asp:TextBox ID="loginEmail" runat="server" type="text" class="form-username form-control" placeholder="Email Address"></asp:TextBox>
                                                    </div>

                                                    <div class="form-group">

                                                        <asp:TextBox ID="loginPassword" runat="server" type="password" class="form-username form-control" placeholder="Password"></asp:TextBox>

                                                    </div>

                                                    <asp:Button ID="loginUserName" runat="server" type="submit" Text="Login" class="btn btn-primary" Style="height: 50px; width: 100%; border-radius: 15px; position: relative; overflow: hidden; background: -webkit-linear-gradient(right,#003366,#004080,#0059b3
, #0073e6); border-radius: 15px;" OnClientClick="return validateL();" OnClick="loginV"></asp:Button>


                                                    <!--login ends here -->

                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6 sign_up cntrBlock">
                                            <div class="form-box">
                                                <div class="form-top">
                                                    <div class="form-top-left">
                                                        <h3>Sign up now</h3>
                                                        <p>Don't have an Account? Please Sign up</p>
                                                    </div>
                                                    <div class="form-top-right">
                                                        <i class="fa fa-pencil"></i>
                                                    </div>
                                                </div>

                                                <div class="form-bottom">
                                                    <!-- sign up form :)-->


                                                    <div class="form-group">

                                                        <asp:TextBox ID="sName" runat="server" type="text" class="form-username form-control" placeholder="Patient Name"></asp:TextBox>

                                                    </div>

                                                    <div class="form-group">

                                                        <asp:TextBox ID="sBirthDate" runat="server" type="text" class="form-username form-control" placeholder="Birth Date (dd-mm-yyyy)"></asp:TextBox>

                                                    </div>

                                                    <div class="form-group">

                                                        <asp:TextBox ID="sEmail" runat="server" type="text" class="form-username form-control" placeholder="Email Address: abc@etc.com"></asp:TextBox>

                                                    </div>

                                                    <div class="form-group">

                                                        <asp:TextBox ID="sPassword" runat="server" type="password" class="form-username form-control" placeholder="Enter New Password"></asp:TextBox>

                                                    </div>


                                                    <div class="form-group">

                                                        <asp:TextBox ID="scPassword" runat="server" type="password" class="form-username form-control" placeholder="Confirm Password"></asp:TextBox>

                                                    </div>


                                                    <div class="form-group">

                                                        <asp:TextBox ID="Phone" runat="server" type="text" class="form-username form-control" placeholder="Contact No."></asp:TextBox>

                                                    </div>

                                                    <div class="form-group">

                                                        <input type="radio" name="Gender" value="M" id="test" checked="checked" /> Male

                                                        <input type="radio" name="Gender" value="F" /> Female


                                                    </div>


                                                    <div class="form-group">

                                                        <asp:TextBox ID="Address" placeholder="Address" TextMode="multiline" Columns="40" Rows="10" runat="server" Height="56px" Width="357px" />

                                                    </div>

                                                    <asp:Button Text="SignUp" runat="server" type="submit" class="btn btn-primary" Style="height: 50px; width: 100%; border-radius: 15px; position: relative; overflow: hidden; background: -webkit-linear-gradient(right,#003366,#004080,#0059b3
, #0073e6); border-radius: 15px;" OnClientClick="return validateS();" OnClick="signupV"></asp:Button>


                                                    <!-- sign up ends here -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- Footer 
        <footer>
        	<div class="container">
        		<div class="row">
        			
        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
        				<p>If you have any query, please feel free to contact us. <i class="fa fa-smile-o"></i></p>
                    </div>
        			
        		</div>
        	</div>
        </footer>
            -->

                    </div>
                </div>
            </div>
        </form>
    </body>

    </html>