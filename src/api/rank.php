
<?php
   
    $page=isset($_GET['page']) ? $_GET['page'] : '1';
    $qty=isset($_GET['qty']) ? $_GET['qty'] : '32';
    $rank=isset($_GET['rank']) ? $_GET['rank'] : 'no';
    include 'connect.php';
    
    $index=($page-1)*$qty;

    // $index1=($page-1)*$qty+1;
    // $index2=$index1+$qty-1;

    if($rank=='up'){
        $sql="SELECT * FROM goodlist ORDER BY price LIMIT $index,$qty";
        // $sql="SELECT * FROM goodlist WHERE id BETWEEN $index1 AND $index2 ORDER BY price";
    }else{
        $sql="SELECT * FROM goodlist LIMIT $index,$qty";
    };
    // if($rank=='PriDown'){
    //     // $sql="SELECT * FROM goodlist ORDER BY price DESC LIMIT $index,$qty";
    //     $sql="SELECT * FROM goodlist WHERE id BETWEEN $index1 AND $index2 ORDER BY price DESC";
    // };
    // if($rank=='PeoUp'){
    //     // $sql="SELECT * FROM goodlist ORDER BY Popularity LIMIT $index,$qty";
    //     $sql="SELECT * FROM goodlist WHERE id BETWEEN $index1 AND $index2 ORDER BY Popularity";
    // };
    // if($rank=='PeoDown'){
    //     // $sql="SELECT * FROM goodlist ORDER BY Popularity DESC LIMIT $index,$qty";
    //     $sql="SELECT * FROM goodlist WHERE id BETWEEN $index1 AND $index2 ORDER BY Popularity DESC";
    // };
        
    $res=$conn->query($sql);
    $data=$res->fetch_all(MYSQLI_ASSOC);
    $sql2='select * from goodlist';
    
    //执行语句
    $res2=$conn->query($sql2);
    $row=$res2->num_rows;
    
    $goodlist=array(
        'total'=>$row,
        'datalist'=>$data,
        'page'=>$page,
        'qty'=>$qty
    );
    
    echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);
    
    $res->close();//关掉结果集
    $res2->close();//关掉结果集
    $conn->close();//断开连接
 
?>