<?php

$response['success'] = false;
$response['message'] = 'Required field(s) missing';

if($_SERVER['REQUEST_METHOD']=='GET'){

       $faculty = $_GET['faculty'];
   

$connection = mysqli_connect("localhost","root","","pstu")
or die("Error " . mysqli_error($connection));

$sql = "select * from course_schedule";
$result = mysqli_query($connection, $sql)
or die("Error in Selecting " . mysqli_error($connection));

$num_of_res = mysqli_num_rows($result);
if( $num_of_res > 0) {
    $response['success'] = true;
    $response['message'] = $num_of_res . ' result(s) found';
    
    $course_schedules = array();
    while($row = mysqli_fetch_array($result))
    {
        $course_schedule = array();
        
        $course_schedule['id'] = $row['id'];
        $course_schedule['course_code'] = $row['course_code'];
        $course_schedule['course_title'] = $row['course_title'];
       
        $course_schedule['credit_hour'] = $row['credit_hour'];
       
     
        
        $course_schedule['faculty'] = $row['faculty'];
         $course_schedule['status'] = $row['status'];
       
      
      
        array_push($course_schedules,$course_schedule);
    }
    
    $response['course_schedules'] = $course_schedules;
}  else {
    $response['message'] = 'No data found';
}

mysqli_close($connection);
}

echo json_encode($response);

?>