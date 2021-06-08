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

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../css/style.css">
    <title>Com Bank</title>
</head>

<body>
	<%@include file="sidenav.jsp" %>
    <div style="min-height:92vh;" class="d-block">
        <div style="position: relative;left: 18%; width:70%">
            <h2 class="d-flex mx-auto">Search User</h2>
            <button type="button" class="btn btn-primary active" data-bs-toggle="modal" data-bs-target="#addaccmodal">
                Add New Cashier</button>

            <div class="modal  fade " id="addaccmodal" data-bs-backdrop="static" tabindex="-1"
                aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Create New Cashier Account</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="../AddUser" method="post">
                                <!-- TODO -->
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="recipient-fname" class="col-form-label">First Name</label>
                                            <input type="text" class="form-control inpwidth" name="fname"
                                                id="recipient-fname">
                                        </div>
                                        <div class="col-md-4 ms-auto">
                                            <label for="recipient-name" class="col-form-label">Last Name</label>
                                            <input type="text" class="form-control inpwidth" name="lname"
                                                id="recipient-name">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="recipient-email" class="col-form-label">Email</label>
                                            <input type="text" class="form-control inpwidth" name="email"
                                                id="recipient-email">
                                        </div>
                                        <div class="col-md-4 ms-auto">
                                            <label for="recipient-mobile" class="col-form-label">Phone Number</label>
                                            <input type="text" class="form-control inpwidth" name="mobile"
                                                id="recipient-mobile">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="recipient-url" class="col-form-label">Profile Image
                                                URL</label>
                                            <input type="text" class="form-control inpwidth" name="profileurl"
                                                id="recipient-url">
                                        </div>
                                        <div class="col-md-4 ms-auto">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="recipient-pwd" class="col-form-label">Password</label>
                                            <input type="text" class="form-control inpwidth" name="pwd" id="recipient-pwd">
                                        </div>
                                        <div class="col-md-4 ms-auto">
                                            <label for="recipient-mobile" class="col-form-label">Confirm
                                                Password</label>
                                            <input type="text" class="form-control inpwidth" name="pwda"
                                                id="recipient-cpwd">
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="input-group mb-3 ms-3 mt-5">
                <input type=" text" class="form-control" placeholder="Account Number, Name, ID No"
                    aria-label="Account Number" aria-describedby="button-addon2">
                <button class="btn btn-outline-primary" type="button" id="button-addon2">🔍 Find</button>
            </div>
            <!--  View all before search -->
            
            <div>
            	<table class="table table-striped table-hover ms-4">
            			<tr class="table-primary">
	                        <th>ID</th>
	                        <th>Name</th>
	                        <th>Email</th>
	                        <th>Phone</th>
	                        <th>Action</th>
                    	</tr>
            				<%
								try {
							    	ResultSet rs = DAO.userList();
							    	
									while(rs.next()) {
										%>
										
											 <tr>
						                        <td><% out.println(rs.getString("id")); %></td>
						                        <td><% out.println(rs.getString("name")); %></td>
						                        <td><% out.println(rs.getString("email")); %></td>
						                        <td>-</td>
						                        <td><a href="cashierview.jsp?id=1598412">View More</a></td>
						                    </tr>
										<%
									}
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							%>
							</table>
                
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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
    crossorigin="anonymous"></script>
<script>

</script>

</html>