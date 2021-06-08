<%@page import="Model.Customer"%>
<%@page import="DAO.AccountDAO"%>
<%@page import="DAO.CustomerDAO"%>
<%@ page import="bank.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  AccountDAO account = new AccountDAO(connection);
  CustomerDAO customer = new CustomerDAO(connection);
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
    <link rel="stylesheet" href="css/style.css">
    <title>Com Bank</title>
</head>

<body>
	<%@include file="sidenav.jsp" %>
    <div style="min-height:92vh;" class="d-block">
        <div style="position: relative;left: 18%; width:70%">
            <h2 class="d-flex mx-auto">Search User</h2>
            <div class="input-group mb-3 ms-3 mt-5">
                <input type=" text" class="form-control" placeholder="Account Number, Name, ID No"
                    aria-label="Account Number" aria-describedby="button-addon2">
                <button class="btn btn-outline-primary" type="button" id="button-addon2">🔍 Find</button>
            </div>
            <!--  View all before search -->
            <div>
                <table class="table table-striped table-hover ms-4">
                    <tr class="table-primary">
                        <th>Acc. No</th>
                        <th>Name</th>
                        <th>Balance</th>
                        <th>Acc. Type</th>
                        <th>Action</th>
                    </tr>
                    <%
								try {
							    	ResultSet rs = account.list();
							    	
									while(rs.next()) {
										%>
										
											 <tr>
						                        <td><% out.println(rs.getString("account_no")); %></td>
						                        <td>
						                        	<%
						                        		Customer  c = customer.GetACustomerById(rs.getString("customer_id"));
						                        		out.print(c.getName());
						                        	%>
						                        </td>
						                        
						                        <td><% out.println(rs.getString("balance")); %></td>
						                        <td>Type here</td>
						                        <td><a href="user.jsp?acc=<% out.println(rs.getString("account_no")); %>&customer=<% out.println(rs.getString("customer_id")); %>">View More</a></td>
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

</html>