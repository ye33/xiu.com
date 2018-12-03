<?php
    //查询订单表
    include 'connect.php';
    $id=isset($_GET['id']) ? $_GET['id'] : '1';
    $number=isset($_GET['number']) ? $_GET['number'] : '2';
    $color=isset($_GET['color']) ? $_GET['color'] : '3';
    $size=isset($_GET['size']) ? $_GET['size'] : '4';
    $name=isset($_GET['name']) ? $_GET['name'] : '5';
    $brand=isset($_GET['brand']) ? $_GET['brand'] : '6';
    $price=isset($_GET['price']) ? $_GET['price'] : '7';
    $original=isset($_GET['original']) ? $_GET['original'] : '8';
    $imgurl=isset($_GET['imgurl']) ? $_GET['imgurl'] : '9';
    
    $sql="SELECT * FROM cart WHERE id='$id'";
    $res=$conn->query($sql);
    if($res->num_rows>0){
    	$data=$res->fetch_all(MYSQLI_ASSOC);
    	$arr=json_encode($data,JSON_UNESCAPED_UNICODE);
    	$num=$data[0]['number'];
    	$goodnum=$num+$number;
//  	echo $goodnum;
    	$sql1 = "UPDATE cart SET number=$goodnum WHERE id=$id";
	    $res1=$conn->query($sql1);
	
	    if($res1){
	        echo 'yes';
	    }else{
	        echo 'no';
	    }

    }else{
    	$sql1="INSERT INTO cart(id,number,color,size,name,brand,price,original,imgurl) VALUES('$id','$number','$color','$size','$name','$brand','$price','$original','$imgurl')";
    	$res1=$conn->query($sql1);
	    if($res1){
	        echo 'yes';
	    }else{
	        echo 'no';
	    }
    }
    
//  $data=$res->fetch_all(MYSQLI_ASSOC);
//  // var_dump($data);
//  echo json_encode($data,JSON_UNESCAPED_UNICODE);
    $res->close();
//  $res1->close();
    $conn->close();
?>