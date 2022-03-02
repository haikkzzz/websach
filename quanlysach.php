
<?php
	include ('xuly.php');
    $select = "select * from sach ";
    $query = mysqli_query($conn,$select);
    $dem = mysqli_num_rows($query);
?>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Quản lý sách</title>
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
	<h2 class=bo><b>Quản lý sách</b></h2><br>
	<p><b>Có tổng <font color=red><?php echo $dem ?></font> sách</b></p>
	<form action="quanlysach.php" method="post">
		<div id="check">
			<p>
				<input type="submit" name="xoa" value="Xóa" />
				<br>
				<br> 
				<span class=bo ><a href=dangtaisach.php style="color:black"><b>Đăng bán sách mới</b></a></span>

			</p> 
			
</div>

<table class=giua>
    
    <tr class=tieude>
		<td>Chọn</td>
        <td>Mã sách</td>
        <td>Tên Sách</td>
        <td>Hình bìa</td>
        <td>Tác giả</td>
		<td>Thể loại</td>
		<td>Nhà xuất bản</td>
		<td>Đơn giá</td>
		<td>Chỉnh sửa</td>
    </tr>

    <?php

	$sql = mysqli_query($conn,"SELECT * FROM sach order by Masach DESC"); 

	if($dem > 0)
	
        while ($bien = mysqli_fetch_array($sql))
        {
?>
            <tr class=hienthi>
				<td><input type="checkbox" name="id[]" class="item" class="checkbox" value="<?=$bien['Masach']?>"/></td>
                <td><?php  echo $bien['Masach'] ?></td>
                <td><?php echo $bien['Tensach'] ?></td>
				<td><img src="anh/<?php echo $bien['Img1']?>" width="50" height="50"/> </td>
				<td><?php echo $bien['Tacgia'] ?></td>
				<td><?php echo $bien['Matl'] ?></td>
				<td><?php echo $bien['Nxb'] ?></td>
				<td><?php echo $bien['Dongia'] ?>
                <td>

                    <a href='chinhsuasach.php?id=<?php echo $bien['Masach']?>'><img src="img/fix.png" title="Sửa" width="40" height="40"></a>
				 </td>
			</tr>

<!-- XÓA 	 -->
<?php
 if (isset($_POST['xoa'])) {
	   foreach($_POST['id'] as $value) {
	$sql="delete from sach where Masach='$value'";
	mysqli_query($conn,$sql);
	unset($_SESSION['id']);
	echo "
	<script language='javascript'>
		alert('Xóa sách đã chọn thành công');
		window.open('quanlysach.php','_self', 1);
	</script>
";} }
?>

<?php 
    }
	
    else echo "<tr><td>Không có nội dung</td></tr>";
	
?>

</table>
</div>
</form>
<br>
<?php
  include_once 'footer.php';
?>  
</body></html>

		

