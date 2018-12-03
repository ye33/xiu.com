<?php
    //查询首页图片，cid为图片类别号
    include 'connect.php';
    $sql1="SELECT * FROM indexgoods WHERE cid=1";
    $res1=$conn->query($sql1);
    // var_dump($res);
    $data1=$res1->fetch_all(MYSQLI_ASSOC);
    // var_dump($data);
    
    $sql2="SELECT * FROM indexgoods WHERE cid=2";
    $res2=$conn->query($sql2);
    // var_dump($res);
    $data2=$res2->fetch_all(MYSQLI_ASSOC);

    $sql3="SELECT * FROM indexgoods WHERE cid=3";
    $res3=$conn->query($sql3);
    // var_dump($res);
    $data3=$res3->fetch_all(MYSQLI_ASSOC);

    $sql4="SELECT * FROM indexgoods WHERE cid=4";
    $res4=$conn->query($sql4);
    // var_dump($res);
    $data4=$res4->fetch_all(MYSQLI_ASSOC);

    $sql5="SELECT * FROM indexgoods WHERE cid=5";
    $res5=$conn->query($sql5);
    // var_dump($res);
    $data5=$res5->fetch_all(MYSQLI_ASSOC);

    $res=array(
        'cid1'=>$data1,
        'cid2'=>$data2,
        'cid3'=>$data3,
        'cid4'=>$data4,
        'cid5'=>$data5
    );

    echo json_encode($res,JSON_UNESCAPED_UNICODE);
    
    //关闭结果集和数据库
    $res1->close();
    $res2->close();
    $res3->close();
    $res4->close();
    $res5->close();
    $conn->close();
?>