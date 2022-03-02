<hr>
<?php
   $id = $_GET['id'];
   date_default_timezone_set('Asia/Ho_Chi_Minh');
   $time =date("H").":".date("i")."-".date("d")."/".date("m")."/".date("Y");
   if(isset($_SESSION['Tk'])){

      $usercmt =$_SESSION['Tk'];
      $csdl = "SELECT * FROM nguoidung WHERE Tk = '$usercmt' ";
      $csdl2=mysqli_query($conn,$csdl);
      $xuat2=mysqli_fetch_array($csdl2);
      echo " 
      
      <form action=chitiet.php?id=$id method=post enctype=multipart/form-data>
  
  
          
              
              <div class=bo style=padding:20px 20px 20px 20px;> <span style=font-size:30px;color:black><b>Bình luận</b></span><textarea name=cmt id=cmt></textarea>
            
            
             <span style=font-size:25px><input type=submit name=guicmt value=' Gửi '/></span></div>
            
         
</form>
     <br> 
      
      ";
   } else{
      echo"<div class=bo style=margin-bottom:40px;padding:10px 10px 10px 10px><span style=font-size:30px;color:black> Vui lòng đăng nhập để bình luận - <a href='login.php'>Đăng nhập </a></span></div><br>";
   }
?>
<?php
  require_once("xuly.php");

  if(isset($_POST['guicmt'])){
    
    $cmt=$_POST['cmt'];
         $sql = "INSERT INTO binhluan(
            Tk,
            Noidung,
            Masach,
            Timecmt
            
         ) VALUES 
         ('$usercmt','$cmt','$id','$time')";
         $query=mysqli_query($conn,$sql);
         if($query) {
         echo "<div class=menua style='color:green'><h3>Bình luận thành công</h3></div><br>";}}

?><div class=bxh style=padding-bottom:50px;margin:35px 35px 35px 35px>
<div class=rounded style="background-color:white;padding:10px 10px 10px 10px;margin-bottom:10px;margin-top:20px"><span style=font-size:30px;color:black><b>Bình luận gần đây</b></span></div>
<?php
   if(!isset($_GET['page'])){  
   $page = 1;  
   } else {  
   $page = $_GET['page'];  
   }  
   $max_results = 10;  
   $from = (($page * $max_results) - $max_results);  
  $showcmt = "SELECT * FROM binhluan WHERE Masach = '$id' ORDER BY Mabl DESC LIMIT $from, $max_results";
  $ketquashowcmt = mysqli_query($conn, $showcmt);
  
  if (mysqli_num_rows($ketquashowcmt) > 0) {
  while($xuat = mysqli_fetch_assoc($ketquashowcmt)) {
    $nd = $xuat['Tk'];
    $sqlnd = "SELECT * FROM nguoidung WHERE Tk = '$nd' ";
    $rowsnd=mysqli_query($conn,$sqlnd);
    $xuatnd=mysqli_fetch_array($rowsnd);
  
   if (empty($xuatnd['Avt'])){ 
  echo "
  <div class=danhmuc style=word-wrap:break-word;word-break:keep-all;text-align:left;padding-top:20px;padding-left:20px;padding-bottom:2px>
  
  <img src=img/vodanh.png height=60px width=60px class=rounded style=margin-right:20px;margin-bottom:10px>";}else{
echo"
<div class=danhmuc style=word-wrap:break-word;word-break:keep-all;text-align:left;padding-top:20px;padding-left:20px;padding-bottom:2px>

<img src=user/".$xuatnd["Avt"]." height=60px width=60px class=rounded style=margin-right:20px;margin-bottom:10px>"; }
 if ($xuatnd["Quyen"] == "1"){
echo "
<span style=font-size:20px;color:red><b>".$xuat["Tk"]." - Admin</b></span>";}else{
   echo "
   <span style=font-size:20px;color:white><b>".$xuat["Tk"]."</b></span>";}

echo " <br> <span style=font-size:17px;color:white>".$xuat["Noidung"]."</span><p style=font-size:12px;color:white;text-align:right><i>Thời gian: ".$xuat["Timecmt"]."</i></p></div>";
}
} else {
echo "<div class=cangiua style=padding-bottom:20px;padding-top:30px><span style=font-size:30px;color:red>Không có bình luận nào</span></div>";
}
?>

<?php
$tong="select count(*) as total from binhluan where Masach='$id'";
$result = mysqli_query($conn,$tong);
$row = mysqli_fetch_assoc($result);
$total_records = $row['total'];
$total_page = ceil($total_records / $max_results );
if($total_page > 1){
echo"<div class=rounded style=background-color:white;padding:10px 10px 10px 10px>";
			if($page > 1){ 
			$prev = ($page - 1);  
			echo "<a href=\"?id=".$id."&page=$prev\"><button class='trang'> << </button></a>&nbsp;";  
			  }
			for($i = 1; $i <= $total_page; $i++){  
			if(($page) == $i) {  
			echo "$i&nbsp;";  
			} else {  
			echo "<a href=\"?id=".$id."&page=$i\"><button class='so'>$i</button></a>&nbsp;";  
			}  
			}  
  
			if($page < $total_page){  
			$next = ($page + 1);  
			echo "<a href=\"?id=".$id."&page=$next\"><button class='trang'> >> </button></a>";  
			}  
echo "</div>";  	}	
    ?>
    
</div>

<script>
    // Thay thế <textarea id="post_content"> với CKEditor
    CKEDITOR.replace( 'cmt' );// tham số là biến name của textarea
</script>