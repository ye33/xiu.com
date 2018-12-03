<?php
    header("content-type:text/html;charset=utf-8");
    include 'connect.php';

    $sql="SELECT * FROM cart ORDER BY time DESC";
    $res=$conn->query($sql);
    if($res->num_rows>0){
       	$data=$res->fetch_all(MYSQLI_ASSOC);
       	
       	echo json_encode($data,JSON_UNESCAPED_UNICODE);
    }else{
        echo 1;
    }
    
    //关闭结果集和数据库
    $res->close();
    $conn->close();
?>