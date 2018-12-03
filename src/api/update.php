<?php
    //更新商品数量
    include 'connect.php';
    $id = isset($_GET['id']) ? $_GET['id'] : 0;
    $number = isset($_GET['number']) ? $_GET['number'] : 1;
    // echo $number;
    
    $sql = "UPDATE cart SET number=$number WHERE id=$id";
    $res=$conn->query($sql);

    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }
    
    $conn->close();
?>