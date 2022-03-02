<?php
   session_start();
   session_destroy();
   unset($_SESSION['Tk']);
   header('Location: login.php');
?>   

