<?php

$response['success'] = false;
$response['message'] = 'Required field(s) missing';

if($_SERVER['REQUEST_METHOD']=='GET'){

       $faculty = $_GET['faculty'];
   

$connection = mysqli_connect("localhost","root","","pstu")
or die("Error " . mysqli_error($connection));

$sql = "select * from employer";
$result = mysqli_query($connection, $sql)
or die("Error in Selecting " . mysqli_error($connection));

$num_of_res = mysqli_num_rows($result);
if( $num_of_res > 0) {
    $response['success'] = true;
    $response['message'] = $num_of_res . ' result(s) found';
    
    $employers = array();
    while($row = mysqli_fetch_array($result))
    {
        $employer = array();
        
        $employer['id'] = $row['id'];
        $employer['name'] = $row['name'];
        $employer['designation'] = $row['designation'];
       
        $employer['phone'] = $row['phone'];
       
        
        
         $employer['department'] = $row['department'];
         $employer['phone'] = $row['phone'];
         $employer['address'] = $row['address'];
        
        $employer['faculty'] = $row['faculty'];
       
        $employer['image_url'] = $row['image_url'];
      
        array_push($employers,$employer);
    }
    
    $response['employers'] = $employers;
}  else {
    $response['message'] = 'No data found';
}

mysqli_close($connection);
}

echo json_encode($response);

?>