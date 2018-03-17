$(()=>{
  $.ajax({
    type:"get",
    url:"data/routes/products/detailBanner.php",
    success:function(data){
      var html = "";
      for (var b of data){
        html +=  `
              <a href = "product_detail.html?${b.lid}" target="_blank">
                <img src = "${b.img}" alt = "">
              </a>
              <br>
        `;
      }
      $("[data-banner=banner]").html(html);
    },
    error:function (){
      alert("网络故障,请检查稍后再试");
    }
  });
  
  
// 输入产品ID显示对应产品细节图*/
  if(location.serach!=""){
    $.ajax({
      type:"get",
      url:"data/routes/products/getProductbyId.php",
      data:{lid:location.search.slice(1).split("=")[1]},
      success:function (data){
        var {product:p,family,imgs}=data;
        var div = document.querySelector("#goods-text-box");
        var title = div.querySelector("h1");
        var price = div.querySelector(".product-info-box>p>span");
        title.innerHTML=p.title;
        price.innerHTML="¥"+p.price;
        var spec = div.querySelector(".check-color-box>.check-color-list");
        var html="";
        for(var l of family){
          html+=`
                <li class="${p.llid==l.llid?"active":""}">
                  <a href="product_detail.html?kw=${l.llid}" title="">
                    <img src="${l.sm}" alt="${p.title}">
                  </a>
                </li>
          `
        }
        spec.innerHTML=html;
        
        $.ajax({
          type:"get",
          url:"data/routes/products/detailPic.php",
          data:{lid:location.search.slice(1).split("=")[1]},
          success:function(data){
            var html = "";
            for(var b of data){
              html+= `
               <img src = "${b.img}" alt = "">
              `;
            }
            $("#ProductImage").html(html);
          },
          error:function(){
            alert("网络故障,请检查");
          }
        })
        
        //修改购买数量操作
        document.querySelector(".buy-box>.buy-number-box").onclick=e=>{
          //如果e.target的class是number-reduce或number-add
          e.preventDefault();
          if(e.target.className=="cut-btn"
            ||e.target.className=="add-btn"){
            //获得目标元素旁边的input
            var input=
              e.target.parentNode.children[1];
            //获取input的值转为整数保存到n中
            var n=parseInt(input.value);
            //如果目标元素的class是number-add,就n+1
            if(e.target.className=="add-btn")
              n++;
            else if(n>1) n--;//否则如果n>1，就n-1
            input.value=n;//将n保存回input的值中
          }
        }
        //在div下找class为shops下的class为cart的a绑定单击事件
        
        //  添加购物车
        
        /*放大镜*/
        var mImg = document.querySelector("#mImg");
        mImg.src = p.lg;
        var lgdiv = document.querySelector("#largeDiv");
        lgdiv.style.backgroundImage="url("+imgs[0].lg+")";
        var html="";
        for(var pic of imgs){
          html+=`
					<li class="">
            <img src="${pic.sm}" data-lg="${pic.lg}">
					</li>
				`;
        }
        var icon_list=document.querySelector("#Productsmall");
        icon_list.innerHTML=html;
        var aleftbtn=document.querySelector(".small-img-list>a:nth-child(1)");
        
        var arightbtn=aleftbtn.nextElementSibling;
        if(imgs.length<=5) {
          arightbtn.className = "slider-btn right-btn disabled";
          aleftbtn.className = "slider-btn left-btn disabled";
        }
        var moved=0, LIWIDTH=62;
        arightbtn.onclick=e=>{
          e.preventDefault();
          if(!e.target.className.endsWith("disabled")){
            moved++;
            icon_list.style.left=-moved*LIWIDTH+62+"px";
            //有左移的li，就可以后退
            if(moved>0) aleftbtn.className="slider-btn left-btn";
            //如果已经将右侧多余的li移动完了，就禁止前进
            if(moved==imgs.length-5)
              e.target.className="slider-btn right-btn disabled";
          }
        };
        aleftbtn.onclick=e=>{
          e.preventDefault();
          if(!e.target.className.endsWith("disabled")){
            moved--;
            icon_list.style.left=-moved*LIWIDTH+62+"px";
            //有左移的li，就可以后退
            if(moved<imgs.length-5) aleftbtn.className="slider-btn right-btn";
            //如果已经将右侧多余的li移动完了，就禁止前进
            if(moved==0)
              e.target.className="slider-btn left-btn disabled";
          }
        };
        icon_list.onmouseover=function(e){
          if(e.target.nodeName=="IMG"){
            var sm=e.target.dataset.sm,
              lg=e.target.dataset.lg;
            mImg.src=lg;
            lgdiv.style.backgroundImage=
              "url("+lg+")";
          }
        };
        
        var mask=document.getElementById("jqZoomPup");
        var superMask = document.querySelector("#superMask");
        superMask.onmouseover=function (e) {
          e.preventDefault();
          mask.style.display=lgdiv.style.display="block";
        };
        superMask.onmouseout=function (e) {
          e.preventDefault();
          mask.style.display=lgdiv.style.display="none";
        }
        var MSIZE=160;
        superMask.onmousemove=function(e){
          e.preventDefault();
          var x=e.offsetX,y=e.offsetY;
          var top=y-MSIZE/2,left=x-MSIZE/2;
          if(top<0) top=0;
          else if(top>220) top=218;
          if(left<0) left=0;
          else if(left>220) left=218;
          mask.style.cssText=
            "display:block;top:"+top+"px;left:"+left+"px";
          lgdiv.style.backgroundPosition=
            -800/402*left+"px "+(-800/402*top)+"px"
        };
        
        
        
      },
      error:function (){}
    });
    $(".product-detail-tab-nav").on("click","li>a",function (e){
      $e = $(e.target);
      e.preventDefault();
      $dBox1 = $(".productList-right>.tab-box").first();
      $dBox2 = $(".productList-right>.tab-box").first().next();
      $dBox3 = $(".productList-right>.tab-box").first().next().next();
      $dBox4 = $(".productList-right>.tab-box").first().next().next().next();
      if($e.is(".product-detail-tab-nav>li:nth-child(1) a")){
        $dBox1.removeClass("hide");
        $dBox2.addClass("hide");
        $dBox3.addClass("hide");
        $dBox4.addClass("hide");
      }else{
        if($e.is(".product-detail-tab-nav>li:nth-child(2) a")){
          $dBox1.addClass("hide");
          $dBox2.removeClass("hide");
          $dBox3.addClass("hide");
          $dBox4.addClass("hide");
        }else{
          if($e.is(".product-detail-tab-nav>li:nth-child(3) a")){
            $dBox1.addClass("hide");
            $dBox2.addClass("hide");
            $dBox3.removeClass("hide");
            $dBox4.addClass("hide");
          }else{
            if($e.is(".product-detail-tab-nav>li:nth-child(4) a")){
              $dBox1.addClass("hide");
              $dBox2.addClass("hide");
              $dBox3.addClass("hide");
              $dBox4.removeClass("hide");
            }
          }
        }
      }
    });
  
  }
  document.getElementById("add-cart").onclick=function(e){
    ajax({
      type:"get",
      url:"data/routes/users/isLogin.php"
    }).then(data=>{
      if(data.ok==1) {
        var input = document.getElementById("txtCount");
        var count = parseInt(input.value);
        var lid = location.search.split("=")[1];
        ajax({
          type: "get",
          url: "data/routes/cart/addToCart.php",
          data: "lid=" + lid + "&count=" + count,
          dataType: "text"
        }).then(() => {
          alert("加入购物车成功!");
          input.value = 1;
          location.reload(true);
        })
      }else{
        var url = location.href;
        url=encodeURIComponent(url);
        location="login.html?back="+url;
      }
    })
  }
})