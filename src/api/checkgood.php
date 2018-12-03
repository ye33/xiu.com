<?php

include 'connect.php';
$id=$_GET['id'];

$sql="SELECT * FROM goodlist WHERE id='$id'";
$res=$conn->query($sql);
$data=$res->fetch_all(MYSQLI_ASSOC);

echo json_encode($data,JSON_UNESCAPED_UNICODE);

$res->close();
$conn->close();
?>