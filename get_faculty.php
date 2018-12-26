
<?php

$response = array();
$response['success'] = false;
$response['message'] = 'No data found';

$connection = mysqli_connect("localhost","root","","pstu")
or die("Error " . mysqli_error($connection));

$sql = "select * from faculty";
$result = mysqli_query($connection, $sql)
or die("Error in Selecting " . mysqli_error($connection));

$num_of_res = mysqli_num_rows($result);
if( $num_of_res > 0) {
    $response['success'] = true;
    $response['message'] = $num_of_res . ' result(s) found';
    
    $faculties = array();
    while($row = mysqli_fetch_array($result))
    {
        $faculty = array();
        $faculty['id'] = $row['id'];
        $faculty['short_title'] = $row['short_title'];
        $faculty['title'] = $row['title'];
        $faculty['avatar_url'] = $row['avatar_url'];
      
        array_push($faculties, $faculty);
    }
    
    $response['faculties'] = $faculties;
}

mysqli_close($connection);

echo json_encode($response);

?>