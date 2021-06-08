<%@page import="DAO.UserDAO"%>
<%@ page import="bank.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  UserDAO DAO =new  UserDAO(connection);
%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="admin/style.css">
    <link rel="stylesheet" href="../css/style.css">
    <title>Com Bank</title>
</head>

<body>
    <%@include file="sidenav.jsp" %>
    <div style="min-height:92vh;" class="d-block">
        <div style="position: relative;left: 18%; width:70%">
            <h2 class="d-flex mx-auto">User Profile</h2>
            <div>

                <div class="col-md-4 mb-3 mx-auto">
                    <div class="profile-img">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog"
                            alt="" />
                    </div>
                </div>

                <div class="tab-pane fade show active">
                			<%
								try {
							    	ResultSet rs = DAO.userById("8");
							    	
									while(rs.next()) {
										%>
										
											 <div class="row">
					                        <div class="col-md-4">
					                            <label>User Id</label>
					                        </div>
					                        <div class="col-md-4">
					                            <p><% out.println(rs.getString("id")); %></p>
					                        </div>
					                    </div>
					                    <div class="row">
					                        <div class="col-md-4">
					                            <label>Name</label>
					                        </div>
					                        <div class="col-md-4">
					                            <p><% out.println(rs.getString("name")); %></p>
					                        </div>
					                    </div>
					                    <div class="row">
					                        <div class="col-md-4">
					                            <label>Email</label>
					                        </div>
					                        <div class="col-md-4">
					                            <p><% out.println(rs.getString("email")); %></p>
					                        </div>
					                    </div>
					                    <div class="row">
					                        <div class="col-md-4">
					                            <label>Phone</label>
					                        </div>
					                        <div class="col-md-4">
					                            <p>-</p>
					                        </div>
					                    </div>
					                    <div class="row">
					                        <div class="col-md-4">
					                            <label>Role</label>
					                        </div>
					                        <div class="col-md-4">
					                            <p><% if(rs.getString("type").equals("1")){
					                            			out.println("Cashier");
					                            		}else{
					                            			out.println("Manager");
					                            		}
					                            	%></p>
					                           
					                        </div>
					                    </div>
					
					                    <button type="button" class="btn btn-danger float-end" type="submit" >
					                        Delete Account
					                    </button>

                    
										<%
									}
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							%>
                    
                </div>
            </div>

        </div>
    </div>
    </div>





    </div>
    <footer class="bg-light text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2021 Copyright:
            <a class="text-dark" href="https://combank.lk/">Com Bank</a>
        </div>
        <!-- Copyright -->
    </footer>
</body>
<script>
    function showpassword() {
        var x = document.getElementById('chgpwd').style.display;
        if (x == 'none') {
            document.getElementById('chgpwd').style.display = "";
        } else {
            document.getElementById('chgpwd').style.display = "none";
        }
    }
</script>

</html>