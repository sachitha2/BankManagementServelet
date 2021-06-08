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
                                <span class="ms-1 d-none d-sm-inline " style="color: white;">Transaction
                                    window
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="userview.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"><img src="../assets/profile.png" width="50px"
                                        alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Customers</span> </a>

                        </li>
                        <li>
                            <a href="userview.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"><img src="../assets/profile.png" width="50px"
                                        alt=""></i>
                                <span class="ms-1 d-none d-sm-inline aaactive" style="color: white;">Cashiers</span>
                            </a>

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
                    <div class="row">
                        <div class="col-md-4">
                            <label>User Id</label>
                        </div>
                        <div class="col-md-4">
                            <p>0012</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>Name</label>
                        </div>
                        <div class="col-md-4">
                            <p>Kasun Bandara</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>Email</label>
                        </div>
                        <div class="col-md-4">
                            <p>Bandara@gmail.com</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>Phone</label>
                        </div>
                        <div class="col-md-4">
                            <p>0766344989</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label>Role</label>
                        </div>
                        <div class="col-md-4">
                            <p>Cashier</p>
                        </div>
                    </div>

                    <button type="button" class="btn btn-danger float-end" onclick="showpassword()">
                        Delete Account
                    </button>

                    <div class="ms-6 mb-5 mt-5" id="chgpwd" style="margin-left: 20%;display: none;">
                        <form>
                            <div class="form-group mb-3">
                                <label for="password1">Admin Password</label>
                                <input type="password" class="form-control" id="password1" placeholder="Password"
                                    pattern="/^.{6,}$/">
                            </div>
                            <div class="form-group mb-3">
                                <label for="password1">Confirm Admin Password</label>
                                <input type="password" class="form-control" id="password2"
                                    placeholder="Confirm Password" pattern="/^.{6,}$/">
                            </div>
                            <div class=" border-top-0 d-flex justify-content-center">
                                <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
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