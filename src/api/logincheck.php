<?php
    header("content-type:text/html;charset=utf-8");
    include 'connect.php';

    $name=$_POST['name'];
    $psw=$_POST['psw'];
    // echo $name;
    $sql="SELECT * FROM userregister WHERE username='$name' AND `password`='$psw'";
    $res=$conn->query($sql);
    if($res->num_rows>0){
        echo 'yes';
    }else{
        echo 'no';
    };
    
    //关闭结果集和数据库
    $res->close();
    $conn->close();

?>