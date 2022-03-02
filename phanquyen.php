<?php
include ('xuly.php');
if (isset($_SESSION['Tk']) == false) {
	header('Location:login.php');
}else{
	$tennguoidung= $_SESSION['Tk'];
	$laydulieuuser = "SELECT * FROM nguoidung WHERE Tk = '$tennguoidung'";
      $aa=mysqli_query($conn,$laydulieuuser);
      $xuatra=mysqli_fetch_array($aa);
	  $quyenhan=$xuatra['Quyen'];
	if ($quyenhan !== "1"){
	header('Location:khongduquyen.php');
}
}
?>