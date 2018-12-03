<?php

    include 'connect.php';

    $name=$_GET['name'];
    $size=$_GET['size'];
    $content=$_GET['content'];

    $sql="INSERT INTO content(name,size,content) VALUES('$name','$size','$content')";
    $res=$conn->query($sql);
    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }

    $conn->close();

?>