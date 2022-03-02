<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Trang quản lý</title>
	 <link rel="shortcut icon" href="img/logo1.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
	 <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
	 <body>
<?php
  include_once 'header2.php';
  include_once 'phanquyen.php';
?>  
<div class="khung" style="color:black;padding-top:20px;padding-bottom:40px">
	<h2 class=bo><b>Danh mục quản lý</b></h2><br>
    <div class=menua><a href=quanlysach.php style=color:black;>Quản lý sách</a></div>
    <div class=menua><a href=quanlydonhang.php style=color:black;>Quản lý đơn hàng</a></div>
    </div>
<?php
  include_once 'footer.php';
?>  
</body></html>
