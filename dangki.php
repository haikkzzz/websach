<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Trang đăng ký</title>
	 <link rel="shortcut icon" href="img/logo.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
     <link rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
  <body><?php
  include_once 'header.php';
?>  
    <body>
        <form action="dangki.php" method="POST">
        <div class="khung4" style="color:black;padding-top:30px;padding-bottom:30px">
	<div class=bo><h1>Đăng Ký</h1></div>
    <table class=giua>
    <tr class=hienthi>
                    <td>
                        Tên đăng nhập : 
                    </td>
                    <td>
                        <input type="text" name="Tk" size="50" pattern="[a-zA-Z0-9_]{4,15}" title="Nhập tên đăng nhập từ 4-15 ký tự và không dùng ký tự đặc biệt"/>
                    </td>
                </tr>
                <tr class=hienthi>
                    <td>
                        Mật khẩu :
                    </td>
                    <td>
                        <input type="password" name="Mk" size="50" pattern="[a-z0-9]{4,15}" title="Nhập mật khẩu từ 4-15 ký tự và không dùng ký tự đặc biệt"/>
                    </td>
                </tr>
                <tr class=hienthi>
                    <td>
                        Sdt :
                    </td>
                    <td>
                        <input type="text" name="Sdt" size="50" />
                    </td>
                </tr>
                <tr class=hienthi>
                    <td>
                        Địa chỉ :
                    </td>
                    <td>
                        <input type="text" name="Diachi" size="50" />
                    </td>
                </tr>
                <tr class=hienthi>
                    <td>
                        Email :
                    </td>
                    <td>
                        <input type="text" name="Email" size="50" />
                    </td>
                </tr>
                <tr class=hienthi>
                    <td>
                        Họ và tên :
                    </td>
                    <td>
                        <input type="text" name="Hoten" size="50" />
                    </td>
                </tr>
                
                <tr class=tieude>
                <td colspan="2" align="center">
                <input name="dang-ki" type="submit" value="Đăng ký" /></td>
</tr>

            </table><br><p>Bạn đã có tài khoản? <a href="login.php">Đăng Nhập</a>.</p>

            
            
        </form>
        <?php
  require_once("xuly.php");
  if(isset($_POST['dang-ki'])){
    $Tk =$_POST['Tk'];
    $Mk =$_POST['Mk'];
    $Email =$_POST['Email'];
    $Hoten = $_POST['Hoten'];
    $Diachi = $_POST['Diachi'];
    $Sdt = $_POST['Sdt'];
    if($Tk ==""||$Mk==""||$Email==""|| $Hoten ==""|| $Diachi ==""|| $Sdt ==""){
        echo" Hãy nhập đầy đủ ";

    }
    else{
       $sql="select * from nguoidung where Tk='$Tk'";
       $kt=mysqli_query($conn, $sql);
       if(mysqli_num_rows($kt)  > 0){
         echo "<h3 style=color:red>Tài khoản đã tồn tại</h3>";
       }
       else
       {
         $sql = "INSERT INTO nguoidung(
            Tk,
            Mk,
            Email,
            Hoten,
            Diachi,
            Sdt
            
            

         ) VALUES 
         ('$Tk','$Mk','$Email','$Hoten','$Diachi','$Sdt')";
         mysqli_query($conn,$sql);
           
         echo "<h3 style=color:green>Đăng ký thành công</h3>";
    //      echo "
    //      <script language='javascript'>
    //        alert('Thành công');
    //        window.open('login.php','_self', 1);
    //      </script>
    //    ";

       }
      }

       

    

  }


?>
</div>
<?php
  include_once 'footer.php';
?>  
</body></html>