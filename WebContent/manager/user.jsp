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
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark "
                style="position: fixed;top: 0;left: 0;z-index: 1;">
                <div
                    class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100 ">
                    <a href="#"
                        class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline"><img src="../assets/logo.png" width="60px" alt=""> Com
                            Bank
                        </span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                        id="menu">
                        <li class="nav-item">
                            <a href="dashboard.jsp" class="nav-link align-middle px-0 ">
                                <i class="fs-4 bi-house"><img src="../assets/dashboard.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline " style="color: white;">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="transactionWindow.jsp" class="nav-link align-middle px-0 ">
                                <i class="fs-4 bi-house"><img src="../assets/trans.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Transaction
                                    window
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="userview.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"><img src="../assets/profile.png" width="50px"
                                        alt=""></i>
                                <span class="ms-1 d-none d-sm-inline aaactive" style="color: white;">Customers</span>
                            </a>

                        </li>
                        <li>
                            <a href="cashiers.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"><img src="../assets/profile.png" width="50px"
                                        alt=""></i>
                                <span class="ms-1 d-none d-sm-inline " style="color: white;">Cashier</span> </a>

                        </li>

                    </ul>
                    <hr>
                    <div class="dropdown pb-4">
                        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
                            id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="../assets/avatar.png" alt="hugenerd" width="30" height="30"
                                class="rounded-circle">
                            <span class="d-none d-sm-inline mx-1">Logged Name</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                            <li><a class="dropdown-item" href="profile.jsp">Profile</a></li>
                            <li><a class="dropdown-item" href="#">Sign out</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
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
                    <div class="col-sm-4"><span class="h4">First Name: <span class="textnorm">Dumidu Kasun</span></span>
                    </div>
                    <div class="col-sm-4"><span class="h4">Last Name: <span class="textnorm">Bandara</span></span></div>
                    <div class="col-sm-4"><span class="h4">ID No. <span class="textnorm">982587152V</span></span></div>
                </div>
                <div class="row mt-2">
                    <div class="col-sm"><span class="h5">DOB: <span class="textnorm">1995-10-15</span></span></div>
                    <div class="col-sm"><span class="h5">Gender: <span class="textnorm">Male</span></span></div>
                    <div class="col-sm"><span class="h5">Acc. Type: <span class="textnorm">Savings</span></span></div>
                    <div class="col-sm"><span class="h5">Email: <span class="textnorm">-</span></span></div>
                </div>
                <div class="row mt-3">
                    <div class="col-sm"><span class="h5">Address:
                            <textarea class="form-control" rows="3">Abaya Road,.&#13;&#10;Galpalama.&#13;&#10;Anuradhapura
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