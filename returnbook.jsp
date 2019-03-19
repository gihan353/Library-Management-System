<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Return Book | Library Management System</title>

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
                                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Book Section <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="addbook.jsp">Add Books</a></li>
                                            <li><a href="booklist.jsp">View Book</a></li>
                                            <li><a href="removebook.jsp">Remove Book</a></li>
                                            <li><a href="issuebook.jsp">Issue Book</a></li>
                                            <li><a href="issuebookview.jsp">View Issued Book</a></li>
                                            <li><a href="returnbook.jsp">Return Book</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Student <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="addstudent.jsp">Add Student</a></li>
                                            <li><a href="studentlist.jsp">View Student</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="addadmin.jsp" class="style sinupbox">Add Admin &nbsp;</a></li>
                                    <li><a href="about.jsp">About Us</a></li>
                                    <li><a href="adminlogin.jsp">Logout</a></li>
                                </ul>
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
                    <img style="margin-top: 30px;" class="img-responsive addbookimg" src="assets/images/returnbook.png">
                </div>
                <div class="col-md-6">
                    <section style="margin-top: 30px;" class="panel">
                        <header class="panel-heading form-title">
                            Return Book's
                        </header>
                        <div class="panel-body">
                            <form method="post" action="returnbook.jsp"  role="form">
                                <div class="col-md-12 offset_0">
                                    <div class="col-md-6 offset_0 offset_1">

                                        <div class="form-group">
                                            <label >Select Book ID</label>
                                            <select class="form-control" id="reporter" name="bookid">
                                                <%
                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library?", "root", "");
                                                        Statement stmt = con.createStatement();
                                                        ResultSet rs = stmt.executeQuery("select * from issuebook order by bid");
                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("bid") + "</option>");
                                                        }
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 offset_0 offset_1">

                                        <div class="form-group">
                                            <label >Select Student ID</label>
                                            <select class="form-control" id="reporter" name="studentid">
                                                <%
                                                    try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library?", "root", "");
                                                        Statement stmt = con.createStatement();
                                                        ResultSet rs = stmt.executeQuery("select * from issuebook order by sid");
                                                        while (rs.next()) {
                                                            out.println("<option>" + rs.getString("sid") + "</option>");
                                                        }
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                    }
                                                %>
                                            </select>
                                        </div>

                                    </div>

                                    <div class="col-md-12 offset_0 offset_1">
                                        <button style="width: 100%;" type="submit" name="btnsave" class="btn btn-success">RETURN BOOK</button>
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
<%
                String bid = request.getParameter("bookid");
                String sid = request.getParameter("studentid");
  //          int id = Integer.parseInt(bid);

            try {
                if(bid!=null){
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
                Statement stmt = con.createStatement();
                String query = "DELETE FROM issuebook WHERE bid='"+bid+"' and sid='"+sid+"'";
                stmt.executeUpdate(query);

                out.println("Book is returned");
                }
            } catch (Exception e) {
                out.println("error ");
                e.printStackTrace();
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