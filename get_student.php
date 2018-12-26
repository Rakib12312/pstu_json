<?php

$response['success'] = false;
$response['message'] = 'Required field(s) missing';

if($_SERVER['REQUEST_METHOD']=='GET'){

       $faculty = $_GET['faculty'];
       $batch = $_GET['batch'];


$connection = mysqli_connect("localhost","root","","pstu")
or die("Error " . mysqli_error($connection));

$sql = "select * from student";
$result = mysqli_query($connection, $sql)
or die("Error in Selecting " . mysqli_error($connection));

$num_of_res = mysqli_num_rows($result);
if( $num_of_res > 0) {
    $response['success'] = true;
    $response['message'] = $num_of_res . ' result(s) found';
    
    $students = array();
    while($row = mysqli_fetch_array($result))
    {
        $student = array();
        $student['name'] = $row['name'];
        $student['id'] = $row['id'];
        $student['reg'] = $row['reg'];
        $student['phone'] = $row['phone'];
        $student['linked_in'] = $row['linked_in'];
        $student['blood'] = $row['blood'];
        $student['address'] = $row['address'];
        $student['email'] = $row['email'];
         $student['batch'] = $row['batch'];
        $student['session'] = $row['session'];
        $student['faculty'] = $row['faculty'];
        $student['fb_link'] = $row['fb_link'];
        $student['image_url'] = $row['image_url'];
      
        array_push($students,$student);
    }
    
    $response['students'] = $students;
}  else {
    $response['message'] = 'No data found';
}

mysqli_close($connection);
}

echo json_encode($response);

?>