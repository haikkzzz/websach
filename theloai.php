
<?php
  include_once 'data.php';
  $dt = new database;
?>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Thể Loại</title>
	 <link rel="shortcut icon" href="img/logo.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
     <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
  <body>
<?php
  include 'header3.php';
?> 
<div class="cangiua" style="margin-bottom:40px;padding-top:15px">
<span style="font-size:40px;">Thể Loại</span></div>
<div class=khung4 style="padding-top:30px;padding-bottom:30px">
<div class=row><div class=col-4> <a href='showtheloai.php?theloai=nhi'><span style="color:white;font-size:25px"><b>Sách thiếu nhi</b></span><br>
    <img src="img/thieunhi.jpg" height="150" width="150"/></a>

</div>

<div class=col-4> <a href='showtheloai.php?theloai=song'><span style="color:white;font-size:25px"><b>Kiến thức đời sống</b></span><br>
    <img src="img/doisong.jpg" height="150" width="150"/></a>

</div>

<div class=col-4> <a href='showtheloai.php?theloai=thuyet'><span style="color:white;font-size:25px"><b>Tiểu thuyết nước ngoài</b></span><br>
<img src="img/tieuthuyet.jpg" height="150" width="150"/></a>

</div>
</div><br>
<span style="font-size=20px">
Hiện đang cập nhật thêm...</span>
</div>
<?php
  include_once 'footer.php';
?>  
</body></html>