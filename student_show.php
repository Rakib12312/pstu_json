
<?php

$connection = mysqli_connect("localhost","root","","pstu")
or die("Error " . mysqli_error($connection));

$sql = "select * from Student";
$result = mysqli_query($connection, $sql)
or die("Error in Selecting " . mysqli_error($connection));

while($row = mysqli_fetch_assoc($result))
{
    $emparray[] = $row;
}

echo json_encode($emparray);

mysqli_close($connection);

?>