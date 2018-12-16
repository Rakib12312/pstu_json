<?php
 if($_SERVER['REQUEST_METHOD']=='GET'){
      $faculty = sha1($_GET['faculty']);
       $batch = $_GET['batch'];

  
 require_once('db_connect.php');
 
 $sql = "select * from Student where faculty  ='$faculty' and batch='$faculty'";
 
 $check = mysqli_fetch_array(mysqli_query($con,$sql));
 
 if(isset($check)){
 echo "success";
 }else{
 echo "Failed to success";
 }
 
 }else{
 echo "error try again";
 }