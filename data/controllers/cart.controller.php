<?php
require_once("../../init.php");
function addToCart(){
	global $conn;
	session_start();
	@$uid=$_SESSION["uid"];
	@$lid=$_REQUEST["lid"];
	@$count=$_REQUEST["count"];
	if($uid){
		$sql="select * from lg_shoppingcart_item where uid=$uid and lid=$lid";
		$result=mysqli_query($conn,$sql);
		//如果$uid的购物车中有$product_id商品
		if(count(mysqli_fetch_all($result,1)))
			$sql="update lg_shoppingcart_item set count=count+$count where uid=$uid and lid=$lid";
		else//否则
			$sql="insert into lg_shoppingcart_item (uid,lid,count) values ($uid,$lid,$count)";
		mysqli_query($conn,$sql);
	}
}


function updateCart(){
	global $conn;
	@$iid=$_REQUEST["iid"];
	@$count=$_REQUEST["count"];
	if($count==0)
		$sql="delete from lg_shoppingcart_item where iid=$iid";
	else
		$sql="update lg_shoppingcart_item set count=$count where iid=$iid";
	mysqli_query($conn,$sql);
	echo '{"code":1,"msg":"购物车已更新"}';
}
//updateCart();
function getCart(){
	global $conn;
	session_start();
	@$uid=$_SESSION["uid"];
	if($uid){
		$sql="select lid llid,is_checked,iid,count,(select sm from lg_product_pic where lid=llid limit 1) as sm,(SELECT price from lg_product where lid=llid) as price,(SELECT title from lg_product where lid=llid) as title from lg_shoppingcart_item where uid=$uid";
		$result=mysqli_query($conn,$sql);
		echo json_encode(mysqli_fetch_all($result,1));
	}else{
		echo json_encode([]);
	}
}
//getCart();
function clearCart(){
	global $conn;
	session_start();
	@$uid=$_SESSION["uid"];
	if($uid){
		$sql="delete from lg_shoppingcart_item where uid=$uid";
		mysqli_query($conn,$sql);
	}
}
function cartCount(){
	global $conn;
	session_start();
	@$uid=$_SESSION["uid"];
	if($uid){
		$sql="select count(*) as c from lg_shoppingcart_item where uid=$uid";
		$result=mysqli_query($conn,$sql);
		echo json_encode(mysqli_fetch_all($result,1));
	}else{
		echo json_encode([]);
	}
}