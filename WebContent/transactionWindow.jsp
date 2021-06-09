<%@page import="Model.Account"%>
<%@page import="DAO.TransactionDAO"%>
<%@page import="Model.Customer"%>
<%@page import="DAO.AccountDAO"%>
<%@page import="DAO.CustomerDAO"%>
<%@ page import="bank.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  AccountDAO accountDAO = new AccountDAO(connection);
  CustomerDAO customerDAO = new CustomerDAO(connection);
  String acc = request.getParameter("acc");
  //Customer customerData = customer.GetACustomerByNIC(customerNic);
  Account account = accountDAO.accountByAccId(acc);
  TransactionDAO transactionDAO = new TransactionDAO(connection);
  
 
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

<body>
    <%@include file="sidenav.jsp" %>
    <div style="min-height:92vh;" class="d-block">
        <div style="position: relative;left: 18%; width:70%">
            <h2 class="d-flex mx-auto">Transaction Window</h2>
            <form action="" method="get">
            <div class="input-group mb-3 ms-3 mt-3">
                
	                <input type=" text" class="form-control" placeholder="Account Number" aria-label="Account Number" name="acc"
	                    aria-describedby="button-addon2">
	                <button class="btn btn-outline-primary" type="submit" id="button-addon2">🔍 Find</button>
                
                
            </div>
            </form>
            
            <%
            	if(acc != null && acc != ""){
            		//check acc availability here
            		if(account != null){
            			Customer customer = customerDAO.GetACustomerByNIC(account.getCustomer_nic());
            		%>
            		<!--  open only after submitting the acc no -->
            <div>
                <div class="row mb-3">
                    <div class="col-sm" style="margin-left:40%"><span class="h5">Acc. No <span
                                class="textnorm"> <% out.println(acc); %></span></span></div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-4"><span class="h4">First Name: <span class="textnorm"><% out.println(customer.getName()); %></span></span>
                    </div>
                    <div class="col-sm-4"><span class="h4"></div>
                    <div class="col-sm-4"><span class="h4">ID No. <span class="textnorm"><% out.println(customer.getNic()); %></span></span></div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm"><span class="h5">DOB: <span class="textnorm"><% out.println(customer.getDob()); %></span></span></div>
                    <div class="col-sm"><span class="h5">Gender: <span class="textnorm"><% out.println(customer.getGender()); %></span></span></div>
                    <div class="col-sm"><span class="h5">Acc. Type: <span class="textnorm"><% out.println(account.getAccount_type()); %></span></span></div>
                    <div class="col-sm"><span class="h5">Email: <span class="textnorm"><% out.println(customer.getEmail()); %></span></span></div>
                </div>
                <div class="row mt-3">
                    <div class="col-sm"><span class="h5">Address:
                            <textarea class="form-control" rows="3">
                            
                            <% out.println(customer.getAddress()); %>
                            </textarea>
                    </div>
                </div>

                <div class="row mt-3 bg-light mx-auto">
                    <div class=" col-sm" style="margin-left:35%"><span class="h2">Balance: <span
                                class="textnormh2">Rs.<% out.println(transactionDAO.totAcc(acc)); %></span></span>
                    </div>
                </div>
                <form method="post" action="MakeTransactionsForCashierSide">
                    <!-- TODO pass here the acc no & others if needed -->
                    <input type="hidden" name="acc" value="<% out.print(acc); %>">
                    
                    <div class="row ms-5 mt-3">
                        <div class="form-check col-sm">
                            <input class="form-check-input" type="radio" name="deposit" value="deposit" id="flexRadioDefault1"
                                checked>
                            <label class="form-check-label" for="flexRadioDefault1">
                                Deposit
                            </label>
                        </div>
                        <div class="form-check col-sm">
                            <input class="form-check-input" type="radio" name="deposit" value="withdraw" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault2">
                                Withdrawal
                            </label>
                        </div>
                    </div>
                    <div class="row ms-5 mt-3">
                        <div class="input-group mb-3">
                            <span class="input-group-text">Amount - Rs.</span>
                            <input type="number" min="1" class="form-control" placeholder="Amount 500.00"
                                aria-label="Username" onkeyup="disableagain()" id="amnt1"
                                aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Retype Amount - Rs.</span>
                            <input type="number" min="1" class="form-control" name="Amount" placeholder="Amount 500.00"
                                aria-label="Username" aria-describedby="basic-addon1" id="amnt2" onfocus="checkamnt()"
                                onkeyup="enabler()">
                        </div>
                        <input type="reset" style="width:130px;margin-left:100%;margin-bottom: 10px;"
                            onclick="resetb()">
                        <input type="submit" id="form-btn" disabled class="btn btn-primary active mb-5"
                            aria-current="page" value="Complete Transaction">
                    </div>
                </form>
            </div>
            		<%
            		}
            	}
            %>
            
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

    function checkamnt() {
        var in1 = document.getElementById('amnt1');
        var btn = document.getElementById('form-btn');
        var in2 = document.getElementById('amnt2');
        
    }
    function disableagain() {
        var in1 = document.getElementById('amnt1');
        var btn = document.getElementById('form-btn');
        var in2 = document.getElementById('amnt2');
        if (in1.value == in2.value && in1.value >= 1 && in2.value >= 1) {
        } else {
            btn.setAttribute("disabled", "true");
        }
    }

    function enabler() {
        var in1 = document.getElementById('amnt1');
        var btn = document.getElementById('form-btn');
        var in2 = document.getElementById('amnt2');
        if (in1.value == in2.value && in1.value >= 1 && in2.value >= 1) {
            btn.removeAttribute("disabled");
        } else {
            btn.setAttribute("disabled", "true");
        }
    }

    function resetb() {
        var in1 = document.getElementById('amnt1');
        in1.type = "text";
    }

</script>

</html>