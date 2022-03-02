
<?php
	include ('xuly.php');
?>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Quản lý đơn hàng</title>
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
<div class="khung2" style="color:black;padding-top:20px;padding-bottom:40px">
	<h2 class=bo><b>Quản lý đơn hàng</b></h2><br>
<div class="" style="padding-top:20px;padding-bottom:20px;">
<?php

    $so=1;
	$select = "select * from hoadon ";
    $query = mysqli_query($conn,$select);
    $dem = mysqli_num_rows($query);

		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}  

		$max_results = 10;  

		$from = (($page * $max_results) - $max_results);  

		$sql = mysqli_query($conn,"SELECT * FROM hoadon order by Mahoadon DESC LIMIT $from, $max_results"); 
	
		if($dem > 0)
        while ($goira = mysqli_fetch_array($sql))
        {
			$masach=$goira['Masach'];
			$tk=$goira['Tk'];
			$mhd=$goira['Mahoadon'];
    
			$goi = "select * from sach where Masach='$masach' ";
			$chay = mysqli_query($conn,$goi);
			$inra = mysqli_fetch_array($chay);

			$goi2 = "select * from nguoidung where Tk='$tk' ";
			$chay2 = mysqli_query($conn,$goi2);
			$inra2 = mysqli_fetch_array($chay2);


			if(isset($_POST[$mhd])){
			$sql_update=("
                UPDATE hoadon SET 
                Trangthai='$so'
				WHERE Mahoadon='$mhd'
                ");

			if($conn->query($sql_update) === TRUE) {
				echo "
			<script language='javascript'>
			alert('Xác nhận thành công');
			window.open('quanlydonhang.php','_self', 1);
		</script>
		";}
		}
 ?>
	  <div class="danhmuc" style=text-align:left;><div class="chiacot"><div class=cot1>
    <img style="width:160px;height:240px;margin-top:25px;" src="anh/<?php echo $inra['Img1']?>"/></div> 
	<div class=cot2><b>
	<span style="font-size:18px;color:#663366"> Người mua: <font color=blue><?php echo $inra2['Tk']?> - <?php echo $inra2['Hoten']?></font><br>
	<font color=#008080>Tên sách: <?php echo $inra['Tensach']?></font> <br> Giá: <font color=red><?php echo $inra['Dongia']?> VNĐ</font>
	<br> Số lượng: <font color=green><?php echo $goira['Soluongmua']?> cuốn</font>
	<br> Thành tiền: <font color=green><?php echo $goira['Thanhtien']?> VNĐ</font><br>
<font color=black>Số điện thoại: <?php echo $inra2['Sdt']?></font><br>
	<font color=black>Địa chỉ: <?php echo $inra2['Diachi']?></font><br>
	<font color=lime>Ngày đặt hàng: <?php echo $goira['Ngaymua']?></font> <br>
	<font color=orange>Trạng thái: <?php if ($goira['Trangthai']==0) {
		echo '<font color=red>Đợi xác nhận - đang giao</font>
	<form action="" method="post">
	<input type="submit" name="<?php echo $mhd?>" value="Xác nhận đã thanh toán"/>';}else{echo '<font color=green>Đã thanh toán</font>';} ?></font><br></span>
</b></div>
		</div>
</div>
                              

            <?php 
                }
                
                else echo "<div class=khung style='color:red'><h3>Chưa có đơn hàng nào<h3></div>";
                
            ?>
           <div class="khung3" style="color:red;font-size:20px"> 
<?php

$result = mysqli_query($conn, 'select count(*) as total from hoadon');
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

			if($page < $total_page){  
			$next = ($page + 1);  
			echo "<a href=\"".$_SERVER['PHP_SELF']."?page=$next\"><button class='trang'>Trang sau</button></a>";  
			}  
			echo "</center>";  		
		
    ?> 
    </div>
<br>
<?php
  include_once 'footer.php';
?>  
</body></html>

		

