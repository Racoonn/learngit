$(()=>{
  var $txtphone = $("#inPhone");
  var $txtPwd = $("#inPwd");
  var $text = $("#input-yzm");
  var phoneReg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/i;
  var pwdReg = /^(\w){6,20}$/i;
  $txtphone.blur(e=>{
    if(e.target.value.trim()!="")
      if(phoneReg.test(e.target.value.trim())) {
        document.getElementById("err").innerHTML = "";
        document.getElementById("info").style.display = "none";
      }else{
        document.getElementById("err").innerHTML = "手机号格式错误!";
        document.getElementById("info").style.display = "block";
      }
  });
  $txtPwd.blur(e=>{
    if(e.target.value.trim()!="")
      if(pwdReg.test(e.target.value.trim())) {
        document.getElementById("err").innerHTML = "";
        document.getElementById("info").style.display = "none";
      }else{
        document.getElementById("err").innerHTML = "密码格式错误!";
        document.getElementById("info").style.display = "block";
      }
  });

  $("#imgcode").click(function(){
    this.src = "data/01_code.php";
  });
      // if((e.target.value.trim()===code) {
      //   document.getElementById("err").innerHTML = "";
      //   document.getElementById("info").style.display = "none";
      // }else{
      //   document.getElementById("err").innerHTML = "密码格式错误!";
      //   document.getElementById("info").style.display = "block";
  
  
      document.getElementById("btnLogin").onclick = () => {
        if(phoneReg.test($txtphone.val()) && pwdReg.test($txtPwd.val())){
          $.post(
            "data/routes/users/login.php",
            "phone=" + $txtphone.val() + "&upwd=" + $txtPwd.val()+"&yzm="+$text.val()
          ).then(text => {
            console.log(text);
            if (text.code>0) {
              //如果有search
              if (location.search) {
                location = decodeURIComponent(location.search.slice(6));
              }else{
               location = "index.html";
              }
            } else {
              console.log(text.msg);
              $(".login-error-info #err").html(text.msg);
              $(".login-error-info").show();
            }
          }
        )
        }
      }
})