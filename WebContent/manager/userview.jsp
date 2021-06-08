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
                        <th>ID No.</th>
                        <th>Acc. No</th>
                        <th>Name</th>
                        <th>Balance</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td>972580125v</td>
                        <td>1598412</td>
                        <td>K.M.L. Gamage</td>
                        <td>Rs. 15,000.00</td>
                        <td><a href="user.jsp?accno=1598412">View More</a></td>
                    </tr>
                    <tr>
                        <td>972580125v</td>
                        <td>1598412</td>
                        <td>K.M.L. Gamage</td>
                        <td>Rs. 15,000.00</td>
                        <td><a href="user.jsp?accno=1598412">View More</a></td>
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

</html>