<?php
  include_once 'data.php';
  $dt = new database;
?>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Tìm kiếm</title>
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
  include 'header.php';
  $title = $_POST["title"];
?> 
<div class="cangiua" style="margin-bottom:40px;padding-top:15px">
<span style="font-size:40px;">KẾT QUẢ TÌM KIẾM</span><br>
<?php
if (empty($title)){
  echo "";
}else{
  echo "<span style=font-size:20px><i>
Từ khóa '$title'</i></span>";
}
?></div>
<div class=bxh style="text-align: left;margin-bottom:40px;padding-top:30px;padding-bottom:30px">
<?php
include 'xuly.php';
if(isset($_POST["search"]))
{

$sql = "SELECT * FROM sach WHERE Tensach LIKE '%$title%'";
}
$result = mysqli_query($conn, $sql);

if (empty($title)){
  echo "<div class=cangiua style=padding:30px 30px 30px 30px><span style=font-size:30px;color:red>Vui lòng nhập tên sách cần tìm</span></div>";
} else {
  
if (mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result)) {
?>
<div class="menua" > <div class="chiacot"><div class=cot1>
    <a href='chitiet.php?id=<?php echo $row['Masach']?>'>
    <img style="width:130px;height:200px;margin-right:50px;" src="anh/<?php echo $row['Img1']?>"/></div> <div class=cot2><span style="font-size:25px;color:#663366"><br><b><font color=#008080><?php echo $row['Tensach']?></font> <br> Giá: <font color=red><?php echo $row['Dongia']?> VNĐ</font></span></a></b></div>
		</div>
</div>
<?php
}
} else {
echo "<div class=cangiua style=padding:30px 30px 30px 30px><span style=font-size:30px;color:red>Không có kết quả cần tìm</span></div>";
}
}
?>
</div>
<?php
  include_once 'footer.php';
?>  
</body></html>