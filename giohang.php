
<?php
	include ('xuly.php');
    $select = "select * from giohang ";
    $query = mysqli_query($conn,$select);
    $dem = mysqli_num_rows($query);

	date_default_timezone_set('Asia/Ho_Chi_Minh');
    $time =date("H").":".date("i")."-".date("d")."/".date("m")."/".date("Y");
?>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Giỏ hàng - Lorebook</title>
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
      echo"<a href='login.php'>★ Đăng nhập</a><br>";
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
<div class="khung3" style="color:black;padding-top:20px;padding-bottom:40px">
	<h2 class=bo><b>Giỏ hàng cá nhân</b></h2><br>
	<form action="" method="post">
		<div id="check">
			<p>
				<span style=color:red;><input type="submit" name="mua" value="Đặt hàng"/></span>
				<input type="submit" name="xoa" value="Xóa" />
				<br>
				<br> 
			
</div>

<table class=giua>
    
    <tr class=tieude>
		<td>Chọn</td>
        <td>Tên Sách</td>
        <td>Hình bìa</td>
		<td>Đơn giá</td>
		<td>Số lượng</td>
    </tr>

    <?php
	$user =$_SESSION['Tk'];
	$sql = mysqli_query($conn,"SELECT * FROM giohang where Tk='$user' order by Magiohang DESC"); 
	if($dem > 0){
	
        while ($bien = mysqli_fetch_array($sql))
        {
            $nd = $bien['Masach'];
			$mgh=$bien['Magiohang'];
            $sqlnd = "SELECT * FROM sach WHERE Masach = '$nd' ";
            $rowsnd=mysqli_query($conn,$sqlnd);
            $xuatnd=mysqli_fetch_array($rowsnd);
			
?>
            <tr class=hienthi>
				<td><input type="checkbox" name="id[]" class="item" class="checkbox" value="<?php echo $nd?>"/></td>
                <td><?php echo $xuatnd['Tensach'] ?></td>
				<td><img src="anh/<?php echo $xuatnd['Img1']?>" width="50" height="50"/> </td>
				<td><?php echo $xuatnd['Dongia'] ?> VNĐ</td>
                <td><input type="number" name="sl" value="1" /></td>
			</tr>

<?php
		}
if (isset($_POST['mua'])) {

	foreach($_POST['id'] as $value) {
	$sl=$_POST['sl'];
	$sqlb = "SELECT * FROM sach WHERE Masach = '$value' ";
	$rowsb=mysqli_query($conn,$sqlb);
	$xuatb=mysqli_fetch_array($rowsb);
	$Dongia=$xuatb['Dongia'];
    $thanhtien=$sl * $Dongia;
    $sqlmua = "INSERT INTO hoadon(
            Masach,
            Tk,
			Ngaymua,
			Soluongmua,
			Thanhtien
         ) VALUES 
         ('$value','$user','$time','$sl','$thanhtien')";

    mysqli_query($conn,$sqlmua);

	$sqldel="delete from giohang where Masach='$value'";
	mysqli_query($conn,$sqldel);}

		 unset($_SESSION['id']);
		 echo "<script language='javascript'>
		 alert('Đã đặt hàng thành công, đảm bảo rẳng bạn cung cấp đúng thông tin liên hệ trước khi chúng thôi giao hàng');
		window.open('giohang.php','_self', 1);
	   </script> ";
		}
if (isset($_POST['xoa'])) {
		foreach($_POST['id'] as $value) {
		 $sqldel="delete from giohang where Masach='$value'";
		 mysqli_query($conn,$sqldel);
		 unset($_SESSION['id']);
		 echo "<script language='javascript'>
		 alert('Xóa đơn hàng thành công');
		window.open('giohang.php','_self', 1);
	   </script> ";
		} } 
?>

<?php 
	}
    else {echo "<tr><td>Giỏ hàng trống</td><td></td><td></td><td></td><td></td></tr>";}
	
?>

</table>
<div class=menua><font size=10>Lịch sử mua hàng</font>
<?php
		$sqlxxx = "SELECT * FROM hoadon WHERE Tk = '$user' order by Mahoadon DESC";
		$rowsxxx=mysqli_query($conn,$sqlxxx);
		while ($xuatxxx = mysqli_fetch_array($rowsxxx))
	{
		    $masach=$xuatxxx['Masach'];
    
			$goi = "select * from sach where Masach='$masach' ";
			$chay = mysqli_query($conn,$goi);
			$inra = mysqli_fetch_array($chay);

?></div>
    <div class="menua" style=text-align:left;><div class="chiacot"><div class=cot1>
    <img style="width:120px;height:185px;margin-top:0px;" src="anh/<?php echo $inra['Img1']?>"/></div> 
	<div class=cot2><b>
	Tên sách: <font color=black><?php echo $inra['Tensach']?></font> <br> Giá: <font color=#C50023><?php echo $inra['Dongia']?> VNĐ</font>
	<br> Số lượng: <font color=orange><?php echo $xuatxxx['Soluongmua']?> cuốn</font>
	<br> Thành tiền: <font color=SkyBlue3><?php echo $xuatxxx['Thanhtien']?> VNĐ</font><br>
	Ngày đặt hàng: <font color=#8B0A50><?php echo $xuatxxx['Ngaymua']?></font> <br>
	Trạng thái: <?php if ($xuatxxx['Trangthai']==0) {
		echo '<font color=red>Đợi xác nhận - đang giao</font>';}else{echo '<font color=green>Đã thanh toán</font>';} ?></font>
</div></div>
	<?php }
	?>


</form>
	</div></div>
<br>
<?php
include_once 'footer.php';
?>  
</body>
</html>