<?php
require_once("../../init.php");
//加载楼层商品图
function get_index_products(){
	global $conn;
}



//分页
function getProductsByKw(){
	global $conn;

  @$pno=$_REQUEST["pno"];
  if(!$pno){
   $pno = 1;
  }else{
   $pno = intval($_REQUEST["pno"]);
  }
  //6:如果如果没有指定记录     pageSize=8
  @$pageSize=$_REQUEST["pageSize"];
  if(!$pageSize){
   $pageSize = 8;
  }else{
   $pageSize = intval($_REQUEST["pageSize"]);
  }

  @$low=$_REQUEST["low"];
  if(!$low){$low = 0;}

  @$high=$_REQUEST["high"];
  if(!$high){$high = 2100000000;}

	@$kw=$_REQUEST["kw"];
//	if(!kw){$kw = "";}
  $sql="SELECT count(*) as c from lg_product where";
	$sql.=" price >=$low and price<=$high ";
	if($kw){
		//$kw=mac 256g
		//将$kw按空格切割为数组
		$kws=explode(" ",$kw);//js:split
		//$kws:[mac,256g]
		for($i=0;$i<count($kws);$i++){
			$kws[$i]=" lname like '%".$kws[$i]."%' ";
		}
		$sql.=" and ".implode(" and ",$kws);
		               //js: $kws.join(" and ")
	}
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_assoc($result);
  $recordCount=intval($row['c']);

  $offset=($pno-1)*$pageSize;
  $sql="";
  $sql="select l.lid,l.title,l.lname,l.category,l.price,l.spec,p.lg img,f.fname fn,l.expire from lg_product l,lg_product_pic p,lg_product_family f where l.lid=p.lid and l.fid=f.fid";
  	if($kw){
  		//$kw=mac 256g
  		//将$kw按空格切割为数组
  		$kws = explode(" ",$kw);
  		for($i=0;$i<count($kws);$i++){
  			$kws[$i]=" l.lname like '%".$kws[$i]."%' ";
  		}
  		$sql.=" and ".implode(" and ",$kws);
  		               //js: $kws.join(" and ")
  	}
  $sql.=" and l.price <= $high and l.price >= $low group by l.lid limit $offset,$pageSize";

  $result = mysqli_query($conn,$sql);
  $rows = mysqli_fetch_all($result,1);
  $pageCount=ceil($recordCount/$pageSize);
  $output=[
    "pno"=>$pno,
    "pageSize"=>$pageSize,
    "high"=>$high,
    "low"=>$low,
    "pageCount"=>$pageCount,
    "kw"=>$kw,
    "data"=>$rows
  ];
  echo json_encode($output);
}



//加载商品详情
function getProductById(){
	global $conn;
	@$lid=$_REQUEST["lid"];
	$output=[
		//"product"=>[
			//lid,
			//title,
			//family_id,
			//price,
			//promise,
			//md
		//],
		//"family"=>[{lid, spec},{lid, spec},...],
		//"imgs"=>[sm1,sm2,sm3,...]
	];
    if($lid){
      $sql="select lid llid,fid,title,subtitle,price,promise,(select lg from lg_product_pic where lid=llid limit 1) as lg from lg_product where lid=$lid";
      $result=mysqli_query($conn,$sql);
      $output["product"]=
        mysqli_fetch_all($result,1)[0];
      $fid=$output["product"]["fid"];
      $sql="select lid llid,(select sm from lg_product_pic where lid=llid limit 1) sm from lg_product where fid=$fid";
      $result=mysqli_query($conn,$sql);
      $output["family"]=mysqli_fetch_all($result,1);
      $sql="select sm,lg from lg_product_pic where lid=$lid";
      $result=mysqli_query($conn,$sql);
      $output["imgs"]=mysqli_fetch_all($result,1);
      echo json_encode($output);
    }
}



//请求轮播图片
function getCarousel(){
  global $conn;
  $sql = "SELECT * FROM lg_index_carousel";
	$result=mysqli_query($conn,$sql);
	echo json_encode(mysqli_fetch_all($result,1));
}
//getCarousel();


//搜索助手
function searchHelper(){
	global $conn;
	@$kw=$_REQUEST["term"];//?term=mac 256g
  $sql = "SELECT lid,lname,sold_count from lg_product";
  	if($kw){
  		$kws=explode(" ",$kw);
  		for($i=0;$i<count($kws);$i++){
  			$kws[$i]=" lname like '%".$kws[$i]."%' ";
  		}
  		$sql.=" where ".implode(" and ",$kws);
  	}
  	$sql.=" order by sold_count DESC limit 10";
  	$result=mysqli_query($conn,$sql);
  	echo json_encode(mysqli_fetch_all($result,1));

}

//请求详情页产品广告图
function detailBanner(){
  global $conn;
  $sql = "SELECT * from lg_detail_banner";
  $result = mysqli_query($conn,$sql);
  $rows = mysqli_fetch_all($result,1);
  echo json_encode($rows);
}


/*请求详情页产品细节图*/

function detailPic(){
  global $conn;
  @$lid = $_REQUEST["lid"];
  $sql = "SELECT * from lg_detail_pic where lid = $lid";
  $result = mysqli_query($conn,$sql);
  $rows = mysqli_fetch_all($result,1);
  echo json_encode($rows);
}

?>