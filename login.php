<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Trang đăng nhập</title>
	 <link rel="shortcut icon" href="img/logo.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
	 <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
	 </head>
  <body><?php
  include_once 'header.php';
?>  
<html>
<head>
	<title>Trang đăng nhập</title>
	<meta charset="utf-8">
</head>
<body>
<?php
	require_once("xuly.php");
	if (isset($_POST["btn_submit"])) {
		$Tk = $_POST["Tk"];
		$Mk = $_POST["Mk"];
		$Tk = strip_tags($Tk);
		$Tk = addslashes($Tk);
		$Mk = strip_tags($Mk);
		$Mk = addslashes($Mk);
		if ($Tk == "" || $Mk =="") {
			echo "Tk hoặc Mk bạn không được để trống!";
		}else{
			$sql = "select * from nguoidung where Tk = '$Tk' and Mk = '$Mk' ";
			$query = mysqli_query($conn,$sql);
			$num_rows = mysqli_num_rows($query);
			if ($num_rows==0) {
				echo "tên đăng nhập hoặc mật khẩu không đúng !";
			}else{
				$_SESSION['Tk'] = $Tk;
                header('Location: index.php');
			}
		}
	}
?>
	<form method=POST action=login.php>
	<fieldset> <div class=khung4 style=color:black;padding-top:30px;padding-bottom:30px>
	<div class=bo><h1>Đăng nhập</h1></div>
	    	<table class=giua>
			
	    		<tr class=hienthi>
	    			<td>Tài khoản</td>
	    			<td><input type=text name=Tk size=30></td>
	    		</tr>
	    		<tr class=hienthi>
	    			<td>Mật khẩu</td>
	    			<td><input type=password name=Mk size=30></td>
	    		</tr>
	    		<tr class=tieude>
	    			<td colspan=2 align=center> <input name=btn_submit type=submit value=Đăng nhập></td>
	    		</tr>
			</table><br>
			<p>Bạn chưa có tài khoản? <a href=dangki.php>Đăng ký</a>.</p></div>
  </fieldset>
  </form>
</body>
</html>
<?php
  include 'footer.php';
?> 
</body></html>