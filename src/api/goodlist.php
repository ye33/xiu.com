<?php
    $page=isset($_GET['page']) ? $_GET['page'] : '1';
    $qty=isset($_GET['qty']) ? $_GET['qty'] : '32';
    $rank=isset($_GET['rank']) ? $_GET['rank'] : 'id';
    $rule=isset($_GET['rule']) ? $_GET['rule'] : 'asc';
    $place=isset($_GET['place']) ? $_GET['place'] : 'all';
    include 'connect.php';
    
    $index=($page-1)*$qty;

    if($place=='outside'){
        $sql="SELECT * FROM goodlist WHERE place1='海外' ORDER BY $rank $rule LIMIT $index,$qty";
    }else if($place=='inside'){
        $sql="SELECT * FROM goodlist WHERE place1='国内' ORDER BY $rank $rule LIMIT $index,$qty";
    }else{
        $sql="SELECT * FROM goodlist ORDER BY $rank $rule LIMIT $index,$qty";
    };
    
    $res=$conn->query($sql);
    $data=$res->fetch_all(MYSQLI_ASSOC);//获取内容部分
    
    $sql2='select * from goodlist';
    $res2=$conn->query($sql2);
    $row=$res2->num_rows;

    $sql3="select * from goodlist WHERE place1='国内'";
    $res3=$conn->query($sql3);
    $row3=$res3->num_rows;

    $sql4="select * from goodlist WHERE place1='海外'";
    $res4=$conn->query($sql4);
    $row4=$res4->num_rows;

    $goodlist=array(
        'total'=>$row,
        'total2'=>$row3,
        'total3'=>$row4,
        'datalist'=>$data,
        'page'=>$page,
        'qty'=>$qty
    );

    
    echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);
    
    $res->close();//关掉结果集
    $res2->close();//关掉结果集
    $res3->close();
    $res4->close();
    $conn->close();//断开连接
?>