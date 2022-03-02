<?php
  include_once 'data.php';
  $dt = new database;
?>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Tìm kiếm</title>
	 <link rel="shortcut icon" href="img/logo.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
     <link rel="stylesheet" href="css/coban.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
  <body>
<?php
  include 'header3.php';
?> 
<div class=bo style=padding:10px 10px 10px 10px><a href=theloai.php style=color:white><< Trở về</a></div>
<div class=bxh style="text-align: left;">
<div class="cangiua" style="margin-bottom:40px;padding-top:40px">
<span style="font-size:40px;color:white">
<?php $theloai = $_GET["theloai"];
if($theloai=="nhi"){
echo'Sách thiếu nhi';}
if($theloai=="song"){
echo'Kiến thức đời sống';}
if($theloai=="thuyet"){
echo'Tiểu thuyết';}
?>
</span></div>
<?php
include 'xuly.php';

$theloai = $_GET["theloai"];
$sql = "SELECT * FROM sach WHERE Matl LIKE '%$theloai%'";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result)) {
echo "
<div class=danhmuc ><a href='chitiet.php?id=".$row["Masach"]."'>
<img style=margin-right:50px height=200 width=130 src='anh/".$row["Img1"]."'> <span style=font-size:25px;color:white><b>".$row["Tensach"]."</b></span></div>";
}
} else {
echo "0 Có sách nào thuộc thể loại";
}
?>
</div>
<?php
  include_once 'footer.php';
?>  
</body></html>