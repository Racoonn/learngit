function searchProductByPageNo(pno,low,high){
  if(location.search.split("=")[1]){
    var kw = decodeURIComponent(location.search.split("=")[1]);
    console.log(kw);
  }
  $.ajax({
    type: "get",
    url: "data/routes/products/getProductsByKw.php",
    data: {pno: pno,kw:kw,low:low,high:high},
    success: function (data){
      var rows = data.data;
      var html = "";
      for (var i = 0; i < rows.length; i++) {
        var obj = rows[i];
        if (obj.expire == 0) {
          html += `
          <li class="list">
            <div class="list-box">
              <p class="p-img">
                <a href="product_detail.html?kw=${obj.lid}">
                  <img src="${obj.img}" alt="">
                </a>
              </p>
              <p class="p-name">
                <a href="product_detail.html?kw=${obj.lid}">${obj.title}</a>
              </p>
              <p class="p-price-comment">
                <span class="price">商城价: <strong><em>¥ </em>${obj.price}</strong></span>
              </p>
              <p class="p-tool">
                <a class="p-tool-btn" href="${obj.lid}">加入购物车</a>
                <a class="p-tool-btn" href="${obj.lid}">立即购买</a>
              </p>
            </div>
          </li>
        `;
        }
      }
      $(".productList-list-ul").html(html);
      $("#productNumbershow").html(rows.length);
      
      var pageCount=data.pageCount,pageNo=data.pno;
      html = "";
      html+=`<a class="page-a page_btn_page_pre" id="page_btn_page_pre" href="javascript:;">上一页</a>`;
      for(var i=1;i<=pageCount;i++){
        html+=`<a class="page-a" href="javascript:;">${i}</a>`;
      }
      html+=`<a class="page-a page_btn_page_next" id="page_btn_page_next" href="javascript:;">下一页</a>
        <span class="span-text">
          &nbsp; &nbsp;共
          <em id="sPageCount"> ${pageCount} </em>
          页 &nbsp;到 &nbsp;
          <input name="PageCtrls$txt_pageIndex" id="PageCtrls_txt_pageIndex" style="width:40px;" value="${pageNo}" type="text">&nbsp;页 &nbsp;
        </span>
        <a href="javascript:;" id="btn" class=" page-a">确定</a>
      `;
      
      var $divPages = $("#page");
      $divPages.html(html);
      $divPages.children(":eq("+pageNo+")")
        .addClass("active");
      
      
      checkAStatus($divPages,pageCount,pno);
      
      
      $divPages.off("click").click(e=>{//为divPages绑定单击事件
        e.preventDefault();
        var $tar=$(e.target);
        if($tar.is("a")&&!$tar.is("#btn")){//如果目标元素是a
          //如果a不是divPages的第一个子元素和最后一个子元素
          if(!$tar.is(":first-child,#page_btn_page_next")){
            //如果当前a的class不是current
            if(!$tar.is(".active")){
              //获得当前a的内容-1，保存在pno中
              var pno=$tar.html();
              //调用loadProducts(pno)重新加载第pno页
              /*console.log(1);*/searchProductByPageNo(pno,low,high);
            }
          }else{
            //如果class不以disabled结尾
            if(!$tar.is(".disabled")){
              //在divPages下查找class为current的a
              var $curr=
                $divPages.children(".active");
              //如果class以next开头
              if($tar.is("#page_btn_page_next")){
                //重新加载商品列表传入current的内容作为pno
                
                /*console.log(2);*/ searchProductByPageNo(parseInt($curr.html())+1,low,high);
              }else{
                /*console.log(3);*/ searchProductByPageNo(($curr.html())-1,low,high);
              }
            }
          }
        }
      });
      
      $("#page").on("click","#btn",function(e){
        var pno = parseInt($("#PageCtrls_txt_pageIndex").val());
        console.log(pno);
        if(pno>=1||pno<=pageCount){
          searchProductByPageNo(pno,low,high);
        }
      });
    },
    error: function (){
      alert("网络故障,请检查");
    }
  });

}


function checkAStatus($divPages,pageCount,pno){
  var $prev = $divPages.children().first();
  $next = $("#page_btn_page_next");
  if(pno!=1&&pno!=pageCount){
    $prev.removeClass("disabled");
    $next.removeClass("disabled");
  }else{
    if(pno==1)//如果pageNo==0,就prev禁用
      $prev.addClass("disabled");
    //如果pageNo==pageCount-1,就next禁用
    if(pno==pageCount)
      $next.addClass("disabled");
  }
}




$(()=>{
  searchProductByPageNo();
  
})