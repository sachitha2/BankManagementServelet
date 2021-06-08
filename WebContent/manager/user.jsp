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
  Customer  c = customer.GetACustomerById(request.getParameter("customer"));
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
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../css/style.css">
    <title>Com Bank</title>
</head>

<body style="overflow-x: hidden;">
    <%@include file="sidenav.jsp" %>
    <div style="min-height:92vh;" class="d-block">
        <div style="position: relative;margin-right: 5px;margin-left: 18%; ">
            <h2 class="d-flex mx-auto">User Details</h2>

            <!--  open only after submitting the acc no -->
            <div>
                <div class="row mb-3">
                    <div class="col-sm" style="margin-left:40%"><span class="h5">Acc. No<span
                                class="textnorm">135012369</span></span></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-4"><span class="h4">Name: <span class="textnorm"><% out.print(c.getName()); %></span></span>
                    </div>
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><span class="h4">ID No. <span class="textnorm"><% out.print(c.getNic()); %></span></span></div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm"><span class="h5">DOB: <span class="textnorm"><% out.print(c.getDob()); %></span></span></div>
                    <div class="col-sm"><span class="h5">Gender: <span class="textnorm"><% out.print(c.getGender()); %></span></span></div>
                    <div class="col-sm"><span class="h5">Acc. Type: <span class="textnorm">-</span></span></div>
                    <div class="col-sm"><span class="h5">Email: <span class="textnorm"><% out.print(c.getEmail()); %></span></span></div>
                </div>
                <div class="row mt-3">
                    <div class="col-sm"><span class="h5">Address:
                            <textarea class="form-control" rows="3">
                            	<% out.print(c.getAddress()); %>
                            </textarea>
                    </div>
                </div>
                <div class="row mt-3 bg-light mx-auto">
                    <div class=" col-sm" style="margin-left:35%"><span class="h2">Balance: <span
                                class="textnormh2">Rs.5,000.00</span></span>
                    </div>
                </div>
                <div class="mx-auto me-5 mt-5">
                    <h3 class="mt-1 mb-3">Transactions</h3>
                    <table class="table table-success table-striped me-md-auto">
                        <tr class="table-primary">
                            <th>Tnx. Id</th>
                            <th>Tnx. Date</th>
                            <th>Acc. no</th>
                            <th>Amount(Cr./<span class="text-danger">Dr.</span>)</th>
                            <th>Balance</th>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>2021/12/16</td>
                            <td>01583694</td>
                            <td class="text-danger">Rs. 250.00</td>
                            <td>Rs.2500</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>2021/12/16</td>
                            <td>01583694</td>
                            <td>Rs. 250.00</td>
                            <td>Rs.1500</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>2021/12/16</td>
                            <td>01583694</td>
                            <td class="text-danger">Rs. 250.00</td>
                            <td>Rs.2500</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>2021/12/16</td>
                            <td>01583694</td>
                            <td>Rs. 250.00</td>
                            <td>Rs.1500</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>2021/12/16</td>
                            <td>01583694</td>
                            <td class="text-danger">Rs. 250.00</td>
                            <td>Rs.2500</td>
                        </tr>
                    </table>
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

</html>