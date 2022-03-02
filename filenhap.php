<div class="bxh">
<div class="cangiua" style="margin-bottom:40px;padding-top:30px;">
<a href="#"><span style="font-size:40px;color:white;padding-top:30px;">Thể loại</span></a></div>
<div class="tab">
  <button class="tablinks" onclick="bxh(event, 'Tuan')" id="defaultOpen"><b>Sách Thiếu nhi</b></button>
  <button class="tablinks" onclick="bxh(event, 'Thang')"><b>Kiến thức đời sống</b></button>
  <button class="tablinks" onclick="bxh(event, 'Nam')"><b>Tiểu thuyết nước ngoài</b></button>
</div>
 
<div id="Tuan" class="tabcontent">
<?php

		$max_result = 5;  
		$sql1 = mysqli_query($conn,"SELECT * FROM sach Where Matl LIKE 'nhi' order by Masach DESC LIMIT $max_result"); 
    while ($hien = mysqli_fetch_array($sql1))
        {
          ?>
  <div class="danhmuc">
  <a href="#"><img style="width:100px;height:150px;margin-right:30px;" src="hinh/<?php echo $hien['Img1']?>"/>
  <span style="font-size:30px;color:white;">★ </span> <span style="font-size:25px;color:white;"><?php echo $hien['Tensach']?></span> - <span style="font-size:15px;color:grey;"><?php echo $hien['Tacgia']?></span></a>
  </div>
  <?php
        }
  ?>

</div>
 
<div id="Thang" class="tabcontent">
<?php

		$sql2 = mysqli_query($conn,"SELECT * FROM sach Where Matl LIKE 'song' order by Masach DESC LIMIT $max_result"); 
    while ($hien2 = mysqli_fetch_array($sql2))
        {
          ?>
  <div class="danhmuc">
  <a href="#"><img style="width:100px;height:150px;margin-right:30px;" src="hinh/<?php echo $hien2['Img1']?>"/>
  <span style="font-size:30px;color:white;">★ </span> <span style="font-size:25px;color:white;"><?php echo $hien2['Tensach']?></span> - <span style="font-size:15px;color:grey;"><?php echo $hien2['Tacgia']?></span></a>
  </div>
  <?php
        }
  ?>

</div>
 
<div id="Nam" class="tabcontent">
<?php

		$sql3 = mysqli_query($conn,"SELECT * FROM sach Where Matl LIKE 'thuyet' order by Masach DESC LIMIT $max_result"); 
    while ($hien3 = mysqli_fetch_array($sql3))
        {
          ?>
  <div class="danhmuc">
  <a href="#"><img style="width:100px;height:150px;margin-right:30px;" src="hinh/<?php echo $hien3['Img1']?>"/><?php echo $hien3['Img1']?>
  <span style="font-size:30px;color:white;">★ </span> <span style="font-size:25px;color:white;"><?php echo $hien3['Tensach']?></span> - <span style="font-size:15px;color:grey;"><?php echo $hien3['Tacgia']?></span></a>
  </div>
  <?php
        }
  ?>

</div>
 </div>
<script>
function bxh(evt, ten) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(ten).style.display = "block";
    evt.currentTarget.className += " active";
}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
</div>
</div>