<?php
  include_once 'data.php';
  $dt = new database;
?>  
<!DOCTYPE html>
<html>
  <head>
     <meta charset="utf-8"/>
	 <title>Website mua sách LoreBook</title>
	 <link rel="shortcut icon" href="img/logo1.png"/>
	 <link rel="stylesheet" href="css/bootstrap.css"/>
   <link id="theme" rel="stylesheet" href="css/coban2.css"/>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <style type="text/css">
	 
</style>
<script src="ckeditor/ckeditor.js"></script>
	 </head>
  <body>

  
<?php
  include 'header.php';
?>  



  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
	<li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner" style="width:100%;margin-bottom:40px;margin-top:-16px;">
    <div class="carousel-item active">
      <img src="img/slide1.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/slide2.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/slide3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        
      </div>
    </div>
	<div class="carousel-item">
      <img src="img/slide4.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<?php
  include 'new.php';
?>  
<br>

<div class="container">
<div class="cangiua" style="margin-bottom:40px;padding-top:30px;">
<a href="#"><span style="font-size:40px;padding-top:30px;">Nhà xuất bản</span></a></div>
<div class="row" style="margin-bottom:30px;">
<div class="col-3"> <div class="cangiua"><a href="#"><img style="width:200px;height:200px;margin-bottom:15px;" class="rounded" src="hinh/nxb1.jpg"/>
<br><font size="4">NXB Trẻ</font></a></div></div>
<div class="col-3"> <div class="cangiua"><a href="#"><img style="width:200px;height:200px;margin-bottom:15px;" class="rounded" src="hinh/nxb2.jpg"/>
<br><font size="4">NXB Văn Học</font></a></div>
</div>
<div class="col-3"> <div class="cangiua"><a href="#"><img style="width:200px;height:200px;margin-bottom:15px;" class="rounded" src="hinh/nxb3.png"/>
<br><font size="4">NXB Kim Đồng</font></a></div></div>
<div class="col-3"> <div class="cangiua"><a href="#"><img style="width:200px;height:200px;margin-bottom:15px;" class="rounded" src="hinh/nxb4.jpg"/>
<br><font size="4">NXB Lao Động</font></a></div>
</div>
</div>
</div><div class="container">
<div class="cangiua" style="margin-bottom:40px;padding-top:30px;">
<a href="#"><span style="font-size:40px;padding-top:30px;">Tác giả nổi bật</span></a></div>
<div class="row" style="margin-bottom:30px;">
<div class="col-2"> <div class="cangiua"><a href="#"><img style="width:150px;height:150px;margin-bottom:15px;" class="rounded2" src="hinh/coman.jpg"/>
<br><font size="4">Cố Mạn</font></a></div></div>
<div class="col-2"> <div class="cangiua"><a href="#"><img style="width:150px;height:150px;margin-bottom:15px;" class="rounded2" src="hinh/nguyennhatanh.jpg"/>
<br><font size="4">Nguyễn Nhật Ánh</font></a></div>
</div>
<div class="col-2"> <div class="cangiua"><a href="#"><img style="width:150px;height:150px;margin-bottom:15px;" class="rounded2" src="hinh/peter.png"/>
<br><font size="4">Peter H. Reynolds</font></a></div></div>
<div class="col-2"> <div class="cangiua"><a href="#"><img style="width:150px;height:150px;margin-bottom:15px;" class="rounded2" src="hinh/morales.jpg"/>
<br><font size="4">Gil Morales</font></a></div>
</div>
<div class="col-2"> <div class="cangiua"><a href="#"><img style="width:150px;height:150px;margin-bottom:15px;" class="rounded2" src="hinh/tohoai.jpg"/>
<br><font size="4">Tô Hoài</font></a></div>
</div>
<div class="col-2"> <div class="cangiua"><a href="#"><img style="width:150px;height:150px;margin-bottom:15px;" class="rounded2" src="hinh/kimdung.jpg"/>
<br><font size="4">Kim Dung</font></a></div>
</div>
</div>

<?php
  include_once 'footer.php';
?> 
</body></html>