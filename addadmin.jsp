<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Registration | Library Management System</title>

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
                    <div class="col-md-8 menubox col-xs-12">
                        <nav class="navbar navbar-inverse">
                            <div class="container-fluid">
                                <ul class="nav navbar-nav">
                                    <li class="active1"><a href="index.jsp">Home</a></li>
                                    <li><a href="services.jsp">Service</a></li>

                                    </li>
                                    <li><a href="about.jsp">About Us</a></li>
                                    <li><a href="adminlogin.jsp">Logout</a></li>
                                </ul>
                                <%--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Book Section <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="addbook.jsp">Add Books</a></li>
                                        <li><a href="booklist.jsp">View Book</a></li>
                                        <li><a href="removebook.jsp">Remove Book</a></li>
                                        <li><a href="issuebook.jsp">Issue Book</a></li>
                                        <li><a href="issuebookview.jsp">View Issued Book</a></li>
                                        <li><a href="returnbook.jsp">Return Book</a></li>
                                    </ul>
                                </li>
                            
                                --%>
                                <%--   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Student <span class="caret"></span></a>
                                       <ul class="dropdown-menu">
                                           <li><a href="addstudent.jsp">Add Student</a></li>
                                           <li><a href="studentlist.jsp">View Student</a></li
                                
                              
                                  </ul>
                                --%>  

                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <section class="">
            <div class="container">
                <div class="col-md-12">

                </div>
                <div class="clearfix"></div>
                <div class="col-md-6">
                    <img style="margin-top: 30px;" class="img-responsive addbookimg" src="assets/images/addbook.jpg">
                </div>
                <div class="col-md-6">
                    <form name="Form1" action="addadmin.jsp" method="POST">


                        <section style="margin-top: 30px;" class="panel">
                            <header class="panel-heading form-title">
                                Admin Registration
                            </header>
                            <div class="panel-body">
                                <form method="post" enctype="multipart/form-data"  role="form">
                                    <div class="col-md-12 offset_0">
                                        <div class="col-md-6 offset_0 offset_1">

                                            <div class="form-group">
                                                <label >Admin ID</label>
                                                <input type="text" class="form-control" id="#" name="id" placeholder="Enter Admin ID" autocomplete="off">
                                            </div>

                                            <div class="form-group">
                                                <label >Email</label>
                                                <input type="text" class="form-control" id="#" name="email" placeholder="Admin@example.com" autocomplete="off">
                                            </div>

                                            <div class="form-group">
                                                <label >Admin Gender</label>
                                                <select class="form-control" id="reporter" name="gender">
                                                    <option>- Select Gender -</option>
                                                    <option value="male" >Male</option>
                                                    <option value="female" >Female</option>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label >Contact Number</label>
                                                <input type="text" class="form-control" id="#" name="contact" placeholder="Enter Contact No" autocomplete="off">
                                            </div>

                                        </div>

                                        <div class="col-md-6 offset_0 offset_1">

                                            <div class="form-group">
                                                <label >Admin Name</label>
                                                <input type="text" class="form-control" id="#" name="name" placeholder="Enter Admin Name" autocomplete="off">
                                            </div>

                                            <div class="form-group">
                                                <label >Password</label>
                                                <input type="password" class="form-control" id="#" name="password" placeholder="Enter Admin Name" autocomplete="off">
                                            </div>

                                            <div class="form-group">
                                                <label >Admin DOB</label>
                                                <input type="text" class="form-control" id="#" name="dob" placeholder="dd-mm-yyyy" autocomplete="off">
                                            </div>


                                            <div class="form-group">
                                                <label >Address</label>
                                                <input type="text" class="form-control" id="#" name="address" placeholder="Enter Admin Address" autocomplete="off">
                                            </div>

                                        </div>

                                        <div class="col-md-12 offset_0 offset_1">
                                            <button style="width: 100%;" type="submit" name="btnsave" class="btn btn-success">SUBMIT</button>
                                        </div>


                                        <div class="col-md-11 offset_0 offset_1">
                                            <input type ="button" value="Reset" onclick="this.form.reset()" button style="width: 45%;" class="btn btn-success"/>
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
        if (request.getParameter("id") != null) {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String dob = request.getParameter("dob");
            String contact = request.getParameter("contact");

            String address = request.getParameter("address");
            String gender = request.getParameter("gender");

            char c = 'M';

            if (gender.equals("male")) {
                c = 'M';
            } else {
                c = 'F';
            }

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
                Statement stmt = con.createStatement();

                String query = "INSERT INTO admin(id,name,email,password,gender,dob,contactNo,address) VALUES('" + id + "','" + name + "','" + email + "','" + password + "','" + c + "','" + dob + "','" + contact + "','" + address + "')";
                int a = stmt.executeUpdate(query);
                if (a > 0) {
                    // response.sendRedirect("addstudent.jsp");

                    out.print("successfully");

                } else {

                    out.print("wrong");
                }

            } catch (Exception e) {

                out.print("" + e.getMessage());
                e.printStackTrace();
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