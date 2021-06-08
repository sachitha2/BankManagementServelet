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
    <div style="min-height:92vh;" class="position-relative">
        <div style="position: relative;margin-right: 5px;margin-left: 18%; ">
            <div class="row mx-auto ms-5">
                <h3 class="mx-auto mt-5">Today Summary</h3>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center text-l">
                            <h5 class="card-title text-center">Deposits</h5>
                            <p class="card-text fs-2">200</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body text-center">
                            <h5 class="card-title">Withdrawal</h5>
                            <p class="card-text fs-2">150</p>
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
            <h4 style="margin-top: 30px;">Create New Account</h4>
            <div class="mt-5  " style="margin-left: 40%;">
                <button type="button" class="btn btn-primary active me-5" data-bs-toggle="modal"
                    data-bs-target="#addaccmodal">
                    New Customer</button>
                <button type="button" class="btn btn-primary active" data-bs-toggle="modal"
                    data-bs-target="#addaccmodal2">
                    Existing Customer</button>






                <div class="modal  fade " id="addaccmodal" data-bs-backdrop="static" tabindex="-1"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Create New Account</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-fname" class="col-form-label">First Name</label>
                                                <input type="text" class="form-control inpwidth" name="fname"
                                                    id="recipient-fname" required>
                                            </div>
                                            <div class="col-md-4 ms-auto">
                                                <label for="recipient-name" class="col-form-label">Last Name</label>
                                                <input type="text" class="form-control inpwidth" name="lname"
                                                    id="recipient-name" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-lname" class="col-form-label">ID No.</label>
                                                <input type="text" class="form-control inpwidth" name="id"
                                                    id="recipient-lname" required>
                                            </div>
                                            <div class="col-md-4 ms-auto">
                                                <label for="recipient-gender" class="col-form-label">Gender</label>
                                                <select class="form-select inpwidth" id="recipient-gender" name="gender"
                                                    required>
                                                    <option hidden>SELECT ONE</option>
                                                    <option value="m">Male</option>
                                                    <option value="f">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-dob" class="col-form-label">DOB</label>
                                                <input type="date" class="form-control inpwidth" name="dob"
                                                    id="recipient-dob" required>
                                            </div>
                                            <div class="col-md-4 ms-auto">
                                                <label for="recipient-email" class="col-form-label">Email</label>
                                                <input type="email" class="form-control inpwidth" name="email"
                                                    id="recipient-email" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-address" class="col-form-label">Address</label>
                                                <textarea class="form-control" id="recipient-address" name="address"
                                                    required rows="3">Abaya Road,.&#13;&#10;Galpalama.&#13;&#10;Anuradhapura
                                                </textarea>
                                            </div>
                                            <div class="col-md-4 ms-auto">
                                                <label for="recipient-actype" class="col-form-label">Account
                                                    Type</label>
                                                <select class="form-select inpwidth" id="recipient-actype" name="actype"
                                                    required>
                                                    <option hidden>SELECT ONE</option>
                                                    <option value="S">Savings</option>
                                                    <option value="C">Current</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-indepo" class="col-form-label">Initial
                                                    Deposit (Rs.)</label>
                                                <input type="number" min="100" class="form-control inpwidth"
                                                    id="recipient-indepo" name="initialdeposit" required>
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


                <div class="modal  fade " id="addaccmodal2" data-bs-backdrop="static" tabindex="-1"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Create New Account</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-6 input-group">
                                                <label for="recipient-fname" class="col-form-label">NIC Number</label>
                                                <input type="text" class="form-control inpwidth ms-3"
                                                    aria-describedby="receipient-id" name="fname" id="recipient-fname"
                                                    required>
                                                <button class="btn btn-outline-secondary" type="button"
                                                    id="receipient-id">Search 🔍</button>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-fname" class="col-form-label">First Name</label>
                                                <input type="text" class="form-control inpwidth" name="fname"
                                                    id="recipient-fname" required>
                                            </div>
                                            <div class="col-md-4 ms-auto">
                                                <label for="recipient-name" class="col-form-label">Last Name</label>
                                                <input type="text" class="form-control inpwidth" name="lname"
                                                    id="recipient-name" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 ms-auto input-group mt-3">
                                                <label for="recipient-actype" class="col-form-label me-3">Account
                                                    Type</label>
                                                <select class="form-select inpwidth" id="recipient-actype" name="actype"
                                                    required>
                                                    <option hidden>SELECT ONE</option>
                                                    <option value="S">Savings</option>
                                                    <option value="C">Current</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label for="recipient-indepo" class="col-form-label">Initial
                                                    Deposit (Rs.)</label>
                                                <input type="number" min="100" class="form-control inpwidth"
                                                    id="recipient-indepo" name="initialdeposit" required>
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

            </div>
            <h2 class="mx-auto mt-5">Last Transactions</h2>
            <div class="mx-auto me-5">
                <table class="table table-success table-striped me-md-auto">
                    <tr class="table-primary">
                        <th>Tnx. Id</th>
                        <th>Tnx. Date</th>
                        <th>Acc. no</th>
                        <th>Amount(Cr./<span class="text-danger">Dr.</span>)</th>
                        <th>cashier ID</th>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>2021/12/16</td>
                        <td>01583694</td>
                        <td class="text-danger">Rs. 250.00</td>
                        <td>01583694</td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>2021/12/16</td>
                        <td>01583694</td>
                        <td>Rs. 250.00</td>
                        <td>01583694</td>
                    </tr>
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

</html>