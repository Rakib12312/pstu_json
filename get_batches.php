<?php

$response['success'] = false;
$response['message'] = 'Required field(s) missing';

if($_SERVER['REQUEST_METHOD']=='GET'){

       $faculty = $_GET['faculty'];
   

$connection = mysqli_connect("localhost","root","","pstu")
or die("Error " . mysqli_error($connection));

$sql = "select * from batches";
$result = mysqli_query($connection, $sql)
or die("Error in Selecting " . mysqli_error($connection));

$num_of_res = mysqli_num_rows($result);
if( $num_of_res > 0) {
    $response['success'] = true;
    $response['message'] = $num_of_res . ' result(s) found';
    
    $batches = array();
    while($row = mysqli_fetch_array($result))
    {
        $batche = array();
        
        $batche['id'] = $row['id'];
        $batche['name'] = $row['name'];
        $batche['title'] = $row['title'];
       
        $batche['session'] = $row['session'];
       
     
        
        $course_schedule['faculty'] = $row['faculty'];
         $course_schedule['total_student'] = $row['total_student'];
       
      
      
        array_push($batches,$batche);
    }
    
    $response['batches'] = $batches;
}  else {
    $response['message'] = 'No data found';
}

mysqli_close($connection);
}

echo json_encode($response);

?>