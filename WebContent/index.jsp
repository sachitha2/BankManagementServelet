<%@page import="DAO.TransactionDAO"%>
<%@page import="Model.Customer"%>
<%@page import="DAO.AccountDAO"%>
<%@page import="DAO.CustomerDAO"%>
<%@ page import="bank.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  TransactionDAO transactionDAO = new TransactionDAO(connection);
  AccountDAO account = new AccountDAO(connection);
  
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
    <div style="min-height:92vh;" class="position-relative">
        <div style="position: fixed;left: 18%">
            <div class="row mx-auto ms-5">
                <h3 class="mx-auto mt-5">Today Summary</h3>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center text-l">
                            <h5 class="card-title text-center">Deposits</h5>
                            <p class="card-text fs-2"><% out.print(account.statdep()); %></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Withdrawal</h5>
                            <p class="card-text fs-2"><% out.print(account.statwith()); %></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center">
                            <h5 class="card-title">New Customers</h5>
                            <p class="card-text fs-2">180</p>
                        </div>
                    </div>
                </div>
            </div>
            <h2 class="mx-auto mt-5">Last Transactions</h2>
            <div class="mx-auto me-5">
                <table class="table table-success table-striped me-md-auto">
                    <tr class="table-primary">
                        <th>Tnx. Id</th>
                        <th>Tnx. Date</th>
                        <th>Acc. no</th>
                        <th>Amount(Cr./<span class="text-danger">Dr.</span>)</th>
                        <th>Cashier Id</th>
                    </tr>
                   <%
								try {
							    	ResultSet rs = transactionDAO.listLastTen();
							    	
									while(rs.next()) {
										%>
										
												  <tr>
							                        <td><% out.println(rs.getString("t_id")); %></td>
							                        <td><% out.println(rs.getString("date")); %></td>
							                        <td><% out.println(rs.getString("account_id")); %></td>
							                        <td>Rs. <% 
							                        	if(rs.getFloat("amount") < 0){
							                        		%>
							                        		<strong style="color:red"><% out.println(rs.getString("amount")); %></strong>
							                        		<%
							                        		
							                        	}else{
							                        		%>
							                        		<strong style="color:green"><% out.println(rs.getString("amount")); %></strong>
							                        		<%
							                        	}
							                        %></td>
							                        <td><% out.println(rs.getString("user_id")); %></td>
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