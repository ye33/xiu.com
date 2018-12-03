<?php
    //删除商品
    include 'connect.php';
    $id = isset($_GET['id']) ? $_GET['id'] : '';
    // echo $id;
    
    //写删除语句
    $sql = "DELETE FROM cart where id='$id'";
    $res=$conn->query($sql);
    
    if($res){
        echo 0;
    }else{
        echo 1;
    }

    $conn->close();
?>