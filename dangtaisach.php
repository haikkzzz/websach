<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Đăng bán sách</title>
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
date_default_timezone_set('Asia/Ho_Chi_Minh');
$time=date("H").":".date("i")."-".date("d")."/".date("m")."/".date("Y");
include_once 'header2.php'; 
include_once 'phanquyen.php';

  require_once("xuly.php");
  ?>
  <?php
  if(isset($_POST['submit'])){
    $Tensach =$_POST['tensach'];
    $Mota =$_POST['mota'];
    $Tacgia =$_POST['tacgia'];
    $Nxb =$_POST['nxb'];
    $Matl =$_POST['matl'];
    $Dongia =$_POST['dongia'];
    $Soluong =$_POST['soluong'];


    $target_dir = "anh/";
    $target_file = $target_dir . basename($_FILES["imageUpload"]["name"]);
    move_uploaded_file($_FILES["imageUpload"]["tmp_name"], $target_file);
    $Img1 = basename( $_FILES["imageUpload"]["name"]); // used to store the filename in a variable


         $sql = "INSERT INTO sach(
            Tensach,
            Mota,
            Tacgia,
            Nxb,
            Matl,
            Dongia,
            Soluong,
            Img1
            
         ) VALUES 
         ('$Tensach','$Mota','$Tacgia','$Nxb','$Matl','$Dongia','$Soluong','$Img1')";
         $query=mysqli_query($conn,$sql);
         if($query) {
          echo "<div class=khung style='color:green'><h3>Đăng bán sách thành công</h3></div>";
          }
        }


?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Đăng bán sách</title>
    </head>
    <body>
    <div class="khung3" style="color:black;padding-top:20px;padding-bottom:40px">
    <div style=text-align:left><div class=bo style=margin-left:20px;padding:10px 10px 10px 10px;><a href=quanlysach.php style=color:white><< Trở về</a></div></div>
        <h2 class=bo style=margin-bottom:10px><b>Đăng bán sách mới</b></h2>
        <form action="dangtaisach.php" method="post" enctype="multipart/form-data">
  
  <table class=giua>
          
              <tr class=hienthi><td>Tên sách</td>
              <td><input type="text" name="tensach" size="40" /></td></tr>
              <tr class=hienthi><td>Nxb</td>
            <td><input type="text" name="nxb"></td></tr>
            <tr class=hienthi><td>Bìa sách</td>
            <td><input type="file" name="imageUpload" id="imageUpload"></td></tr>
            
  
              <tr class=hienthi><td>Tác giả</td><td><input type="text" name="tacgia" > </textarea></td></tr>
              <tr class=hienthi><td>Thể Loại</td><td><input type="text" name="matl"></td></tr>
              <tr class=hienthi><td>Mô tả</td><td><textarea name="mota" id="mota"> </textarea></td></tr>
              <tr class=hienthi><td>Đơn giá</td><td><input type="number" name="dongia"></td></tr>
              <tr class=hienthi><td>Số lượng</td><td><input type="number" name="soluong"></td></tr>
            
            

            <tr class=tieude>
                <td colspan=2> <input type="submit" name="submit" value="Lưu" />
                <input type="reset" name="" value="Hủy" /></td>
            </tr>
        </table> 
</form>
    </div>
    <br>
    <script>
    // Thay thế <textarea id="post_content"> với CKEditor
    CKEDITOR.replace( 'mota' );// tham số là biến name của textarea
</script>
<?php
  include_once 'footer.php';
?>  
</body>
</html>

  