<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<html>
    <head>
        <title>Edit Student Registration Details | Library Management System</title>

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

                    <form name="Form1" action="editstudent.jsp" method="POST">

                                 <%
                                     String stID=request.getParameter("stID");
        
                                     
                                     
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library?", "root", "");
                            Statement stmt = con.createStatement();

                            ResultSet rs = stmt.executeQuery("select * from student WHERE id="+stID);
 

                        %>





 <% while(rs.next()){   %>  

                           
                            
                            
                            
                            
                          
                        
                        
                        
                        
                </div>
                <div class="clearfix"></div>
                <div class="col-md-6">
                    <img style="margin-top: 30px;" class="img-responsive addbookimg" src="assets/images/addbook.jpg">
                </div>
                <div class="col-md-6">
                    <section style="margin-top: 30px;" class="panel">
                        <header class="panel-heading form-title">
                            Edit Student Registration Details
                        </header>
                        <div class="panel-body">
                            <form method="post" enctype="multipart/form-data"  role="form">
                                <div class="col-md-12 offset_0">
                                    <div class="col-md-6 offset_0 offset_1">

                                        <div class="form-group">
                                            <label >Student ID</label>
                                            <input type="text" class="form-control" id="#" name="id" value="<%= rs.getString(1)%>" paceholder="Enter Student ID" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Email</label>
                                            <input type="text" class="form-control" id="#" name="email" value="<%= rs.getString(3)%>" placeholder="Enter The Email" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Student Gender</label>
                                            <select class="form-control" id="reporter" name="gender">
                                                <option>- Select Gender -</option>
                                                <%  String gender=rs.getString(5);
                                                   
                                                    if(gender.equals("F")){%>
                                                  
                                                <option value="male">Male</option>
                                                <option value="female" selected>Female</option>
                                                <%
 
}
else{%>

<option value="male" selected>Male</option>
<option value="female" >Female</option>
<%
}%>
                                                
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label >Contact Number</label>
                                            <input type="text" class="form-control" id="#" name="contactNo" value="<%= rs.getString(7)%>" placeholder="Enter The ContactNO" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Select Student Class</label>
                                            <input type="text" class="form-control" id="#" name="classname" value="<%= rs.getString(9)%>" placeholder="Enter The Class no" autocomplete="off">
                                        </div>
                                    </div>

                                    <div class="col-md-6 offset_0 offset_1">

                                        <div class="form-group">
                                            <label >Student Name</label>
                                            <input type="text" class="form-control" id="#" name="name" value="<%= rs.getString(2)%>" placeholder="Enter The Student Name" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Password</label>
                                            <input type="password" class="form-control" id="#" name="password" value="<%= rs.getString(4)%>" placeholder="Enter the password"  autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Student DOB</label>
                                            <input type="text" class="form-control" id="#" name="dob" value="<%= rs.getString(6)%>" placeholder="Enter The DOB" autocomplete="off">
                                        </div>

                                        <div class="form-group">
                                            <label >Select Student Stream</label>
                                            <select class="form-control" id="stream" name="stream">
                                               <!-- <option>- Select Student Stream -</option>
                                                <option value="male">Maths</option>
                                                <option value="female" selected>Bio</option>
                                                <option value="male">Commerce</option>
                                                <option value="female" selected>Art</option>-->
                                                
                                                  <%  
                                                   
                                                   //String gender=rs.getString(5);
                                              try{ 
                                                  
            
                                             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
                         stmt = con.createStatement();
                                               ResultSet rt2=stmt.executeQuery("select * from student");
                                               while(rt2.next()){
                                                   out.println("<option>"+rt2.getString("stream")+"</option>");
                                               }
                                               
                                                       }catch(Exception v){
                                                           
                                                       }
%>
                                              
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label >Address</label>
                                            <input type="text" class="form-control" id="#" name="address" value="<%= rs.getString(10)%>" placeholder="Enter the Address" autocomplete="off">
                                        </div>

                                    </div>
   <%}%>
                                    <div class="col-md-12 offset_0 offset_1">
                                        <button style="width: 100%;" type="submit" name="btnupdate" class="btn btn-success">UPDATE STUDENT</button>
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
        
        
        if(request.getParameter("name")!=null){
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
             String gender = request.getParameter("gender");
           //  out.print("prannn "+gender);
        char c = 'M';
//
        if (gender.equals("male")) {
                c = 'M';
          } else {
             c = 'F';
   }

   
        String dob = request.getParameter("dob");
        String contactNo = request.getParameter("contactNo");
        String stream = request.getParameter("stream");
        String classname = request.getParameter("classname");
        String address = request.getParameter("address");

        try {
          //  Class.forName("com.mysql.jdbc.Driver");
        //    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");
         //   Statement stmt = con.createStatement();

            //String query = "insert into student (id,name,email,password,gender,dob,contactNo,stream,class,address) values ('" +id+ "','" +name+ "','" +email+ "','" +password+ "','" +gender+ "','" +dob+ "','"+contactNo+"','"+stream+"','"+classname+"','"+address+"') ";
            String query = "UPDATE student SET name='" + name + "',email='" + email + "',password='" + password + "',gender='" + c + "',dob='" + dob + "',contactNo='" + contactNo + "',stream='" + stream + "',class='" + classname + "',address='" + address + "' WHERE id= '" + id + "'";
            int a = stmt.executeUpdate(query);
            if (a > 0) {
                response.sendRedirect("studentlist.jsp");
                out.print("successfully Enter The Details");
            } else {

                out.print("wrong data You Entered");
            }

        } catch (Exception e) {

            out.print("" + e.getMessage());

        }
        }


    %>
            <%
            String stream=null;
        ResultSet rt=stmt.executeQuery("select stream from student where id='"+request.getParameter("stID")+"'");
        if(rt.first()){
            stream=rt.getString("stream");
        }
            
            
     %>
 <script type="text/javascript">
        
         jQuery(document).ready(function() {
setTimeout(function() {
        
     
        var c="<%out.print(stream);%>";
  $('#stream').val(c).attr("selected", "selected");
 }, 200);
});
   
  
 
        
        
        </script>















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