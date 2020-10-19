<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Leave Type</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Add Leave Type</h2>
       <div class="mini-container" style="height: 450px;">
        <form action="" method="post">
            <label for="ltype" class="label">Leave Type</label>
            <input type="text" name="" id="ltype" required><br>
            <label for="num" class="label">Max Leaves </label>
            <input type="number" name="" id="num" required><br>
            <br><br>
            <input class="accept-btn" type="submit" name="" id="" style="margin-right:150px ;"> 
        </form>
        <br> <br>
        <a href="adminindex.jsp" ><button class="accept-btn" style="width:200px;height:30px;">Cancel</button></a>
       </div>
    </div>
</body>
</html>