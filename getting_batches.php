<?php
 if($_SERVER['REQUEST_METHOD']=='GET'){

       $faculty = $_GET['faculty'];

  
 require_once('db_connect.php');
 
 $sql = "select * from batches where faculty  ='$faculty' ";
 
 $check = mysqli_fetch_array(mysqli_query($con,$sql));
 
 if(isset($check)){
 echo "success";
 }else{
 echo "Failed";
 }
 
 }else{
 echo "error try again";
 }
 
 
 
 
 
 
 
 
 