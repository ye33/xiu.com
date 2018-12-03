<?php
    header("content-type:text/html;charset=utf-8");
    include 'connect.php';

    $name=$_GET['username'];
    // echo $name;
    $sql="SELECT * FROM userregister WHERE username='$name'";
    $res=$conn->query($sql);
    if($res->num_rows>0){
        echo 0;
    }else{
        echo 1;
    }
    
    //关闭结果集和数据库
    $res->close();
    $conn->close();
?>