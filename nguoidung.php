<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Trang cá nhân</title>
	 <link rel="shortcut icon" href="img/logo1.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
     <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
  <body><?php
  include_once 'header.php';
  if (isset($_SESSION['Tk']) == false) {
    // Nếu người dùng chưa đăng nhập thì chuyển hướng website sang trang đăng nhập
    header('Location:login.php');
  }
  require_once("xuly.php");
?>  
    <body>
        
    <?php
    
    $nguoidung =$_SESSION['Tk'];
    $sql = "SELECT * FROM nguoidung WHERE Tk = '$nguoidung' ";
    $rows=mysqli_query($conn,$sql);
    $row=mysqli_fetch_array($rows);

    if(isset($_POST['capnhat'])){
        // $Mk =$_POST['Mk'];
        $Email =$_POST['Email'];
        $Hoten =$_POST['Hoten'];
        $Diachi =$_POST['Diachi'];
        $Sdt =$_POST['Sdt'];
        $iduser=$row['Tk'];

    $target_dir = "user/";
    $target_file = $target_dir . basename($_FILES["imageUp"]["name"]);
    $Avt = basename( $_FILES["imageUp"]["name"]);
    move_uploaded_file($_FILES["imageUp"]["tmp_name"], $target_file);

    $sql_update=("
                UPDATE nguoidung SET 
                
                Email='$Email',
                Diachi='$Diachi',
                Sdt='$Sdt',
                Avt='$Avt',
                Hoten='$Hoten'
                WHERE Tk='$iduser'
                ");
    
                if ($conn->query($sql_update) === TRUE) {
                    echo "<div class=khung style='color:green'><h3>Cập nhật thông tin thành công</h3></div>";
                  } else {
                    echo "Error: " . $sql_update . "<br>" . $conn->error;
                  }
                  
		}
             $rows=mysqli_query($conn,$sql);
             $row=mysqli_fetch_array($rows);
    ?><div class=khung2 style=margin-bottom:20px;padding-top:20px>
    <form action="nguoidung.php" method="post" name="capnhat" onsubmit="" enctype="multipart/form-data">
    <span style=font-size:30px><b>THÔNG TIN NGƯỜI DÙNG</b></span><br>
    <?php
    if (empty($row['Avt'])) { 
    echo '<img src=img/vodanh.png class=rounded width=200px height=200px style=margin-top:20px;margin-bottom:20px><br>'; 
}else{
    echo "<img src=user/".$row['Avt']." class=rounded width=200px height=200px style=margin-top:20px;margin-bottom:20px><br>";}
?>
  
  <span style=font-size:25px;color:red><b><?php echo $row['Tk']?></span></b><br><br>
  
  <div class=menua style="text-align:left;color:black;background-color:white;padding-left:50px;padding-right:50px">Họ và tên: <?php echo $row['Hoten']?></div>
  <div class=menua style="text-align:left;color:black;background-color:white;padding-left:50px;padding-right:50px">Email: <?php echo $row['Email']?></div>
  <div class=menua style="text-align:left;color:black;background-color:white;padding-left:50px;padding-right:50px">Số điện thoại: <?php echo $row['Sdt']?></div>
  <div class=menua style="text-align:left;color:black;background-color:white;padding-left:50px;padding-right:50px">Địa chỉ: <?php echo $row['Diachi']?></div>
  <div class=menua style="text-align:middle;color:black;background-color:white;padding-left:50px;padding-right:50px">.......</div>

<br>
<span style=font-size:25px><b>Cập nhật thông tin</b></span><br><br>
<div class=menua style="color:black;background-color:white;padding-left:50px;padding-right:50px"> Tải lên Avatar mới:  
<br><input type="file" name="imageUp" id="imageUp"></div>
<div class=menua style="color:black;background-color:white;padding-left:50px;padding-right:50px"> Thay đổi Họ tên: 
<br><input type="text" name="Hoten" size="50" value="<?php echo $row['Hoten'];?>"/></div>
<div class=menua style="color:black;background-color:white;padding-left:50px;padding-right:50px"> Thay đổi Email: 
<br><input type="text" name="Email" size="50" value="<?php echo $row['Email'];?>"/></div>
<div class=menua style="color:black;background-color:white;padding-left:50px;padding-right:50px"> Thay đổi Sđt: 
<br><input type="text" name="Sdt" size="50" value="<?php echo $row['Sdt'];?>"/></div>
<div class=menua style="color:black;background-color:white;padding-left:50px;padding-right:50px"> Thay đổi Địa chỉ: 
<br><input type="text" name="Diachi" size="50" value="<?php echo $row['Diachi'];?>"/></div>
<input type="submit" name="capnhat" value="Cập nhật" />
            <input type="reset" name="" value="Hủy" />
            <br><br>
</div>
    <?php
  include_once 'footer.php';
?>  
</body></html>