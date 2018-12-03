<?php
    header("content-type:text/html;charset=utf-8");
    include 'connect.php';

    $sql="SELECT * FROM cart ORDER BY time ";
    $res=$conn->query($sql);
    if($res->num_rows>0){
	    $data=$res->fetch_all(MYSQLI_ASSOC);
	    $total=array();
	    $num=0;
	    $sum=0;
//	    var_dump($data);

		for ($i = 0; $i < count($data); $i++) {
		    $num=$data[$i]['number']*1+$num;
		    $sum = $data[$i]['number']*$data[$i]['original']*1+$sum;
		};
		
		
		$arr=array(
			'number'=>$num,
	         'sum'=>$sum,
	         'list'=>$data
		);
		
	    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    }else{
        echo 1;
    }
    
    //关闭结果集和数据库
    $res->close();
    $conn->close();
?>