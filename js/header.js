$(()=>{
  function loadStatus(){
    //判断登录:
    var $welcomeList=$("#welcomeList");
    var $logout = $("#logout");
    $.get("data/routes/users/isLogin.php")
      .then(data=>{//data:{ok:1,uname:xxx}
        if(data.ok>0){
          $logout.show();
          $("#welcomeList").html("您好"+data.uname);
        }else{
          var html=`<a id="loginList" href="login.html">请登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a id="register" href="register.html">注册</a>`;
          $("#welcomeList").html(html);
          $logout.hide();
        }
      });
  }
  
  $("#header").load("header.html",()=>{
    if(location.search)
      $("#txtKeyName").val(decodeURI(location.search.split("=")[1]));
    $("#btnSearch").click(()=>{
      //获得id为txtSearch的内容,去掉开头和结尾的空格保存在变量kw中
      var kw=$("#txtKeyName").val().trim();
      if(kw!=="")//如果kw不为""
      //用location跳转到products.html?kw=kw
        location="product_list.html?kw="+kw;
    });
    loadStatus();
    //注销:
    $("#logout").click((e)=>{
      e.preventDefault();
      $.get("data/routes/users/logout.php")
        .then(()=>location="index.html")
      // $.ajax({
      //   type:"GET",
      //   url:"data/routes/users/logout.php",
      //   success:function(data){
      //     console.log(data)
      //   }
      // })
      
    });
  
    /*搜索帮助*/
    var $txtSearch = $("#txtKeyName"),
      $shelper=$("#shelper");
    $txtSearch.keyup(e=>{
      e.preventDefault();
      if(e.keyCode!=13){
        if(e.keyCode==40){
          if(!$shelper.is(":has(.focus)")){
            $shelper.children().first().addClass("focus");
          }else{
            if($shelper.children().last().is(".focus")){
              $shelper.children(".focus").removeClass(".focus");
              $shelper.children().addClass(".focus");
            }else{
              $shelper.children(".focus").removeClass("focus").next().addClass("focus");
            }
          }
          $txtSearch.val($shelper.children(".focus").attr("title"));
        }else if(e.keyCode==38){
          if(!$shelper.is(":has(.focus)")){
            $shelper.children()
              .last().addClass("focus");
          }else{
            if($shelper.children().first()
                .is(".focus")){
              $shelper.children(".focus")
                .removeClass("focus");
              $shelper.children()
                .last().addClass("focus");
            }else{
              $shelper.children(".focus")
                .removeClass("focus")
                .prev().addClass("focus");
            }
          }
          $txtSearch.val(
            $shelper.children(".focus")
              .attr("title")
          );
        }else{
          var $e = $(e.target);
          $.get(
            "data/routes/products/searchHelper.php",
            "term="+$e.val()
          ).then(data=>{
            var html="";
            for(var p of data){
              html+=`<li title="${p.lname}">
								<div class="search-item" title="${p.lname}" data-url="product_details?lid=${p.lid}">${p.lname}</div>
							</li>`
            }
            $shelper.html(html).show();
          });
        }
      }else{
        $("#btnSearch").click();
      }
    }).blur(()=>$shelper.hide());
  
    $.ajax({
      type:"get",
      url:"data/routes/users/isLogin.php",
      success:function (data){
        if(data.ok==1) {
          console.log(data.ok);
          $.ajax({
            type: "get",
            url: "data/routes/cart/cartCount.php",
          }).then((data) => {
            var obj=data[0];
            console.log(obj);
            $("#TXTTopNumber").html(obj.c);
          })
        }
      },
      error:function(){alert("网络故障请检查");
      }
  });

})
})