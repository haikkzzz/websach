<?php
  include_once 'data.php';
  $dt = new database;
?>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Sách mới - Lorebook</title>
	 <link rel="shortcut icon" href="img/logo1.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
     <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
  <body>
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
    <li><a href="index.php">Trang chủ</a></li>
    <li class=chon><a href="moinhat.php" style="color: #0b7dda;">Mới nhất</a></li>
	<li><a href="theloai.php">Thể loại</a></li>
	<li><a href="quanly.php">Quản lý</a></li></b>
  </ul>
</div> 
<?php
	include ('xuly.php');
    $select = "select * from sach ";
    $query = mysqli_query($conn,$select);
    $dem = mysqli_num_rows($query);
?>
<div class="cangiua" style="margin-bottom:40px;padding-top:20px">
<span style="font-size:40px;">SÁCH MỚI BÀY BÁN</span></div>
<div class="bg" style="padding-top:20px;padding-bottom:20px;margin-bottom:-15px">
<?php
	
	
		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}  

		$max_results = 10;  

		// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
		$from = (($page * $max_results) - $max_results);  

		$sql = mysqli_query($conn,"SELECT * FROM sach order by Masach DESC LIMIT $from, $max_results"); 




								
    if($dem > 0)
        while ($bien = mysqli_fetch_array($sql))
        {
 ?>
      
 <div class="menua" > <div class="chiacot"><div class=cot1>
    <a href='chitiet.php?id=<?php echo $bien['Masach']?>'>
    <img style="width:130px;height:200px;margin-right:50px;" src="anh/<?php echo $bien['Img1']?>"/></div> <div class=cot2><span style="font-size:25px;color:#663366"><br><b><font color=#008080><?php echo $bien['Tensach']?></font> <br> Giá: <font color=red><?php echo $bien['Dongia']?> VNĐ</font></span></a></b></div>
		</div>
</div>
                              

            <?php 
                }
                
                else echo "<tr><td>Không có nội dung</td></tr>";
                
            ?>
            </div>
<div class="khung3" style="color:red;font-size:20px;margin-bottom:5px"> 
<?php
		
$result = mysqli_query($conn, 'select count(*) as total from sach');
$row = mysqli_fetch_assoc($result);
$total_records = $row['total'];
$total_page = ceil($total_records / $max_results );

			if($page > 1){  
			$prev = ($page - 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?page=$prev\"><button class='trang'>Trang trước</button></a>&nbsp;";  
			}  

			for($i = 1; $i <= $total_page; $i++){  
			if(($page) == $i){  
			echo "$i&nbsp;";  
			} else {  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			}  

			// Tạo liên kết đến trang tiếp theo  
			if($page < $total_page){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?page=$next\"><button class='trang'>Trang sau</button></a>";  
			}  
			echo "</center>";  		
		
    ?> 
    </div>
<?php
include_once 'footer.php';
?>  
</body>
</html>