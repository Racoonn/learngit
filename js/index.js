// 轮播
$(()=>{
  var $ulImgs=$("#banner>.banner-img"),
    $ulInds=$("#IndexFlash>.sc_index"),
    LIWIDTH=771,INTERVAL=500,WAIT=3000,
    moved=0,timer=null,canMove=true;
  $.get("data/routes/products/getCarousel.php")
    .then(data=>{
      var html = "";
      for(var c of data){
        html +=`
					<li>
						<a href="${c.href}" title="${c.title}" target="_blank">
							<img src="${c.img}">
						</a>
					</li>
        `;
      }
      html+=`
        <li>
          <a href="${data[0].href}" title="${data[0].title}">
            <img src="${data[0].img}">
          </a>
        </li> `;
      $ulImgs.html(html).css("width",(data.length+1)*LIWIDTH);
      var htmll = "";
      for (var i=0;i<data.length;i++){
        htmll += `<li class="" data-index="${i+1}">${i+1}</li>`;
      }
      $ulInds.html(htmll).children().first().addClass("hover");
      
      function autoMove(){
        if(canMove){
          if(moved==data.length){
            moved=0;
            $ulImgs.css("left",0);
          }
          timer=setTimeout(()=>{
            move(1,autoMove);
          },WAIT);
        }
      }
      autoMove();
      $("#banner").hover(
        ()=>{//关闭轮播的开关变量
          canMove=false;
          clearTimeout(timer);//停止等待
          timer=null;
        },
        ()=>{//打开轮播开关，启动自动轮播
          canMove=true;
          autoMove();
        }
      );
      
      $ulInds.on("click","li",e=>{
        e.preventDefault();
        moved=$(e.target).index();
        $ulImgs.stop(true).animate({
          left:-LIWIDTH*moved
        },INTERVAL);
        $ulInds.children(":eq("+moved+")")
          .addClass("hover")
          .siblings().removeClass("hover");
      });
      function move(dir,callback){
        moved+=dir;//按照方向增减moved
        //如果moved没有到头
        if(moved<data.length){
          //让ulInds中moved位置的li设置hover
          $ulInds.children(":eq("+moved+")")
            .addClass("hover")
            .siblings().removeClass("hover");
        }else{//否则，如果到头了
          //让ulInds中第一个li设置为hover
          $ulInds.children(":eq(0)")
            .addClass("hover")
            .siblings().removeClass("hover");
        }
        //先清除ulImgs上动画，让ulImgs移动到新的left位置
        $ulImgs.stop(true).animate({
          //新的left位置永远等于-LIWIDTH*moved
          left:-LIWIDTH*moved
        },INTERVAL,callback);
      }
    })
})