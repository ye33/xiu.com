<?php

    include 'connect.php';

    $name=$_POST['name'];
    $psw=$_POST['psw'];

    $sql="INSERT INTO userregister(username,password) VALUES('$name','$psw')";
    $res=$conn->query($sql);
    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }

    $conn->close();

?>