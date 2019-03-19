<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AdminLogin | Library Management System</title>

        <meta charset="UTF-8">
        <link rel="icon" href="assets/images/icon.png" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />

        <link href='https://googledrive.com/host/0B4zcNjwo-rgsTjc0OEtJby1pbFk/techfurk fmderana.css' rel='stylesheet' type='text/css'>


        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/hover.css">
        <link rel="stylesheet" type="text/css" href="assets/css/globle.css">
        <link href="https://fonts.googleapis.com/css?family=Teko" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/includes/b-news/css/font-awesome-animation.css" />
        <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style type="text/css">
            .offset_0{padding-left: 0 !important;padding-right: 0 !important;}
            .offset_1{padding: 15px 10px 0 10px !important;}
            .navbar a:hover{background-color: inherit !important;}
            body{
                background:url(assets/images/allback.jpg) no-repeat center center fixed;
                -webkit-background-size:cover;
                -moz-background-size:cover;
                -o-background-size:cover;
                background-size:cover;
            }
        </style>
    </head>
    <body style="background-color: #151515;">
        <header>
            <div class="container-fulid" style="height: 100px;border-bottom: 3px solid #2695bb;background-color: #fff;">
                <div class="container">
                    <div class="col-md-4">
                        <img class="img-responsive logob" src="assets/images/logo.png">
                    </div>
                    <div class="col-md-8 menubox">
                        <div class="topnav" id="myTopnav">
                            <a href="index.jsp" class="style1">Home</a>
                            <a href="about.jsp" class="style1">About</a>
                            <a href="services.jsp" class="style1">Services</a>
                            <%--  <a href="addadmin.jsp" class="style1 sinupbox">Sin Up &nbsp; <i class="fa fa-caret-down"></i></a> --%>
                            <a href="contact.jsp" class="style1">Contact</a>
                            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onClick="myFunction()">&#9776;</a>		
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section class="">
            <div class="container">
                <div class="col-md-12">
                    <form name="Form1" action="adminlogin.jsp" method="POST">
                    
                    

                </div>
                <div class="clearfix"></div>
                <div class="col-md-6">
                    <img style="margin-top: 30px;" class="img-responsive addbookimg" src="assets/images/addbook.jpg">
                </div>
                <div class="col-md-6">
                    <section style="margin-top: 30px;" class="panel">
                        <header class="panel-heading form-title">
                            Login


                           

                        </header>
                        <div class="panel-body">
                            <form method="post" role="form">
                                <div class="col-md-12 offset_0">
                                    <div class="col-md-5 offset_0 offset_1" style="text-align: center;">
                                        <img src="assets/images/adminlogin.png">
                                    </div>

                                    <div class="col-md-7 offset_0 offset_1">
                                        
                                        
                                        
                                     
                                        
                                        <div class="form-group">
                                            
                                            
                                            <label >User ID</label>
                                            <input type="text" class="form-control" id="#" name="id" placeholder="Enter your ID" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Password</label>
                                            <input type="password" class="form-control" id="#" name="password" placeholder="Enter Your Password" autocomplete="off">
                                        </div>

                                    </div>

                                    <div class="col-md-12 offset_0 offset_1">
                                        <button style="width: 100%;" type="submit" name="btnsave" class="btn btn-success">LOGIN</button>
                                    </div>
                                        
                            
                        </div>
                        </form>
                        </div>
                    </section>
                </div>
            </div>
        </section>
        <footer>
            <div style="text-align: center;border-top: 0px solid #ccc;padding-top: 12px;margin-top: 20px;">
                <p style="font-size: 14px;color: #131313;">Library Management System | 2017</p>
            </div>
        </footer>
        </form>
          
        
      
                            <%
             
                                if(request.getParameter("btnsave")!=null){
                                String id = request.getParameter("id");
                                String password = request.getParameter("password");
                                
                                try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
                                Statement stmt = con.createStatement();
                                ResultSet rs= stmt.executeQuery("SELECT * FROM admin WHERE id='" + id + "' and password='" + password + "'");
                                
                                
                                if (rs.next()) {
                                   
                                   //session.setAttribute("", value);
                                   response.sendRedirect("loginSuccess.jsp");
                                }
                                else{
                                out.println("Invalid login try with user id and password");
                                }
                                }catch(Exception e){
                                    
                                out.println("Invalid password");
                                }
                                }
                            %>

    </body>
    <!--menu-->
    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>
    <!--menu-->
</html>