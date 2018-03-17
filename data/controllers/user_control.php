<?php
require_once("../../init.php");
//注册
function register(){
  global $conn;
  session_start();
  @$phone=$_REQUEST["phone"];
  @$upwd=$_REQUEST["upwd"];
  @$yzm =strtolower($_REQUEST["yzm"]);
  //  $phoneReg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/i;
  //  $pwdReg = /^(\w){6,20}$/i;
  // if(!preg_match($phoneReg,$phone)){
  //   echo '{"code":-2,"msg":"手机号格式不正确"}';
  //   exit;//停止php执行
  // }
  $code=$_SESSION["code"];
  //echo $code;
  if($code!=$yzm){
   echo '{"code":-3,"msg":"验证码不正确"}';
   die();
  }else{
    if($phone&&$upwd){
      //定义SQL语句insert into xz_user...
      $sql="insert into lg_user values(null,'','$upwd','','$phone','','','')";
      //执行SQL语句获得执行结果

      $result = mysqli_query($conn,$sql);
      $row = mysqli_affected_rows($conn);
      if($row>0)
        echo '{"code":1,"msg":"注册成功"}';
      else
        echo '{"code":-1,"msg":"注册失败"}';
    }
  }
 }


//登录时验证查找
function checkName(){
  	global $conn;
  	@$phone=$_REQUEST["phone"];//从request中获得uname
  	if($phone){
  		$sql=//定义SQL语句select * from xz_user...
  			"select * from lg_user where phone='$phone'";
  		$result=mysqli_query($conn,$sql);//执行SQL查询
  		$users=//获得查询结果
  			mysqli_fetch_all($result,1);//MYSQLI_ASSOC
  		if(count($users)!=0)//如果查询结果中有数据
  			return false;//不能使用
  		else//否则
  			return true ;//可以使用
  	}
}
//登录
function login(){
	global $conn;
	  session_start();

	//从request中获得uname和upwd
	@$phone=$_REQUEST["phone"];
	@$upwd=$_REQUEST["upwd"];
	@$yzm =strtolower($_REQUEST["yzm"]);
//  $phoneReg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/i;
//  $pwdReg = /^(\w){6,20}$/i;
// if(!preg_match($phoneReg,$phone)){
//   echo '{"code":-2,"msg":"手机号格式不正确"}';
//   exit;//停止php执行
// }
 $code=$_SESSION["code"];
 //echo $code;
 if($code!=$yzm){
   echo '{"code":-3,"msg":"验证码不正确"}';
 }else{
    if($phone&&$upwd){
      //定义SQL语句: select
      $sql="select * from lg_user where phone='$phone' and binary upwd='$upwd'";
      $result=mysqli_query($conn,$sql);//执行查询
      //获得查询结果
      $user=mysqli_fetch_all($result,1);
      if(count($user)!=0){//如果有结果
        $_SESSION["uid"]=$user[0]["uid"];
         echo '{"code":1,"msg":"登陆成功"}';
      }else//否则
         echo '{"code":-1,"msg":"用户名或密码不正确"}';//登录失败
    }
 }
}
//判断是否登录
 function isLogin(){
 	global $conn;
 	session_start();
 	@$uid=$_SESSION["uid"];
 	if($uid){
 		$sql=
 			"select phone from lg_user where uid=$uid";
 		$result=mysqli_query($conn,$sql);
 		$user=mysqli_fetch_all($result,1);
 		return ["ok"=>1,"uname"=>$user[0]["phone"]];
 	}else
 		return ["ok"=>0];
 }

// 注销
 function logout(){
 session_start();
 $_SESSION["uid"]=null;
 echo '{"msg":"退出成功"}';
 }