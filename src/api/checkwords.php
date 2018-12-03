<?php
    $page=isset($_GET['page']) ? $_GET['page'] : '1';
    $qty=isset($_GET['qty']) ? $_GET['qty'] : '32';
    include 'connect.php';
    
    $index=($page-1)*$qty;
    $sql="SELECT * FROM content ORDER BY time desc LIMIT $index,$qty";
    // if($rank!="no"){
    //     $sql="SELECT * FROM goodlist ORDER BY price LIMIT $index,$qty";
    // }else{
    //     $sql="SELECT * FROM goodlist LIMIT $index,$qty";
    // }
    $res=$conn->query($sql);
    $data=$res->fetch_all(MYSQLI_ASSOC);//获取内容部分
    
    $sql2='select * from content';
    $res2=$conn->query($sql2);
    $row=$res2->num_rows;
    $goodlist=array(
        'total'=>$row,//总条数
        'datalist'=>$data,//查询到的数据
        'page'=>$page,//第几页
        'qty'=>$qty//每页显示多少条
        // 'url'=>$data['imgurl']
    );

    
    echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);
    
    $res->close();//关掉结果集
    $res2->close();//关掉结果集
    $conn->close();//断开连接
?>