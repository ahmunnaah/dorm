<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Member Login</title>
    <link rel="stylesheet" href="login.css" type="text/css">
  </head>
  <body>
    <form action="member_login_handler.php" method="post">
      <div class="imgcontainer">
        <img src="avatar.jpg" alt="Avatar" class="avatar">
      </div>

      <div class="container">
        <label><b>BUP ID No</b></label>
        <input type="text" placeholder="Enter ID" name="id" required autocomplete="off">

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="pass" required autocomplete="off">



      </div>

      <div class="container" align="right">
      <center><button type="submit">Login</button></center>
      </div>
    </form>
  </body>
</html>
