$(()=>{
  //查找id为txtName的文本框
  var txtphone=document.getElementById("txtCellPhobe");
  var txtpwd=document.getElementById("pwd");
  var pwd = document.getElementById("pwd").value.trim();
  var testpwd=document.getElementById("password");
  var tepwd = document.getElementById("password").value.trim();
  var phoneReg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/i;
  var pwdReg = /^(\w){6,20}$/i;
  //为txtName添加失去焦点事件
  txtphone.onblur=e=>{
    if(e.target.value.trim()!="")
      if(phoneReg.test(e.target.value.trim()))
        checkName(e.target);//当前触发事件的文本框
    else{
        document.getElementById("phone").innerHTML = "手机号格式错误!";
        document.getElementById("phone").style.display = "block";
      }
  }
  txtpwd.onblur=e=>{
    if(e.target.value.trim()!="") {
      if (pwdReg.test(e.target.value.trim())) {
        document.getElementById("upw").innerHTML = "密码可用!";
        document.getElementById("upw").style.display = "block";
      } else {
        document.getElementById("upw").innerHTML = "密码格式错误!只能输入6-20个字母、数字、下划线";
        document.getElementById("upw").style.display = "block";
      }
    }else {
      document.getElementById("upw").style.display = "none";
    }
  }
  testpwd.onblur=e=> {
    document.getElementById("pw-ag").style.display = "none";
    if ((e.target).value.trim()!="") {
      if (tepwd === pwd) {
        document.getElementById("pw-ag").innerHTML = "密码通过!";
        document.getElementById("pw-ag").style.display = "block";
      } else {
        document.getElementById("pw-ag").innerHTML = "密码不一致!";
        document.getElementById("pw-ag").style.display = "block";
      }
    }
  }
  testpwd.onblur=e=> {
    document.getElementById("pw-ag").style.display = "none";
    if ((e.target).value.trim()!="") {
      if (tepwd === pwd) {
        document.getElementById("pw-ag").innerHTML = "密码通过!";
        document.getElementById("pw-ag").style.display = "block";
      } else {
        document.getElementById("pw-ag").innerHTML = "密码不一致!";
        document.getElementById("pw-ag").style.display = "block";
      }
    }
  }
  
  $("#imgcode").click(function(){
    this.src = "data/01_code.php";
  });
  function checkName(txt){
    return new Promise(callback=>{
      ajax({
        type:"post",
        url:"data/routes/users/checkName.php",
        data:"phone="+txt.value.trim(),
        dataType:"text"
      }).then(text=>{
        if(text=="false") {
          document.getElementById("phone").innerHTML = "手机号已存在!";
          document.getElementById("phone").style.display = "block";
        }else
        document.getElementById("phone").innerHTML = "手机号可用!";
        document.getElementById("phone").style.display = "block";
      })
    })
  }
  //查找id为btnReg的按钮,绑定单击事件
  var txtyzm=document.getElementById("txt-yzm");
  document.getElementById("btnReg").onclick=()=> {
      ajax({
        type: "post",
        url: "data/routes/users/register.php",
        data: "phone=" + txtphone.value.trim() + "&upwd=" + txtpwd.value.trim()+"&yzm=" + txtyzm.value.trim(),
        dataType: "json"
      }).then((data) => {
        //注册成功，跳转回首页
        console.log(data);
        console.log(data.code);
        if(data.code>0){
          alert(data.msg);
          location = "login.html";
        }else{
          document.getElementById("yzm").style.display="block";
          document.getElementById("yzm").innerHTML = "验证码错误!";
        }
      })
    };
})

