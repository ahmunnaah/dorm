<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <!--<link rel="stylesheet" href="../../css/std_nav.css">-->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style media="screen">
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
    *{
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    .wrapper{

      height: 100%;
      width: 300px;
      position: relative;
    }
    .wrapper .menu-btn{
      position: absolute;
      left: 40px;
      top: 20px;
      background: #4a4a4a;
      color: #fff;
      height: 45px;
      width: 45px;
      z-index: 9999;
      border: 1px solid #333;
      border-radius: 5px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      transition: all 0.3s ease;
    }
    #btn:checked ~ .menu-btn{
      left: 270px;
    }
    .wrapper .menu-btn i{

      position: absolute;
      transform: ;

      font-size: 23px;
      transition: all 0.3s ease;
    }
    .wrapper .menu-btn i.fa-times{
      opacity: 0;
    }
    #btn:checked ~ .menu-btn i.fa-times{
      opacity: 1;
      transform: rotate(-180deg);
    }
    #btn:checked ~ .menu-btn i.fa-bars{
      opacity: 0;
      transform: rotate(180deg);
    }
    #sidebar{
      position: fixed;
      background: #404040;
      height: 100%;
      width: 300px;
      overflow: hidden;
      left: -300px;
      transition: all 0.3s ease;
    }
    #btn:checked ~ #sidebar{
      left: 0;
    }
    #sidebar .title{
      line-height: 65px;
      text-align: center;
      background: #333;
      font-size: 25px;
      font-weight: 600;
      color: #f2f2f2;
      border-bottom: 1px solid #222;
    }
    #sidebar .list-items{
      position: relative;
      background: #404040;
      width: 100%;
      height: 100%;
      list-style: none;
    }
    #sidebar .list-items li{
      padding-left: 40px;
      line-height: 50px;
      border-top: 1px solid rgba(255,255,255,0.1);
      border-bottom: 1px solid #333;
      transition: all 0.3s ease;
    }
    #sidebar .list-items li:hover{
      border-top: 1px solid transparent;
      border-bottom: 1px solid transparent;
      box-shadow: 0 0px 10px 3px #222;
    }
    #sidebar .list-items li:first-child{
      border-top: none;
    }
    #sidebar .list-items li a{
      color: #f2f2f2;
      text-decoration: none;
      font-size: 18px;
      font-weight: 500;
      height: 100%;
      width: 100%;
      display: block;
    }
    #sidebar .list-items li a i{
      margin-right: 20px;
    }
    #sidebar .list-items .icons{
      width: 100%;
      height: 40px;
      text-align: center;
      position: absolute;
      bottom: 100px;
      line-height: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    #sidebar .list-items .icons a{
      height: 100%;
      width: 40px;
      display: block;
      margin: 0 5px;
      font-size: 18px;
      color: #f2f2f2;
      background: #4a4a4a;
      border-radius: 5px;
      border: 1px solid #383838;
      transition: all 0.3s ease;
    }
    #sidebar .list-items .icons a:hover{
      background: #404040;
    }
    .list-items .icons a:first-child{
      margin-left: 0px;
    }
    .content{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%,-50%);
      color: #202020;
      z-index: -1;
      width: 100%;
      text-align: center;
    }
    .content .header{
      font-size: 45px;
      font-weight: 700;
    }
    .content p{
      font-size: 40px;
      font-weight: 700;
    }
    .button {
      background-color: #4CAF50; /* Green */
      border: none;
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 10px;
      margin-bottom: 30px;
      cursor: pointer;
      -webkit-transition-duration: 0.4s; /* Safari */
      transition-duration: 0.4s;
      border-radius: 30px;
    }
    .button2:hover {
      box-shadow: 0 12px 16px 0 #266e2f,0 17px 50px 0 #266e2f;
    }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <input type="checkbox" id="btn" hidden>
      <label for="btn" class="menu-btn">
        <i class="fas fa-bars"></i>
        <i class="fas fa-times"></i>
      </label>
      <nav id="sidebar">
        <div class="title">  <a href="logout.php"><button class="button button2">Log Out</button></a></div>
          <ul class="list-items">
          <li><a href="welcome.php"><i class="fas fa-home"></i>Home</a></li>

          <li><a href="student.php"><i class="fas fa-address-book"></i>Student Information</a></li>
          <li><a href="ad_msg.php"><i class="fas fa-address-book"></i>Send Message</a></li>
        
          <li><a href="view_comp.php"><i class="fas fa-phone-square-alt"></i>Complaints</a></li>
          <li><a href="building_info.php"><i class="fas fa-unlock-alt"></i>Building Information</a></li>
          <li><a href="applicant.php"><i class="fas fa-unlock-alt"></i>Applicant</a></li>
          </ul>
      </nav>
    </div>

  </body>
</html>
