<?php
	include ('xuly.php');
    $select = "select * from sach ";
    $query = mysqli_query($conn,$select);
    $dem = mysqli_num_rows($query);
?>
<div class="cangiua" style="margin-bottom:40px;padding-top:15px">
<a href="moinhat.php"><span style="font-size:40px;">SÁCH MỚI</span></a></div>
<div class="bg" style="padding-top:20px;padding-bottom:20px">
<?php
	
	/*------------Phan trang------------- */
		// Nếu đã có sẵn số thứ tự của trang thì giữ nguyên (ở đây tôi dùng biến $page) 
		// nếu chưa có, đặt mặc định là 1!   

		if(!isset($_GET['page'])){  
		$page = 1;  
		} else {  
		$page = $_GET['page'];  
		}  

		// Chọn số kết quả trả về trong mỗi trang mặc định là 10 
		$max_results = 10;  

		// Tính số thứ tự giá trị trả về của đầu trang hiện tại 
		$from = (($page * $max_results) - $max_results);  

		// Chạy 1 MySQL query để hiện thị kết quả trên trang hiện tại  

		$sql = mysqli_query($conn,"SELECT * FROM sach order by Masach DESC LIMIT $from, $max_results"); 




								
    if($dem > 0)
        while ($bien = mysqli_fetch_array($sql))
        {
 ?>
      
 <div class=khung5><div class="chiacot"><div class=cot1>
    <a href='chitiet.php?id=<?php echo $bien['Masach']?>'>
    <img style="width:130px;height:180px;margin: 5px 5px 5px 5px;" src="anh/<?php echo $bien['Img1']?>" class=rounded></div> <div class=cot2><span style="font-size:25px;color:#663366"><br><b><font color=#008080><?php echo $bien['Tensach']?></font> <br> Giá: <font color=red><?php echo $bien['Dongia']?> VNĐ</font></span></a></b></div>
		</div>
</div>
                              

            <?php 
                }
                
                else echo "<tr><td>Không có nội dung</td></tr>";
                
            ?>
           <div class=cangiua><a href=moinhat.php>Click để xem thêm...</a></div> </div>