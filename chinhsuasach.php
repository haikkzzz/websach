<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Sửa thông tin sách</title>
	 <link rel="shortcut icon" href="img/logo1.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
   <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5fc51eadf193bb00129e2bfd&product=inline-share-buttons" async="async"></script>
	 </head>
  <body>
  <?php
include_once 'header2.php'; 
include_once 'phanquyen.php';
?>
<?php
  require_once("xuly.php");
  if(isset($_POST['sua'])){
    $Tensach=$_POST['tensach'];
    $Mota=$_POST['mota'];
    $Tacgia=$_POST['tacgia'];
    $Nxb=$_POST['nxb'];
    $Matl=$_POST['matl'];
    $Dongia=$_POST['dongia'];
    $Soluong=$_POST['soluong'];


    $target_dir = "anh/";
    $target_file = $target_dir . basename($_FILES["imageUpload"]["name"]);
    move_uploaded_file($_FILES["imageUpload"]["tmp_name"], $target_file);
    $Img1 = basename( $_FILES["imageUpload"]["name"]);

    $id = $_GET['id'];
  
    $sql_update=("
                UPDATE sach SET 
                Tensach='$Tensach',
                Mota='$Mota',
                Tacgia='$Tacgia',
                Nxb='$Nxb',
                Matl='$Matl',
                Dongia='$Dongia',
                Soluong='$Soluong',
                Img1='$Img1'
                WHERE Masach='$id'
                ");

                if ($conn->query($sql_update) === TRUE) {
                    echo "<div class=khung style='color:green'><h3>Sửa thành công</h3></div>";
                  } else {
                    echo "Error: " . $sql_update . "<br>" . $conn->error;
                  }
                  
    
		}
	
?>
<?php
$id = $_GET['id'];
$sql = "SELECT * FROM sach WHERE Masach = '$id' ";
         $rows=mysqli_query($conn,$sql);
         $row=mysqli_fetch_array($rows);
?>
<form action="chinhsuasach.php?id=<?php echo $id;?>" method="post" name="frm" onsubmit="" enctype="multipart/form-data">
<div class="khung2" style="color:black;padding-top:20px;padding-bottom:40px">
    <div style=text-align:left><div class=bo style=margin-left:20px;padding:10px 10px 10px 10px;><a href=quanlysach.php style=color:white><< Trở về</a></div></div>
        <h2 class=bo style=margin-bottom:10px><b>Sửa thông tin sách</b></h2>
        <form action="chinhsuasach.php?id=<?php echo $id?>" method="post" enctype="multipart/form-data">
  
  <table class=giua>
          
              <tr class=hienthi><td>Tên sách</td>
              <td><input type="text" name="tensach" size="50" value="<?php echo $row["Tensach"];?>"></td></tr>
              <tr class=hienthi><td>Nxb</td>
            <td><input type="text" name="nxb" value="<?php echo $row["Nxb"];?>"></td></tr>
            <tr class=hienthi><td>Hình bìa sách</td><td><img src="anh/<?php echo $row['Img1']?>" width="100" height="150"/></td>
  </tr> 

            <tr class=hienthi><td>Thay hình mới</td>
            <td>
            <input type="file" name="imageUpload" id="imageUpload"></td></tr>
              <tr class=hienthi><td>Tác giả</td><td><input type="text" name="tacgia" value="<?php echo $row["Tacgia"];?>"></td></tr>
              <tr class=hienthi><td>Thể Loại</td><td><input type="text" name="matl" value="<?php echo $row["Matl"];?>"></td></tr>
              <tr class=hienthi><td>Mô tả</td><td><textarea name="mota" id="mota" value=<?php echo $row["Mota"];?>></textarea></td></tr>
              <tr class=hienthi><td>Đơn giá</td><td><input type="number" name="dongia" value=<?php echo $row["Dongia"];?>></td></tr>
              <tr class=hienthi><td>Số lượng</td><td><input type="number" name="soluong" value=<?php echo $row["Soluong"];?>></td></tr>

          
        <tr class=tieude>
            <td colspan=2> <input type="submit" name="sua" value="Lưu" />
            <input type="reset" name="" value="Hủy" /></td>
        </tr>
    </table> 
</form>
</div>
<br>
<?php
include_once 'footer.php';
?>  

</body>
<script>
    // Thay thế <textarea id="post_content"> với CKEditor
    CKEDITOR.replace( 'mota' );// tham số là biến name của textarea
</script>
</html>