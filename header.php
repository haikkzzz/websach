
  <div class="container">
  <div class="bg">
  <div class="row">
  <div class="col-2">
		<a href="index.php" target=""><img src="img/logo1.png" style="width:100%;margin-top:20px;margin-bottom:20px;"/></a>
</div>
<div class="col-8" style="margin-top:35px;">

<form  class="example" action="timkiem.php" method="post" style="padding-top:5px;">
	<input type="text" name="title">
	<button type="submit" name="search"><i class="fa fa-search"></i></button>
</form>
</div>

<div class="col-2" style="margin-top:20px;">
<font color=red><b>
<?php
session_start();
   if(isset($_SESSION['Tk'])){
      echo "<a href=nguoidung.php style=color:red>".$_SESSION['Tk']."</a><br> <a href=giohang.php style=color:green><img style=width:40px;height:40px; src=img/giohang.png> Giỏ hàng</a>";
      echo "<a href='logout.php'><br> Đăng xuất </a><br>";
   } else{
      echo"<a href='login.php'>★ Đăng nhập</a><br><a href='dangki.php'>- Đăng ký</a>";
   }
?>
</font></b>
</div>
</div></div>
<div id="menu" style="margin-top:-10px">
  <ul><b>
    <li class="chon"><a href="index.php" style="color: #0b7dda;">Trang chủ</a></li>
    <li><a href="moinhat.php">Mới nhất</a></li>
	<li><a href="theloai.php">Thể loại</a></li>
	<li><a href="quanly.php">Quản lý</a></li></b>
  </ul>
</div>
