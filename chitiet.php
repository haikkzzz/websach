<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Thư viện trong tầm tay - LoreBook</title>
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
    include_once 'header.php';
    require_once("xuly.php");
    $id = $_GET['id'];
    if(isset($_SESSION['Tk'])){
    $userbuy =$_SESSION['Tk'];}
    ?>
    
    <?php
    
    
    $sql = "SELECT * FROM sach WHERE Masach = '$id' ";
             $rows=mysqli_query($conn,$sql);
             $row=mysqli_fetch_array($rows);
    ?>
    <?php

  if(isset($_POST['themvaogio'])){
    $goigiohang = "SELECT * FROM giohang WHERE Tk = '$userbuy' and Masach='$id' ";
    $kt=mysqli_query($conn, $goigiohang);
    if(mysqli_num_rows($kt)  > 0){
      echo "<div class=khung><h3 style=color:red>Món hàng này đã có trong giỏ hàng của bạn!</h3></div><br>";
    }else{
         $sqln = "INSERT INTO giohang(
            Tk,
            Masach
            
         ) VALUES 
         ('$userbuy','$id')";
         $queryn=mysqli_query($conn,$sqln);
        if($queryn) {
          echo "
          <div class=khung style='color:green'><h3>Thêm vào giỏ hàng thành công, hãy kiểm tra giỏ hàng của bạn</h3></div><br>
          ";}
        }}

?>
<div class=khung4 style="padding-top:70px;padding-left:0px">
<div class=chiacot><div class="cot3"><img style="width:240px;height:340px;margin-left:50px;margin-top:20px" src="anh/<?php echo $row['Img1']?>" class=rounded></div>
<div class=cot3><div class=bo style=background-color:white;padding:60px 60px 60px 60px>
<b><span style=color:blue;font-size:30px;> <b>Tên sách:</b> <?php echo $row['Tensach'] ?></span><br>
<span style=color:red;font-size:18px;>Đơn giá: <?php echo $row['Dongia'] ?> VNĐ</span><br></b>
<span style=color:black><b>Tác giả:</b> <?php echo $row['Tacgia'] ?></span><br>
<span style=color:black><b>Nhà xuất bản:</b> <?php echo $row['Nxb'] ?></span><br>
<span style=color:black><b>Thể loại:</b> <?php echo $row['Matl'] ?></span><br>
<span style=color:black><b>Số lượng còn:</b> <?php echo $row['Soluong']?></span><br><br>
<?php
if(isset($_SESSION['Tk'])){
 ?> 
  <form action="chitiet.php?id=<?php echo $row['Masach']?>" method=post enctype=multipart/form-data>
<span style=font-size:25px><input type=submit name=themvaogio value=' Thêm vào giỏ hàng '/></span>
<?php
}else{
  ?>
  <span style=color:red;font-size:30px;>Vui lòng <a href='login.php'>Đăng nhập</a> để mua hàng.</span>
  <?php
}
?>

<br></div></div>
<br><br></div><br><br><br>
                <span style="color:GhostWhite;font-size:30px"><b>Giới thiệu về sách</b></span>
               <div class=danhmuc style="font-size:16px;margin-bottom:30px;text-align: left;color:white"> <?php echo $row['Mota'];?></div>
				<br><div class="sharethis-inline-share-buttons" style="text-align: right;padding-right:50px"></div>
        <?php
  include_once 'binhluan.php';
?> 
</div>

<?php
            include_once 'footer.php';
            ?>  
</body>
</html>
